package g0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p.e<String, Typeface> f7506a = new p.e<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f7507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f7508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p.g<String, ArrayList<i0.a<a>>> f7509d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new o());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f7507b = threadPoolExecutor;
        f7508c = new Object();
        f7509d = new p.g<>();
    }

    public static String a(f fVar, int i10) {
        return fVar.f7495e + "-" + i10;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0034 A[EDGE_INSN: B:22:0x0034->B:27:0x003d BREAK  A[LOOP:0: B:18:0x002a->B:24:0x0038]] */
    public static a b(String str, Context context, f fVar, int i10) {
        int i11;
        Typeface typefaceA = f7506a.a(str);
        if (typefaceA != null) {
            return new a(typefaceA);
        }
        try {
            l lVarA = e.a(context, fVar);
            int i12 = lVarA.f7512a;
            int i13 = 1;
            if (i12 == 0) {
                m[] mVarArr = lVarA.f7513b;
                if (mVarArr == null || mVarArr.length == 0) {
                    i11 = i13;
                    break;
                }
                int length = mVarArr.length;
                int i14 = 0;
                while (true) {
                    if (i14 >= length) {
                        i13 = 0;
                        i11 = i13;
                        break;
                    }
                    int i15 = mVarArr[i14].f7518e;
                    if (i15 != 0) {
                        if (i15 >= 0) {
                            i11 = i15;
                            break;
                        }
                        i11 = -3;
                        break;
                    }
                    i14++;
                }
            } else {
                if (i12 != 1) {
                    i11 = -3;
                    break;
                }
                i11 = -2;
            }
            if (i11 != 0) {
                return new a(i11);
            }
            Typeface typefaceB = a0.f.f11a.b(context, lVarA.f7513b, i10);
            if (typefaceB == null) {
                return new a(-3);
            }
            f7506a.b(str, typefaceB);
            return new a(typefaceB);
        } catch (PackageManager.NameNotFoundException unused) {
            return new a(-1);
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Typeface f7510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f7511b;

        public a(int i10) {
            this.f7510a = null;
            this.f7511b = i10;
        }

        @SuppressLint({"WrongConstant"})
        public a(Typeface typeface) {
            this.f7510a = typeface;
            this.f7511b = 0;
        }
    }
}
