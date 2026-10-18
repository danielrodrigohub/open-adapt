package okhttp3.internal.http2;

import a1.f;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import de.g;
import okhttp3.internal._UtilJvmKt;
import p4.h;
import yd.o;

/* JADX INFO: compiled from: Http2.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2 {
    private static final String[] BINARY;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;
    public static final Http2 INSTANCE = new Http2();
    public static final g CONNECTION_PREFACE = g.f6227k.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] FLAGS = new String[64];

    static {
        String[] strArr = new String[256];
        for (int i10 = 0; i10 < 256; i10++) {
            String binaryString = Integer.toBinaryString(i10);
            h.i(binaryString, "toBinaryString(it)");
            strArr[i10] = o.e0(_UtilJvmKt.format("%8s", binaryString), SafeJsonPrimitive.NULL_CHAR, '0');
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i11 = 0; i11 < 1; i11++) {
            int i12 = iArr[i11];
            String[] strArr3 = FLAGS;
            strArr3[i12 | 8] = f.d(new StringBuilder(), strArr3[i12], "|PADDED");
        }
        String[] strArr4 = FLAGS;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            for (int i15 = 0; i15 < 1; i15++) {
                int i16 = iArr[i15];
                String[] strArr5 = FLAGS;
                int i17 = i16 | i14;
                strArr5[i17] = strArr5[i16] + '|' + strArr5[i14];
                StringBuilder sb2 = new StringBuilder();
                sb2.append(strArr5[i16]);
                sb2.append('|');
                strArr5[i17 | 8] = f.d(sb2, strArr5[i14], "|PADDED");
            }
        }
        int length = FLAGS.length;
        for (int i18 = 0; i18 < length; i18++) {
            String[] strArr6 = FLAGS;
            if (strArr6[i18] == null) {
                strArr6[i18] = BINARY[i18];
            }
        }
    }

    private Http2() {
    }

    public final String formatFlags(int i10, int i11) {
        String str;
        if (i11 == 0) {
            return "";
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 == 4 || i10 == 6) {
                return i11 == 1 ? "ACK" : BINARY[i11];
            }
            if (i10 != 7 && i10 != 8) {
                String[] strArr = FLAGS;
                if (i11 < strArr.length) {
                    str = strArr[i11];
                    h.g(str);
                } else {
                    str = BINARY[i11];
                }
                if (i10 != 5 || (i11 & 4) == 0) {
                    return (i10 != 0 || (i11 & 32) == 0) ? str : o.d0(str, "PRIORITY", "COMPRESSED", false);
                }
                return o.d0(str, "HEADERS", "PUSH_PROMISE", false);
            }
        }
        return BINARY[i11];
    }

    public final String formattedType$okhttp(int i10) {
        String[] strArr = FRAME_NAMES;
        return i10 < strArr.length ? strArr[i10] : _UtilJvmKt.format("0x%02x", Integer.valueOf(i10));
    }

    public final String frameLog(boolean z10, int i10, int i11, int i12, int i13) {
        return _UtilJvmKt.format("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), formattedType$okhttp(i12), formatFlags(i12, i13));
    }

    public final String frameLogWindowUpdate(boolean z10, int i10, int i11, long j10) {
        return _UtilJvmKt.format("%s 0x%08x %5d %-13s %d", z10 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), formattedType$okhttp(8), Long.valueOf(j10));
    }
}
