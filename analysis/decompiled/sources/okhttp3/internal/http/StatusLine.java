package okhttp3.internal.http;

import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Protocol;
import okhttp3.Response;
import rd.h;
import yd.n;
import yd.o;

/* JADX INFO: compiled from: StatusLine.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StatusLine {
    public static final Companion Companion = new Companion(null);
    public final int code;
    public final String message;
    public final Protocol protocol;

    /* JADX INFO: compiled from: StatusLine.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final StatusLine get(Response response) {
            p4.h.j(response, "response");
            return new StatusLine(response.protocol(), response.code(), response.message());
        }

        public final StatusLine parse(String str) throws IOException {
            Protocol protocol;
            String strSubstring;
            p4.h.j(str, "statusLine");
            int i10 = 9;
            if (o.g0(str, "HTTP/1.", false)) {
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException(d.c("Unexpected status line: ", str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException(d.c("Unexpected status line: ", str));
                    }
                    protocol = Protocol.HTTP_1_1;
                }
            } else if (o.g0(str, "ICY ", false)) {
                protocol = Protocol.HTTP_1_0;
                i10 = 4;
            } else {
                if (!o.g0(str, "SOURCETABLE ", false)) {
                    throw new ProtocolException(d.c("Unexpected status line: ", str));
                }
                protocol = Protocol.HTTP_1_1;
                i10 = 12;
            }
            int i11 = i10 + 3;
            if (str.length() < i11) {
                throw new ProtocolException(d.c("Unexpected status line: ", str));
            }
            String strSubstring2 = str.substring(i10, i11);
            p4.h.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            Integer numW = n.W(strSubstring2);
            if (numW == null) {
                throw new ProtocolException(d.c("Unexpected status line: ", str));
            }
            int iIntValue = numW.intValue();
            if (str.length() <= i11) {
                strSubstring = "";
            } else {
                if (str.charAt(i11) != ' ') {
                    throw new ProtocolException(d.c("Unexpected status line: ", str));
                }
                strSubstring = str.substring(i10 + 4);
                p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            }
            return new StatusLine(protocol, iIntValue, strSubstring);
        }
    }

    public StatusLine(Protocol protocol, int i10, String str) {
        p4.h.j(protocol, "protocol");
        p4.h.j(str, "message");
        this.protocol = protocol;
        this.code = i10;
        this.message = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.protocol == Protocol.HTTP_1_0) {
            sb2.append("HTTP/1.0");
        } else {
            sb2.append("HTTP/1.1");
        }
        sb2.append(SafeJsonPrimitive.NULL_CHAR);
        sb2.append(this.code);
        sb2.append(SafeJsonPrimitive.NULL_CHAR);
        sb2.append(this.message);
        String string = sb2.toString();
        p4.h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
