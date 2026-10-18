package com.openadapt;

import android.app.Activity;
import android.content.*;
import android.content.pm.*;
import android.net.Uri;
import android.os.*;
import android.provider.Settings;
import org.json.*;
import java.io.*;
import java.net.*;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.*;

/** Public GitHub releases only. APK replacement preserves the existing app data. */
final class AppUpdater {
    interface Listener { void changed(String status,Offer offer,boolean ready,boolean busy); }
    static final class Offer {
        final String version,tag,url,sha;final long code,size;
        Offer(String v,String t,String u,String hash,long c,long bytes) { version=v;tag=t;url=u;sha=hash;code=c;size=bytes; }
    }
    final Context context;
    final Handler main=new Handler(Looper.getMainLooper());
    final ExecutorService worker=Executors.newSingleThreadExecutor();
    final Listener listener;
    volatile boolean closed,busy;
    Offer offer;boolean ready;
    AppUpdater(Context app,Listener callback) { context=app.getApplicationContext();listener=callback; }
    void publish(String status,Offer value,boolean isReady,boolean isBusy) {
        main.post(()->{if(!closed){offer=value;ready=isReady;busy=isBusy;listener.changed(status,value,isReady,isBusy);}});
    }
    boolean automatic() { return context.getSharedPreferences("openadapt_updates",0).getBoolean("automatic",true); }
    void automatic(boolean enabled) { context.getSharedPreferences("openadapt_updates",0).edit().putBoolean("automatic",enabled).apply(); }
    void checkAutomatically() {
        long last=context.getSharedPreferences("openadapt_updates",0).getLong("last_check",0),now=System.currentTimeMillis();
        if(automatic()&&(last==0||now<last||now-last>=6*60*60*1000L))check();
    }
    long installedCode() throws Exception { return context.getPackageManager().getPackageInfo(context.getPackageName(),0).versionCode; }
    void check() {
        if(busy||closed)return;busy=true;publish("Buscando versiones en GitHub…",null,false,true);
        worker.execute(()->{
            try {
                JSONArray releases=new JSONArray(new String(bytes("https://api.github.com/repos/"+UpdatePolicy.REPOSITORY+"/releases?per_page=30",512*1024),"UTF-8"));
                JSONObject best=null,apk=null,manifest=null;String tag=null;
                for(int i=0;i<releases.length();i++) {
                    JSONObject release=releases.getJSONObject(i);String candidate=release.optString("tag_name");
                    if(release.optBoolean("draft")||!UpdatePolicy.VERSION.matcher(candidate).matches()||UpdatePolicy.compare(candidate,BuildInfo.VERSION)<=0)continue;
                    if(tag!=null&&UpdatePolicy.compare(candidate,tag)<=0)continue;
                    JSONObject a=null,m=null;JSONArray assets=release.optJSONArray("assets");if(assets==null)continue;
                    for(int j=0;j<assets.length();j++) {
                        JSONObject asset=assets.getJSONObject(j);if(!"uploaded".equals(asset.optString("state")))continue;
                        if(UpdatePolicy.APK.equals(asset.optString("name")))a=asset;
                        if(UpdatePolicy.MANIFEST.equals(asset.optString("name")))m=asset;
                    }
                    if(a!=null&&m!=null){best=release;apk=a;manifest=m;tag=candidate;}
                }
                context.getSharedPreferences("openadapt_updates",0).edit().putLong("last_check",System.currentTimeMillis()).apply();
                if(best==null){publish("Tienes la versión más reciente publicada para este canal.",null,false,false);return;}
                String metadataUrl=manifest.getString("browser_download_url"),apkUrl=apk.getString("browser_download_url");
                if(!UpdatePolicy.asset(metadataUrl,tag,UpdatePolicy.MANIFEST)||!UpdatePolicy.asset(apkUrl,tag,UpdatePolicy.APK))throw new IOException("Origen de actualización no permitido");
                JSONObject data=new JSONObject(new String(bytes(metadataUrl,64*1024),"UTF-8"));
                if(data.getInt("schema")!=1||!UpdatePolicy.APK.equals(data.getString("apk")))throw new IOException("Formato de actualización no compatible");
                String version=data.getString("version"),sha=data.getString("sha256");long code=data.getLong("versionCode"),size=data.getLong("size");
                UpdatePolicy.candidate(tag,version,code,installedCode(),data.getString("packageName"),size,sha);
                if(size!=apk.getLong("size")||data.getInt("minSdk")>Build.VERSION.SDK_INT)throw new IOException("La actualización no es compatible con este teléfono");
                Offer found=new Offer(version,tag,apkUrl,sha,code,size);
                boolean cached=false;
                if(UpdateApkProvider.apk(context).isFile())try {verify(UpdateApkProvider.apk(context),found);cached=true;}catch(Exception ignored){}
                publish(cached?"Versión "+version+" verificada y lista para instalar.":"Nueva versión "+version+" disponible.",found,cached,false);
            } catch(Exception e) { publish(error("No se pudo comprobar la actualización",e),null,false,false); }
        });
    }
    void download() {
        final Offer update=offer;if(update==null||busy||closed)return;busy=true;
        publish("Descargando 0 %…",update,false,true);
        worker.execute(()->{
            File apk=UpdateApkProvider.apk(context),part=new File(apk.getParentFile(),"download.part.apk");
            try {
                if(!apk.getParentFile().isDirectory()&&!apk.getParentFile().mkdirs())throw new IOException("No hay espacio disponible");
                HttpURLConnection connection;
                try { connection=connect(update.url); }
                catch(IOException unavailable) {
                    publish("Usando la descarga de respaldo del proyecto…",update,false,true);
                    connection=connect(UpdatePolicy.mirror(update.version));
                }
                long total=0;int previous=-1;MessageDigest digest=MessageDigest.getInstance("SHA-256");
                try(InputStream in=connection.getInputStream();OutputStream out=new FileOutputStream(part)) {
                    byte[] buffer=new byte[32768];int n;
                    while((n=in.read(buffer))!=-1) {
                        if(closed||Thread.currentThread().isInterrupted())throw new IOException("Descarga cancelada");
                        total+=n;if(total>update.size||total>UpdatePolicy.MAX_APK)throw new IOException("Tamaño de archivo inesperado");
                        digest.update(buffer,0,n);out.write(buffer,0,n);
                        int percent=(int)(total*100/update.size);
                        if(percent!=previous){previous=percent;publish("Descargando "+percent+" %…",update,false,true);}
                    }
                } finally { connection.disconnect(); }
                if(total!=update.size||!hex(digest.digest()).equals(update.sha))throw new IOException("El archivo no coincide con la verificación SHA-256");
                verify(part,update);
                if(closed)throw new IOException("Descarga cancelada");
                if(apk.exists()&&!apk.delete())throw new IOException("No se pudo reemplazar la descarga anterior");
                if(!part.renameTo(apk))throw new IOException("No se pudo guardar la actualización");
                publish("Versión "+update.version+" verificada. Lista para instalar.",update,true,false);
            } catch(Exception e) { part.delete();publish(error("No se pudo descargar",e),update,false,false); }
        });
    }
    void install(Activity activity) {
        final Offer update=offer;if(update==null||!ready||busy||closed)return;
        if(Build.VERSION.SDK_INT>=26&&!context.getPackageManager().canRequestPackageInstalls()) {
            activity.startActivity(new Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,Uri.parse("package:"+context.getPackageName())));
            android.widget.Toast.makeText(activity,"Autoriza las instalaciones de Open Adapt y vuelve para pulsar Instalar actualización.",android.widget.Toast.LENGTH_LONG).show();return;
        }
        busy=true;publish("Verificando la instalación…",update,true,true);
        worker.execute(()->{
            try {
                verify(UpdateApkProvider.apk(context),update);
                main.post(()->{
                    if(closed||activity.isFinishing()||activity.isDestroyed())return;
                    publish("Confirma la actualización en Android. No desinstales la app.",update,true,false);
                    try {context.stopService(new Intent(context,MotionService.class));activity.startActivity(new Intent(Intent.ACTION_VIEW).setDataAndType(Uri.parse("content://"+context.getPackageName()+".updates/openadapt-update.apk"),"application/vnd.android.package-archive").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION));}
                    catch(Exception e){publish("No se pudo abrir el instalador de Android.",update,true,false);}
                });
            } catch(Exception e){publish(error("La instalación se ha bloqueado",e),update,false,false);}
        });
    }
    void verify(File file,Offer update) throws Exception {
        if(file.length()!=update.size)throw new IOException("Archivo incompleto");
        MessageDigest digest=MessageDigest.getInstance("SHA-256");
        try(InputStream in=new FileInputStream(file)){byte[] buffer=new byte[32768];int n;while((n=in.read(buffer))!=-1)digest.update(buffer,0,n);}
        if(!hex(digest.digest()).equals(update.sha))throw new IOException("Verificación SHA-256 incorrecta");
        PackageManager pm=context.getPackageManager();int flags=Build.VERSION.SDK_INT>=28?PackageManager.GET_SIGNING_CERTIFICATES:PackageManager.GET_SIGNATURES;
        PackageInfo candidate=pm.getPackageArchiveInfo(file.getAbsolutePath(),flags),installed=pm.getPackageInfo(context.getPackageName(),flags);
        if(candidate==null||!UpdatePolicy.PACKAGE.equals(candidate.packageName)||candidate.versionCode!=update.code||candidate.versionCode<=installed.versionCode||!(update.version+"-openadapt").equals(candidate.versionName))throw new IOException("Paquete o versión incorrectos");
        Set<String> original=signers(installed),replacement=signers(candidate);
        if(original.isEmpty()||!original.equals(replacement))throw new IOException("La firma es distinta de la app instalada");
    }
    static Set<String> signers(PackageInfo info) throws Exception {
        android.content.pm.Signature[] signatures;
        if(Build.VERSION.SDK_INT>=28) signatures=info.signingInfo==null?null:info.signingInfo.getApkContentsSigners();else signatures=info.signatures;
        Set<String> result=new TreeSet<>();if(signatures!=null)for(android.content.pm.Signature s:signatures)result.add(hex(MessageDigest.getInstance("SHA-256").digest(s.toByteArray())));return result;
    }
    static String hex(byte[] bytes) {StringBuilder text=new StringBuilder();for(byte b:bytes)text.append(String.format(Locale.ROOT,"%02x",b&255));return text.toString();}
    HttpURLConnection connect(String address) throws Exception {
        for(int redirects=0;redirects<6;redirects++) {
            if(!UpdatePolicy.transport(address))throw new IOException("Origen de descarga no permitido");
            HttpURLConnection c=(HttpURLConnection)new URL(address).openConnection();c.setInstanceFollowRedirects(false);c.setConnectTimeout(15000);c.setReadTimeout(30000);c.setRequestProperty("User-Agent","OpenAdapt/"+BuildInfo.VERSION);c.setRequestProperty("Accept","application/vnd.github+json");
            int code=c.getResponseCode();
            if(code>=300&&code<400){String location=c.getHeaderField("Location");c.disconnect();if(location==null)throw new IOException("Redirección inválida");address=new URL(new URL(address),location).toString();continue;}
            if(code!=200){c.disconnect();throw new IOException(code==403||code==429?"Límite temporal de GitHub; prueba más tarde":"Respuesta de GitHub: "+code);}
            return c;
        }
        throw new IOException("Demasiadas redirecciones");
    }
    byte[] bytes(String url,int limit) throws Exception {
        HttpURLConnection c=connect(url);
        try(InputStream in=c.getInputStream();ByteArrayOutputStream out=new ByteArrayOutputStream()) {
            byte[] buffer=new byte[8192];int n;while((n=in.read(buffer))!=-1){if(closed)throw new IOException("Cancelado");if(out.size()+n>limit)throw new IOException("Respuesta demasiado grande");out.write(buffer,0,n);}return out.toByteArray();
        } finally {c.disconnect();}
    }
    static String error(String message,Exception e) { return message+". "+(e instanceof IOException||e instanceof IllegalArgumentException?e.getMessage():"Revisa tu conexión e inténtalo de nuevo."); }
    void close() {closed=true;worker.shutdownNow();main.removeCallbacksAndMessages(null);}
}
