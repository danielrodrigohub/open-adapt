package k1;

import android.util.Log;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static l f9597a;

    /* JADX INFO: compiled from: Logger.java */
    public static class a extends l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9598b;

        public a(int i10) {
            this.f9598b = i10;
        }

        @Override // k1.l
        public final void a(String str, String str2, Throwable... thArr) {
            if (this.f9598b <= 3) {
                if (thArr.length >= 1) {
                    Log.d(str, str2, thArr[0]);
                } else {
                    Log.d(str, str2);
                }
            }
        }

        @Override // k1.l
        public final void b(String str, String str2, Throwable... thArr) {
            if (this.f9598b <= 6) {
                if (thArr.length >= 1) {
                    Log.e(str, str2, thArr[0]);
                } else {
                    Log.e(str, str2);
                }
            }
        }

        @Override // k1.l
        public final void d(String str, String str2, Throwable... thArr) {
            if (this.f9598b <= 4) {
                if (thArr.length >= 1) {
                    Log.i(str, str2, thArr[0]);
                } else {
                    Log.i(str, str2);
                }
            }
        }

        @Override // k1.l
        public final void f(String str, String str2, Throwable... thArr) {
            if (this.f9598b <= 5) {
                if (thArr.length >= 1) {
                    Log.w(str, str2, thArr[0]);
                } else {
                    Log.w(str, str2);
                }
            }
        }
    }

    public static synchronized l c() {
        if (f9597a == null) {
            f9597a = new a(3);
        }
        return f9597a;
    }

    public static String e(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(23);
        sb2.append("WM-");
        if (length >= 20) {
            sb2.append(str.substring(0, 20));
        } else {
            sb2.append(str);
        }
        return sb2.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void f(String str, String str2, Throwable... thArr);
}
