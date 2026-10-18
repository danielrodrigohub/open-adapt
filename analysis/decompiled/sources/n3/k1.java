package n3;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: compiled from: PlaybackException.java */
/* JADX INFO: loaded from: classes.dex */
public class k1 extends Exception implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f11506i;

    static {
        y0.m mVar = y0.m.f18249d;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public k1(Bundle bundle) {
        String string = bundle.getString(b(2));
        String string2 = bundle.getString(b(3));
        String string3 = bundle.getString(b(4));
        Throwable remoteException = null;
        if (!TextUtils.isEmpty(string2)) {
            try {
                Class<?> cls = Class.forName(string2, true, k1.class.getClassLoader());
                remoteException = Throwable.class.isAssignableFrom(cls) ? (Throwable) cls.getConstructor(String.class).newInstance(string3) : null;
                if (remoteException == null) {
                    remoteException = new RemoteException(string3);
                }
            } catch (Throwable unused) {
                remoteException = new RemoteException(string3);
            }
        }
        int i10 = bundle.getInt(b(0), 1000);
        long j10 = bundle.getLong(b(1), SystemClock.elapsedRealtime());
        super(string, remoteException);
        this.f11505h = i10;
        this.f11506i = j10;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f11505h);
        bundle.putLong(b(1), this.f11506i);
        bundle.putString(b(2), getMessage());
        Throwable cause = getCause();
        if (cause != null) {
            bundle.putString(b(3), cause.getClass().getName());
            bundle.putString(b(4), cause.getMessage());
        }
        return bundle;
    }

    public k1(String str, Throwable th, int i10, long j10) {
        super(str, th);
        this.f11505h = i10;
        this.f11506i = j10;
    }
}
