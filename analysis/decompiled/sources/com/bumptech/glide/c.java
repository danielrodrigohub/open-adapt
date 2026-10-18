package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.m0;
import androidx.lifecycle.o;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import e3.l;
import f.p;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import r2.m;
import v2.s;
import v2.t;
import v2.v;
import y2.b0;
import y2.c0;
import y2.n;
import y2.q;
import y2.u;
import y2.w;
import y2.y;
import y2.z;

/* JADX INFO: compiled from: Glide.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile c f4418p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile boolean f4419q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s2.d f4420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t2.h f4421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e f4422j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final h f4423k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final s2.b f4424l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final l f4425m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e3.c f4426n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<j> f4427o = new ArrayList();

    /* JADX INFO: compiled from: Glide.java */
    public interface a {
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public c(Context context, m mVar, t2.h hVar, s2.d dVar, s2.b bVar, l lVar, e3.c cVar, int i10, a aVar, Map<Class<?>, k<?, ?>> map, List<h3.f<Object>> list, f fVar) {
        Object obj;
        int i11;
        p2.j zVar;
        p2.j hVar2;
        this.f4420h = dVar;
        this.f4424l = bVar;
        this.f4421i = hVar;
        this.f4425m = lVar;
        this.f4426n = cVar;
        Resources resources = context.getResources();
        h hVar3 = new h();
        this.f4423k = hVar3;
        y2.l lVar2 = new y2.l();
        g3.b bVar2 = hVar3.f4468g;
        synchronized (bVar2) {
            ((List) bVar2.f7615a).add(lVar2);
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 27) {
            q qVar = new q();
            g3.b bVar3 = hVar3.f4468g;
            synchronized (bVar3) {
                ((List) bVar3.f7615a).add(qVar);
            }
        }
        List<ImageHeaderParser> listE = hVar3.e();
        c3.a aVar2 = new c3.a(context, listE, dVar, bVar);
        c0 c0Var = new c0(dVar, new c0.g());
        n nVar = new n(hVar3.e(), resources.getDisplayMetrics(), dVar, bVar);
        if (i12 < 28 || !fVar.a(d.c.class)) {
            y2.g gVar = new y2.g(nVar);
            obj = String.class;
            i11 = 28;
            zVar = new z(nVar, bVar);
            hVar2 = gVar;
        } else {
            zVar = new u();
            i11 = 28;
            hVar2 = new y2.h();
            obj = String.class;
        }
        if (i12 >= i11 && fVar.a(d.b.class)) {
            hVar3.d("Animation", InputStream.class, Drawable.class, new a3.a.c(new a3.a(listE, bVar)));
            hVar3.d("Animation", ByteBuffer.class, Drawable.class, new a3.a.b(new a3.a(listE, bVar)));
        }
        a3.e eVar = new a3.e(context);
        s.c cVar2 = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar4 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        y2.c cVar3 = new y2.c(bVar);
        d3.a aVar4 = new d3.a();
        m0 m0Var = new m0();
        ContentResolver contentResolver = context.getContentResolver();
        androidx.emoji2.text.b bVar5 = new androidx.emoji2.text.b();
        g3.a aVar5 = hVar3.f4463b;
        synchronized (aVar5) {
            aVar5.f7612a.add(new g3.a.C0144a<>(ByteBuffer.class, bVar5));
        }
        g1.k kVar = new g1.k(bVar);
        g3.a aVar6 = hVar3.f4463b;
        synchronized (aVar6) {
            aVar6.f7612a.add(new g3.a.C0144a<>(InputStream.class, kVar));
        }
        hVar3.d("Bitmap", ByteBuffer.class, Bitmap.class, hVar2);
        hVar3.d("Bitmap", InputStream.class, Bitmap.class, zVar);
        hVar3.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new w(nVar));
        hVar3.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, c0Var);
        hVar3.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new c0(dVar, new c0.c()));
        v2.u.a<?> aVar7 = v2.u.a.f16207a;
        hVar3.b(Bitmap.class, Bitmap.class, aVar7);
        hVar3.d("Bitmap", Bitmap.class, Bitmap.class, new b0());
        hVar3.c(Bitmap.class, cVar3);
        hVar3.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new y2.a(resources, hVar2));
        hVar3.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new y2.a(resources, zVar));
        hVar3.d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new y2.a(resources, c0Var));
        hVar3.c(BitmapDrawable.class, new y2.b(dVar, cVar3));
        hVar3.d("Animation", InputStream.class, c3.c.class, new c3.j(listE, aVar2, bVar));
        hVar3.d("Animation", ByteBuffer.class, c3.c.class, aVar2);
        hVar3.c(c3.c.class, new c3.d());
        hVar3.b(n2.a.class, n2.a.class, aVar7);
        hVar3.d("Bitmap", n2.a.class, Bitmap.class, new c3.h(dVar));
        hVar3.d("legacy_append", Uri.class, Drawable.class, eVar);
        hVar3.d("legacy_append", Uri.class, Bitmap.class, new y(eVar, dVar));
        hVar3.h(new z2.a.C0331a());
        hVar3.b(File.class, ByteBuffer.class, new v2.c.b());
        hVar3.b(File.class, InputStream.class, new v2.e.C0287e());
        hVar3.d("legacy_append", File.class, File.class, new b3.a());
        hVar3.b(File.class, ParcelFileDescriptor.class, new v2.e.b());
        hVar3.b(File.class, File.class, aVar7);
        hVar3.h(new com.bumptech.glide.load.data.k.a(bVar));
        hVar3.h(new ParcelFileDescriptorRewinder.a());
        Class cls = Integer.TYPE;
        hVar3.b(cls, InputStream.class, cVar2);
        hVar3.b(cls, ParcelFileDescriptor.class, bVar4);
        hVar3.b(Integer.class, InputStream.class, cVar2);
        hVar3.b(Integer.class, ParcelFileDescriptor.class, bVar4);
        hVar3.b(Integer.class, Uri.class, dVar2);
        hVar3.b(cls, AssetFileDescriptor.class, aVar3);
        hVar3.b(Integer.class, AssetFileDescriptor.class, aVar3);
        hVar3.b(cls, Uri.class, dVar2);
        Object obj2 = obj;
        hVar3.b(obj2, InputStream.class, new v2.d.c());
        hVar3.b(Uri.class, InputStream.class, new v2.d.c());
        hVar3.b(obj2, InputStream.class, new t.c());
        hVar3.b(obj2, ParcelFileDescriptor.class, new t.b());
        hVar3.b(obj2, AssetFileDescriptor.class, new t.a());
        hVar3.b(Uri.class, InputStream.class, new v2.a.c(context.getAssets()));
        hVar3.b(Uri.class, AssetFileDescriptor.class, new v2.a.b(context.getAssets()));
        hVar3.b(Uri.class, InputStream.class, new w2.b.a(context));
        hVar3.b(Uri.class, InputStream.class, new w2.c.a(context));
        if (i12 >= 29) {
            hVar3.b(Uri.class, InputStream.class, new w2.d.c(context));
            hVar3.b(Uri.class, ParcelFileDescriptor.class, new w2.d.b(context));
        }
        hVar3.b(Uri.class, InputStream.class, new v.d(contentResolver));
        hVar3.b(Uri.class, ParcelFileDescriptor.class, new v.b(contentResolver));
        hVar3.b(Uri.class, AssetFileDescriptor.class, new v.a(contentResolver));
        hVar3.b(Uri.class, InputStream.class, new v2.w.a());
        hVar3.b(URL.class, InputStream.class, new w2.e.a());
        hVar3.b(Uri.class, File.class, new v2.j.a(context));
        hVar3.b(v2.f.class, InputStream.class, new w2.a.C0299a());
        hVar3.b(byte[].class, ByteBuffer.class, new v2.b.a());
        hVar3.b(byte[].class, InputStream.class, new v2.b.d());
        hVar3.b(Uri.class, Uri.class, aVar7);
        hVar3.b(Drawable.class, Drawable.class, aVar7);
        hVar3.d("legacy_append", Drawable.class, Drawable.class, new a3.f());
        hVar3.i(Bitmap.class, BitmapDrawable.class, new p(resources));
        hVar3.i(Bitmap.class, byte[].class, aVar4);
        hVar3.i(Drawable.class, byte[].class, new d3.b(dVar, aVar4, m0Var));
        hVar3.i(c3.c.class, byte[].class, m0Var);
        c0 c0Var2 = new c0(dVar, new c0.d());
        hVar3.a(ByteBuffer.class, Bitmap.class, c0Var2);
        hVar3.a(ByteBuffer.class, BitmapDrawable.class, new y2.a(resources, c0Var2));
        this.f4422j = new e(context, bVar, hVar3, new o(), aVar, map, list, mVar, fVar, i10);
    }

    public static void a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        List<f3.c> list;
        if (f4419q) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f4419q = true;
        d dVar = new d();
        Context applicationContext = context.getApplicationContext();
        List listEmptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) {
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Loading Glide modules");
            }
            ArrayList arrayList = new ArrayList();
            try {
                ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                if (applicationInfo.metaData != null) {
                    if (Log.isLoggable("ManifestParser", 2)) {
                        Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                    }
                    for (String str : applicationInfo.metaData.keySet()) {
                        if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                            arrayList.add(f3.e.a(str));
                            if (Log.isLoggable("ManifestParser", 3)) {
                                Log.d("ManifestParser", "Loaded Glide module: " + str);
                            }
                        }
                    }
                    if (Log.isLoggable("ManifestParser", 3)) {
                        Log.d("ManifestParser", "Finished loading Glide modules");
                    }
                } else if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Got null app info metadata");
                }
                list = arrayList;
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("Unable to find metadata to parse GlideModules", e10);
            }
        } else {
            list = listEmptyList;
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.getExcludedModuleClasses().isEmpty()) {
            Set<Class<?>> excludedModuleClasses = generatedAppGlideModule.getExcludedModuleClasses();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f3.c cVar = (f3.c) it.next();
                if (excludedModuleClasses.contains(cVar.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + cVar);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (f3.c cVar2 : list) {
                StringBuilder sbC = a0.b.c("Discovered GlideModule from manifest: ");
                sbC.append(cVar2.getClass());
                Log.d("Glide", sbC.toString());
            }
        }
        dVar.f4441n = generatedAppGlideModule != null ? generatedAppGlideModule.getRequestManagerFactory() : null;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((f3.c) it2.next()).applyOptions(applicationContext, dVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.applyOptions(applicationContext, dVar);
        }
        if (dVar.f4434g == null) {
            u2.a.ThreadFactoryC0270a threadFactoryC0270a = new u2.a.ThreadFactoryC0270a();
            int iA = u2.a.a();
            if (TextUtils.isEmpty("source")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
            }
            dVar.f4434g = new u2.a(new ThreadPoolExecutor(iA, iA, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new u2.a.b(threadFactoryC0270a, "source", false)));
        }
        if (dVar.f4435h == null) {
            int i10 = u2.a.f15676j;
            u2.a.ThreadFactoryC0270a threadFactoryC0270a2 = new u2.a.ThreadFactoryC0270a();
            if (TextUtils.isEmpty("disk-cache")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
            }
            dVar.f4435h = new u2.a(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new u2.a.b(threadFactoryC0270a2, "disk-cache", true)));
        }
        if (dVar.f4442o == null) {
            int i11 = u2.a.a() >= 4 ? 2 : 1;
            u2.a.ThreadFactoryC0270a threadFactoryC0270a3 = new u2.a.ThreadFactoryC0270a();
            if (TextUtils.isEmpty("animation")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
            }
            dVar.f4442o = new u2.a(new ThreadPoolExecutor(i11, i11, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new u2.a.b(threadFactoryC0270a3, "animation", true)));
        }
        if (dVar.f4437j == null) {
            dVar.f4437j = new t2.i(new t2.i.a(applicationContext));
        }
        if (dVar.f4438k == null) {
            dVar.f4438k = new e3.e();
        }
        if (dVar.f4431d == null) {
            int i12 = dVar.f4437j.f15398a;
            if (i12 > 0) {
                dVar.f4431d = new s2.j(i12);
            } else {
                dVar.f4431d = new s2.e();
            }
        }
        if (dVar.f4432e == null) {
            dVar.f4432e = new s2.i(dVar.f4437j.f15401d);
        }
        if (dVar.f4433f == null) {
            dVar.f4433f = new t2.g(dVar.f4437j.f15399b);
        }
        if (dVar.f4436i == null) {
            dVar.f4436i = new t2.f(applicationContext);
        }
        if (dVar.f4430c == null) {
            dVar.f4430c = new m(dVar.f4433f, dVar.f4436i, dVar.f4435h, dVar.f4434g, new u2.a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, u2.a.f15675i, TimeUnit.MILLISECONDS, new SynchronousQueue(), new u2.a.b(new u2.a.ThreadFactoryC0270a(), "source-unlimited", false))), dVar.f4442o);
        }
        List<h3.f<Object>> list2 = dVar.f4443p;
        if (list2 == null) {
            dVar.f4443p = Collections.emptyList();
        } else {
            dVar.f4443p = Collections.unmodifiableList(list2);
        }
        f.a aVar = dVar.f4429b;
        Objects.requireNonNull(aVar);
        f fVar = new f(aVar);
        c cVar3 = new c(applicationContext, dVar.f4430c, dVar.f4433f, dVar.f4431d, dVar.f4432e, new l(dVar.f4441n, fVar), dVar.f4438k, dVar.f4439l, dVar.f4440m, dVar.f4428a, dVar.f4443p, fVar);
        for (f3.c cVar4 : list) {
            try {
                cVar4.registerComponents(applicationContext, cVar3, cVar3.f4423k);
            } catch (AbstractMethodError e11) {
                StringBuilder sbC2 = a0.b.c("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
                sbC2.append(cVar4.getClass().getName());
                throw new IllegalStateException(sbC2.toString(), e11);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.registerComponents(applicationContext, cVar3, cVar3.f4423k);
        }
        applicationContext.registerComponentCallbacks(cVar3);
        f4418p = cVar3;
        f4419q = false;
    }

    public static c b(Context context) {
        if (f4418p == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
            } catch (IllegalAccessException e10) {
                c(e10);
                throw null;
            } catch (InstantiationException e11) {
                c(e11);
                throw null;
            } catch (NoSuchMethodException e12) {
                c(e12);
                throw null;
            } catch (InvocationTargetException e13) {
                c(e13);
                throw null;
            }
            synchronized (c.class) {
                if (f4418p == null) {
                    a(context, generatedAppGlideModule);
                }
            }
        }
        return f4418p;
    }

    public static void c(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public static j e(Context context) {
        Objects.requireNonNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return b(context).f4425m.b(context);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    public final void d(j jVar) {
        synchronized (this.f4427o) {
            if (!this.f4427o.contains(jVar)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f4427o.remove(jVar);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        l3.l.a();
        ((l3.i) this.f4421i).e(0L);
        this.f4420h.b();
        this.f4424l.b();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        long j10;
        l3.l.a();
        synchronized (this.f4427o) {
            Iterator it = this.f4427o.iterator();
            while (it.hasNext()) {
                Objects.requireNonNull((j) it.next());
            }
        }
        t2.g gVar = (t2.g) this.f4421i;
        Objects.requireNonNull(gVar);
        if (i10 >= 40) {
            gVar.e(0L);
        } else if (i10 >= 20 || i10 == 15) {
            synchronized (gVar) {
                j10 = gVar.f9937b;
            }
            gVar.e(j10 / 2);
        }
        this.f4420h.a(i10);
        this.f4424l.a(i10);
    }
}
