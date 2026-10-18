package okhttp3.internal.ws;

import a0.b;
import java.io.IOException;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import rd.h;
import yd.n;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: WebSocketExtensions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    /* JADX INFO: compiled from: WebSocketExtensions.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:57:0x0107 A[PHI: r7 r9
          0x0107: PHI (r7v6 java.lang.Integer) = (r7v4 java.lang.Integer), (r7v4 java.lang.Integer), (r7v8 java.lang.Integer) binds: [B:51:0x00fa, B:48:0x00f1, B:32:0x00c6] A[DONT_GENERATE, DONT_INLINE]
          0x0107: PHI (r9v9 java.lang.Integer) = (r9v4 java.lang.Integer), (r9v6 java.lang.Integer), (r9v4 java.lang.Integer) binds: [B:51:0x00fa, B:48:0x00f1, B:32:0x00c6] A[DONT_GENERATE, DONT_INLINE]] */
        public final WebSocketExtensions parse(Headers headers) throws IOException {
            String strTrimSubstring;
            p4.h.j(headers, "responseHeaders");
            int size = headers.size();
            boolean z10 = false;
            Integer numW = null;
            boolean z11 = false;
            Integer numW2 = null;
            boolean z12 = false;
            boolean z13 = false;
            for (int i10 = 0; i10 < size; i10++) {
                if (o.Z(headers.name(i10), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION)) {
                    String strValue = headers.value(i10);
                    int i11 = 0;
                    while (i11 < strValue.length()) {
                        int i12 = i11;
                        int iDelimiterOffset$default = _UtilCommonKt.delimiterOffset$default(strValue, ',', i11, 0, 4, (Object) null);
                        char c10 = ';';
                        int iDelimiterOffset = _UtilCommonKt.delimiterOffset(strValue, ';', i12, iDelimiterOffset$default);
                        i11 = iDelimiterOffset + 1;
                        if (o.Z(_UtilCommonKt.trimSubstring(strValue, i12, iDelimiterOffset), "permessage-deflate")) {
                            if (z10) {
                                z13 = true;
                            }
                            while (i11 < iDelimiterOffset$default) {
                                int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(strValue, c10, i11, iDelimiterOffset$default);
                                int iDelimiterOffset3 = _UtilCommonKt.delimiterOffset(strValue, '=', i11, iDelimiterOffset2);
                                String strTrimSubstring2 = _UtilCommonKt.trimSubstring(strValue, i11, iDelimiterOffset3);
                                if (iDelimiterOffset3 < iDelimiterOffset2) {
                                    strTrimSubstring = _UtilCommonKt.trimSubstring(strValue, iDelimiterOffset3 + 1, iDelimiterOffset2);
                                    p4.h.j(strTrimSubstring, "<this>");
                                    if (strTrimSubstring.length() >= "\"".length() + "\"".length() && s.C0(strTrimSubstring, "\"") && s.k0(strTrimSubstring, "\"")) {
                                        strTrimSubstring = strTrimSubstring.substring("\"".length(), strTrimSubstring.length() - "\"".length());
                                        p4.h.i(strTrimSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                                    }
                                } else {
                                    strTrimSubstring = null;
                                }
                                i11 = iDelimiterOffset2 + 1;
                                if (o.Z(strTrimSubstring2, "client_max_window_bits")) {
                                    if (numW != null) {
                                        z13 = true;
                                    }
                                    numW = strTrimSubstring != null ? n.W(strTrimSubstring) : null;
                                    if (numW == null) {
                                        z13 = true;
                                    }
                                } else if (o.Z(strTrimSubstring2, "client_no_context_takeover")) {
                                    if (z11) {
                                        z13 = true;
                                    }
                                    if (strTrimSubstring != null) {
                                        z13 = true;
                                    }
                                    z11 = true;
                                } else if (o.Z(strTrimSubstring2, "server_max_window_bits")) {
                                    if (numW2 != null) {
                                        z13 = true;
                                    }
                                    numW2 = strTrimSubstring != null ? n.W(strTrimSubstring) : null;
                                    if (numW2 == null) {
                                        z13 = true;
                                    }
                                } else if (o.Z(strTrimSubstring2, "server_no_context_takeover")) {
                                    if (z12) {
                                        z13 = true;
                                    }
                                    if (strTrimSubstring != null) {
                                        z13 = true;
                                    }
                                    z12 = true;
                                } else {
                                    z13 = true;
                                }
                                c10 = ';';
                            }
                            z10 = true;
                        } else {
                            z13 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z10, numW, z11, numW2, z12, z13);
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public WebSocketExtensions(boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13) {
        this.perMessageDeflate = z10;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z11;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z12;
        this.unknownValues = z13;
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = webSocketExtensions.perMessageDeflate;
        }
        if ((i10 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i10 & 4) != 0) {
            z11 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z14 = z11;
        if ((i10 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i10 & 16) != 0) {
            z12 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z15 = z12;
        if ((i10 & 32) != 0) {
            z13 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z10, num3, z14, num4, z15, z13);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13) {
        return new WebSocketExtensions(z10, num, z11, num2, z12, z13);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && p4.h.c(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && p4.h.c(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        boolean z10 = this.perMessageDeflate;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        Integer num = this.clientMaxWindowBits;
        int iHashCode = (i10 + (num == null ? 0 : num.hashCode())) * 31;
        boolean z11 = this.clientNoContextTakeover;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i11 = (iHashCode + r11) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int iHashCode2 = (i11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z12 = this.serverNoContextTakeover;
        ?? r12 = z12;
        if (z12) {
            r12 = 1;
        }
        int i12 = (iHashCode2 + r12) * 31;
        boolean z13 = this.unknownValues;
        return i12 + (z13 ? 1 : z13);
    }

    public final boolean noContextTakeover(boolean z10) {
        return z10 ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public String toString() {
        StringBuilder sbC = b.c("WebSocketExtensions(perMessageDeflate=");
        sbC.append(this.perMessageDeflate);
        sbC.append(", clientMaxWindowBits=");
        sbC.append(this.clientMaxWindowBits);
        sbC.append(", clientNoContextTakeover=");
        sbC.append(this.clientNoContextTakeover);
        sbC.append(", serverMaxWindowBits=");
        sbC.append(this.serverMaxWindowBits);
        sbC.append(", serverNoContextTakeover=");
        sbC.append(this.serverNoContextTakeover);
        sbC.append(", unknownValues=");
        sbC.append(this.unknownValues);
        sbC.append(')');
        return sbC.toString();
    }

    public /* synthetic */ WebSocketExtensions(boolean z10, Integer num, boolean z11, Integer num2, boolean z12, boolean z13, int i10, h hVar) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? false : z11, (i10 & 8) == 0 ? num2 : null, (i10 & 16) != 0 ? false : z12, (i10 & 32) != 0 ? false : z13);
    }
}
