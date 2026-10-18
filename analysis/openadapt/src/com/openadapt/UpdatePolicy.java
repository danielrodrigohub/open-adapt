package com.openadapt;

import java.net.URI;
import java.util.regex.*;

/** Closed update origins and monotonic versions; independent of Android for testing. */
public final class UpdatePolicy {
    static final String PACKAGE="com.openadapt.experimental";
    static final String REPOSITORY="danielrodrigohub/open-adapt";
    static final String APK="OpenAdapt-1.29.3-experimental.apk";
    static final String MANIFEST="openadapt-update.json";
    static final long MAX_APK=160L*1024*1024;
    static final Pattern VERSION=Pattern.compile("v?([0-9]{1,6})\\.([0-9]{1,6})\\.([0-9]{1,6})(?:-experimental)?");
    private UpdatePolicy() {}
    static int[] version(String value) {
        Matcher m=VERSION.matcher(value);
        if(!m.matches()) throw new IllegalArgumentException("Versión no compatible");
        return new int[]{Integer.parseInt(m.group(1)),Integer.parseInt(m.group(2)),Integer.parseInt(m.group(3))};
    }
    static int compare(String first,String second) {
        int[] a=version(first),b=version(second);
        for(int i=0;i<3;i++) if(a[i]!=b[i]) return Integer.compare(a[i],b[i]);
        return 0;
    }
    static boolean transport(String value) {
        try {
            URI u=new URI(value);String h=u.getHost();
            return "https".equals(u.getScheme())&&u.getRawUserInfo()==null&&(u.getPort()==-1||u.getPort()==443)
                &&(mirrorUri(u)||"github.com".equals(h)||"api.github.com".equals(h)||"release-assets.githubusercontent.com".equals(h)||"objects.githubusercontent.com".equals(h));
        } catch(Exception e) { return false; }
    }
    static String mirror(String version) {
        if(!version.matches("[0-9]{1,6}\\.[0-9]{1,6}\\.[0-9]{1,6}"))throw new IllegalArgumentException("Versión de respaldo no válida");
        return "https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v"+version+".apk";
    }
    static boolean mirrorUri(URI u) {
        return "danielrodrigohub.github.io".equals(u.getHost())&&u.getRawQuery()==null&&u.getRawFragment()==null
            &&u.getRawPath()!=null&&u.getRawPath().matches("/open-adapt/downloads/OpenAdapt-v[0-9]{1,6}\\.[0-9]{1,6}\\.[0-9]{1,6}\\.apk");
    }
    static boolean asset(String value,String tag,String filename) {
        try {
            if(!VERSION.matcher(tag).matches()||!transport(value)) return false;
            URI u=new URI(value);
            return "github.com".equals(u.getHost())&&u.getRawQuery()==null&&u.getRawFragment()==null
                &&("/"+REPOSITORY+"/releases/download/"+tag+"/"+filename).equals(u.getRawPath());
        } catch(Exception e) { return false; }
    }
    static void candidate(String tag,String version,long code,long installed,String pkg,long size,String sha) {
        if(compare(tag,version)!=0||compare(version,BuildInfo.VERSION)<=0||code<=installed||code>Integer.MAX_VALUE
            ||!PACKAGE.equals(pkg)||size<1||size>MAX_APK||!sha.matches("[0-9a-f]{64}"))
            throw new IllegalArgumentException("La actualización no es compatible con esta instalación");
    }
}
