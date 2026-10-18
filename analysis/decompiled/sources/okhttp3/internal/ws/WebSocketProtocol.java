package okhttp3.internal.ws;

import a0.d;
import androidx.appcompat.widget.e0;
import de.c;
import de.g;
import p4.h;

/* JADX INFO: compiled from: WebSocketProtocol.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketProtocol {
    public static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int B0_FLAG_FIN = 128;
    public static final int B0_FLAG_RSV1 = 64;
    public static final int B0_FLAG_RSV2 = 32;
    public static final int B0_FLAG_RSV3 = 16;
    public static final int B0_MASK_OPCODE = 15;
    public static final int B1_FLAG_MASK = 128;
    public static final int B1_MASK_LENGTH = 127;
    public static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    public static final long CLOSE_MESSAGE_MAX = 123;
    public static final int CLOSE_NO_STATUS_CODE = 1005;
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();
    public static final int OPCODE_BINARY = 2;
    public static final int OPCODE_CONTINUATION = 0;
    public static final int OPCODE_CONTROL_CLOSE = 8;
    public static final int OPCODE_CONTROL_PING = 9;
    public static final int OPCODE_CONTROL_PONG = 10;
    public static final int OPCODE_FLAG_CONTROL = 8;
    public static final int OPCODE_TEXT = 1;
    public static final long PAYLOAD_BYTE_MAX = 125;
    public static final int PAYLOAD_LONG = 127;
    public static final int PAYLOAD_SHORT = 126;
    public static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
    }

    public final String acceptHeader(String str) {
        h.j(str, "key");
        return g.f6227k.c(str + ACCEPT_MAGIC).u().b();
    }

    public final String closeCodeExceptionMessage(int i10) {
        if (i10 < 1000 || i10 >= 5000) {
            return e0.d("Code must be in range [1000,5000): ", i10);
        }
        if (!(1004 <= i10 && i10 < 1007)) {
            if (!(1015 <= i10 && i10 < 3000)) {
                return null;
            }
        }
        return d.b("Code ", i10, " is reserved and may not be used.");
    }

    public final void toggleMask(c.a aVar, byte[] bArr) {
        long j10;
        h.j(aVar, "cursor");
        h.j(bArr, "key");
        int length = bArr.length;
        int i10 = 0;
        do {
            byte[] bArr2 = aVar.f6204l;
            int i11 = aVar.f6205m;
            int i12 = aVar.f6206n;
            if (bArr2 != null) {
                while (i11 < i12) {
                    int i13 = i10 % length;
                    bArr2[i11] = (byte) (bArr2[i11] ^ bArr[i13]);
                    i11++;
                    i10 = i13 + 1;
                }
            }
            long j11 = aVar.f6203k;
            c cVar = aVar.f6200h;
            h.g(cVar);
            if (!(j11 != cVar.f6199i)) {
                throw new IllegalStateException("no more bytes".toString());
            }
            j10 = aVar.f6203k;
        } while (aVar.Y(j10 == -1 ? 0L : j10 + ((long) (aVar.f6206n - aVar.f6205m))) != -1);
    }

    public final void validateCloseCode(int i10) {
        String strCloseCodeExceptionMessage = closeCodeExceptionMessage(i10);
        if (strCloseCodeExceptionMessage == null) {
            return;
        }
        h.g(strCloseCodeExceptionMessage);
        throw new IllegalArgumentException(strCloseCodeExceptionMessage.toString());
    }
}
