package n3;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: ExoPlaybackException.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends k1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f11634k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11635l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s0 f11636m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11637n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p4.w f11638o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f11639p;

    static {
        p pVar = p.f11613c;
    }

    public q(Bundle bundle) {
        super(bundle);
        this.f11633j = bundle.getInt(k1.b(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY), 2);
        this.f11634k = bundle.getString(k1.b(1002));
        this.f11635l = bundle.getInt(k1.b(1003), -1);
        Bundle bundle2 = bundle.getBundle(k1.b(1004));
        this.f11636m = bundle2 == null ? null : (s0) s0.O.d(bundle2);
        this.f11637n = bundle.getInt(k1.b(WebSocketProtocol.CLOSE_NO_STATUS_CODE), 4);
        this.f11639p = bundle.getBoolean(k1.b(1006), false);
        this.f11638o = null;
    }

    public static q d(RuntimeException runtimeException, int i10) {
        return new q(2, runtimeException, i10, null, -1, null, 4, false);
    }

    @Override // n3.k1, n3.h
    public final Bundle a() {
        Bundle bundleA = super.a();
        bundleA.putInt(k1.b(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY), this.f11633j);
        bundleA.putString(k1.b(1002), this.f11634k);
        bundleA.putInt(k1.b(1003), this.f11635l);
        if (this.f11636m != null) {
            bundleA.putBundle(k1.b(1004), this.f11636m.a());
        }
        bundleA.putInt(k1.b(WebSocketProtocol.CLOSE_NO_STATUS_CODE), this.f11637n);
        bundleA.putBoolean(k1.b(1006), this.f11639p);
        return bundleA;
    }

    public final q c(p4.w wVar) {
        String message = getMessage();
        int i10 = m5.g0.f10384a;
        return new q(message, getCause(), this.f11505h, this.f11633j, this.f11634k, this.f11635l, this.f11636m, this.f11637n, wVar, this.f11506i, this.f11639p);
    }

    public q(String str, Throwable th, int i10, int i11, String str2, int i12, s0 s0Var, int i13, p4.w wVar, long j10, boolean z10) {
        super(str, th, i10, j10);
        m5.a.a(!z10 || i11 == 1);
        m5.a.a(th != null || i11 == 3);
        this.f11633j = i11;
        this.f11634k = str2;
        this.f11635l = i12;
        this.f11636m = s0Var;
        this.f11637n = i13;
        this.f11638o = wVar;
        this.f11639p = z10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public q(int i10, Throwable th, int i11, String str, int i12, s0 s0Var, int i13, boolean z10) {
        String string;
        String str2;
        if (i10 == 0) {
            string = "Source error";
        } else if (i10 != 1) {
            string = i10 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" error, index=");
            sb2.append(i12);
            sb2.append(", format=");
            sb2.append(s0Var);
            sb2.append(", format_supported=");
            int i14 = m5.g0.f10384a;
            if (i13 == 0) {
                str2 = "NO";
            } else if (i13 == 1) {
                str2 = "NO_UNSUPPORTED_TYPE";
            } else if (i13 == 2) {
                str2 = "NO_UNSUPPORTED_DRM";
            } else if (i13 == 3) {
                str2 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i13 != 4) {
                    throw new IllegalStateException();
                }
                str2 = "YES";
            }
            sb2.append(str2);
            string = sb2.toString();
        }
        this(TextUtils.isEmpty(null) ? string : a0.d.c(string, ": ", null), th, i11, i10, str, i12, s0Var, i13, null, SystemClock.elapsedRealtime(), z10);
    }
}
