package y1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import de.d0.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: LottieCompositionFactory.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, k0<i>> f18405a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f18406b = {80, 75, 3, 4};

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.HashMap, java.util.Map<java.lang.String, y1.k0<y1.i>>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.HashMap, java.util.Map<java.lang.String, y1.k0<y1.i>>] */
    public static k0<i> a(final String str, Callable<j0<i>> callable) {
        final i iVarA;
        if (str == null) {
            iVarA = null;
        } else {
            d2.g gVar = d2.g.f5985b;
            Objects.requireNonNull(gVar);
            iVarA = gVar.f5986a.a(str);
        }
        if (iVarA != null) {
            return new k0<>(new Callable() { // from class: y1.n
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new j0(iVarA);
                }
            }, false);
        }
        if (str != null) {
            ?? r10 = f18405a;
            if (r10.containsKey(str)) {
                return (k0) r10.get(str);
            }
        }
        k0<i> k0Var = new k0<>(callable, false);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            k0Var.b(new g0() { // from class: y1.o
                /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.String, y1.k0<y1.i>>] */
                @Override // y1.g0
                public final void a(Object obj) {
                    String str2 = str;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    q.f18405a.remove(str2);
                    atomicBoolean2.set(true);
                }
            });
            k0Var.a(new g0() { // from class: y1.p
                /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.String, y1.k0<y1.i>>] */
                @Override // y1.g0
                public final void a(Object obj) {
                    String str2 = str;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    q.f18405a.remove(str2);
                    atomicBoolean2.set(true);
                }
            });
            if (!atomicBoolean.get()) {
                f18405a.put(str, k0Var);
            }
        }
        return k0Var;
    }

    public static j0<i> b(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return c(context.getAssets().open(str), str2);
            }
            return f(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new j0<>((Throwable) e10);
        }
    }

    public static j0<i> c(InputStream inputStream, String str) {
        try {
            de.f fVarB = de.w.b(de.w.f(inputStream));
            String[] strArr = j2.c.f9242l;
            return d(new j2.d(fVarB), str, true);
        } finally {
            k2.g.b(inputStream);
        }
    }

    public static j0<i> d(j2.c cVar, String str, boolean z10) {
        try {
            i iVarA = i2.w.a(cVar);
            if (str != null) {
                d2.g.f5985b.a(str, iVarA);
            }
            return new j0<>(iVarA);
        } catch (Exception e10) {
            return new j0<>((Throwable) e10);
        } finally {
            if (z10) {
                k2.g.b(cVar);
            }
        }
    }

    public static j0<i> e(Context context, int i10, String str) {
        Boolean bool;
        try {
            de.f fVarB = de.w.b(de.w.f(context.getResources().openRawResource(i10)));
            try {
                de.f fVarQ = ((de.d0) fVarB).Q();
                byte[] bArr = f18406b;
                int length = bArr.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        ((de.d0) fVarQ).close();
                        bool = Boolean.TRUE;
                        break;
                    }
                    if (((de.d0) fVarQ).readByte() != bArr[i11]) {
                        bool = Boolean.FALSE;
                        break;
                    }
                    i11++;
                }
            } catch (Exception unused) {
                Objects.requireNonNull(k2.c.f9626a);
                bool = Boolean.FALSE;
            } catch (NoSuchMethodError unused2) {
                bool = Boolean.FALSE;
            }
            return bool.booleanValue() ? f(new ZipInputStream(((de.d0) fVarB).new a()), str) : c(((de.d0) fVarB).new a(), str);
        } catch (Resources.NotFoundException e10) {
            return new j0<>((Throwable) e10);
        }
    }

    public static j0<i> f(ZipInputStream zipInputStream, String str) {
        try {
            return g(zipInputStream, str);
        } finally {
            k2.g.b(zipInputStream);
        }
    }

    public static j0<i> g(ZipInputStream zipInputStream, String str) {
        f0 next;
        HashMap map = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            i iVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    de.f fVarB = de.w.b(de.w.f(zipInputStream));
                    String[] strArr = j2.c.f9242l;
                    iVar = d(new j2.d(fVarB), null, false).f18376a;
                } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                    String[] strArrSplit = name.split("/");
                    map.put(strArrSplit[strArrSplit.length - 1], BitmapFactoryInstrumentation.decodeStream(zipInputStream));
                } else {
                    zipInputStream.closeEntry();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (iVar == null) {
                return new j0<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<f0> it = iVar.f18335d.values().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!next.f18328c.equals(str2));
                if (next != null) {
                    next.f18329d = k2.g.e((Bitmap) entry.getValue(), next.f18326a, next.f18327b);
                }
            }
            for (Map.Entry<String, f0> entry2 : iVar.f18335d.entrySet()) {
                if (entry2.getValue().f18329d == null) {
                    StringBuilder sbC = a0.b.c("There is no image for ");
                    sbC.append(entry2.getValue().f18328c);
                    return new j0<>((Throwable) new IllegalStateException(sbC.toString()));
                }
            }
            if (str != null) {
                d2.g.f5985b.a(str, iVar);
            }
            return new j0<>(iVar);
        } catch (IOException e10) {
            return new j0<>((Throwable) e10);
        }
    }

    public static String h(Context context, int i10) {
        StringBuilder sbC = a0.b.c("rawRes");
        sbC.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sbC.append(i10);
        return sbC.toString();
    }
}
