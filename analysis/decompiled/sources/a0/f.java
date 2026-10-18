package a0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import g0.n;
import g0.p;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: TypefaceCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f11a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p.e<String, Typeface> f12b;

    /* JADX INFO: compiled from: TypefaceCompat.java */
    public static class a extends n {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public z.d.e f13j;

        public a(z.d.e eVar) {
            this.f13j = eVar;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f11a = new k();
        } else if (i10 >= 28) {
            f11a = new j();
        } else if (i10 >= 26) {
            f11a = new i();
        } else {
            Method method = h.f21d;
            if (method == null) {
                Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
            }
            if (method != null) {
                f11a = new h();
            } else {
                f11a = new g();
            }
        }
        f12b = new p.e<>(16);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0027  */
    public static Typeface a(Context context, z.c.b bVar, Resources resources, int i10, String str, int i11, int i12, z.d.e eVar, boolean z10) {
        Typeface typefaceA;
        Typeface typefaceCreate;
        if (bVar instanceof z.c.e) {
            z.c.e eVar2 = (z.c.e) bVar;
            String str2 = eVar2.f19222d;
            typefaceA = null;
            boolean z11 = false;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                    typefaceCreate = null;
                }
            }
            if (typefaceCreate != null) {
                if (eVar != null) {
                    eVar.b(typefaceCreate);
                }
                return typefaceCreate;
            }
            if (!z10 ? eVar == null : eVar2.f19221c == 0) {
                z11 = true;
            }
            int i13 = z10 ? eVar2.f19220b : -1;
            Handler handlerC = z.d.e.c();
            a aVar = new a(eVar);
            g0.f fVar = eVar2.f19219a;
            g0.c cVar = new g0.c(aVar, handlerC);
            if (z11) {
                String strA = g0.k.a(fVar, i12);
                Typeface typefaceA2 = g0.k.f7506a.a(strA);
                if (typefaceA2 != null) {
                    handlerC.post(new g0.a(aVar, typefaceA2));
                    typefaceA = typefaceA2;
                } else if (i13 == -1) {
                    g0.k.a aVarB = g0.k.b(strA, context, fVar, i12);
                    cVar.a(aVarB);
                    typefaceA = aVarB.f7510a;
                } else {
                    try {
                        try {
                            try {
                                try {
                                    g0.k.a aVar2 = (g0.k.a) g0.k.f7507b.submit(new g0.g(strA, context, fVar, i12)).get(i13, TimeUnit.MILLISECONDS);
                                    cVar.a(aVar2);
                                    typefaceA = aVar2.f7510a;
                                } catch (TimeoutException unused) {
                                    throw new InterruptedException("timeout");
                                }
                            } catch (InterruptedException e10) {
                                throw e10;
                            }
                        } catch (ExecutionException e11) {
                            throw new RuntimeException(e11);
                        }
                    } catch (InterruptedException unused2) {
                        cVar.f7487b.post(new g0.b(cVar.f7486a, -3));
                    }
                }
            } else {
                String strA2 = g0.k.a(fVar, i12);
                Typeface typefaceA3 = g0.k.f7506a.a(strA2);
                if (typefaceA3 != null) {
                    handlerC.post(new g0.a(aVar, typefaceA3));
                    typefaceA = typefaceA3;
                } else {
                    g0.h hVar = new g0.h(cVar);
                    synchronized (g0.k.f7508c) {
                        p.g<String, ArrayList<i0.a<g0.k.a>>> gVar = g0.k.f7509d;
                        ArrayList<i0.a<g0.k.a>> orDefault = gVar.getOrDefault(strA2, null);
                        if (orDefault != null) {
                            orDefault.add(hVar);
                        } else {
                            ArrayList<i0.a<g0.k.a>> arrayList = new ArrayList<>();
                            arrayList.add(hVar);
                            gVar.put(strA2, arrayList);
                            g0.k.f7507b.execute(new p(Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler(), new g0.i(strA2, context, fVar, i12), new g0.j(strA2)));
                        }
                    }
                }
            }
        } else {
            typefaceA = f11a.a(context, (z.c.C0329c) bVar, resources, i12);
            if (eVar != null) {
                if (typefaceA != null) {
                    eVar.b(typefaceA);
                } else {
                    eVar.a(-3);
                }
            }
        }
        if (typefaceA != null) {
            f12b.b(c(resources, i10, str, i11, i12), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface b(Context context, Resources resources, int i10, String str, int i11, int i12) {
        Typeface typefaceD = f11a.d(context, resources, i10, str, i12);
        if (typefaceD != null) {
            f12b.b(c(resources, i10, str, i11, i12), typefaceD);
        }
        return typefaceD;
    }

    public static String c(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }
}
