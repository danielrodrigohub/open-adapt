package p3;

import com.newrelic.agent.android.tracing.ActivityTrace;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: Ac4Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f12682a = {2002, ActivityTrace.MAX_TRACES, 1920, 1601, 1600, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1000, 960, 800, 800, 480, HttpStatusCodesKt.HTTP_BAD_REQUEST, HttpStatusCodesKt.HTTP_BAD_REQUEST, 2048};

    /* JADX INFO: compiled from: Ac4Util.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12685c;

        public a(int i10, int i11, int i12) {
            this.f12683a = i10;
            this.f12684b = i11;
            this.f12685c = i12;
        }
    }

    public static void a(int i10, m5.w wVar) {
        wVar.A(7);
        byte[] bArr = wVar.f10475a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i10 >> 16) & 255);
        bArr[5] = (byte) ((i10 >> 8) & 255);
        bArr[6] = (byte) (i10 & 255);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0090  */
    public static a b(m5.v vVar) {
        int i10;
        int i11;
        int iG = vVar.g(16);
        int iG2 = vVar.g(16);
        if (iG2 == 65535) {
            iG2 = vVar.g(24);
            i10 = 7;
        } else {
            i10 = 4;
        }
        int i12 = iG2 + i10;
        if (iG == 44097) {
            i12 += 2;
        }
        int i13 = 0;
        if (vVar.g(2) == 3) {
            do {
                vVar.g(2);
            } while (vVar.f());
        }
        int iG3 = vVar.g(10);
        if (vVar.f() && vVar.g(3) > 0) {
            vVar.m(2);
        }
        int i14 = vVar.f() ? 48000 : 44100;
        int iG4 = vVar.g(4);
        if (i14 == 44100 && iG4 == 13) {
            i11 = f12682a[iG4];
        } else {
            if (i14 == 48000) {
                int[] iArr = f12682a;
                if (iG4 < 14) {
                    i13 = iArr[iG4];
                    int i15 = iG3 % 5;
                    if (i15 == 1) {
                        if (iG4 != 3 || iG4 == 8) {
                            i13++;
                        }
                    } else if (i15 != 2) {
                        if (i15 != 3) {
                            if (i15 == 4 && (iG4 == 3 || iG4 == 8 || iG4 == 11)) {
                                i13++;
                            }
                        } else if (iG4 != 3) {
                            i13++;
                        } else {
                            i13++;
                        }
                    } else if (iG4 == 8 || iG4 == 11) {
                        i13++;
                    }
                }
            }
            i11 = i13;
        }
        return new a(i14, i12, i11);
    }
}
