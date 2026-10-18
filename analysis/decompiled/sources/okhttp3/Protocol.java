package okhttp3;

import androidx.recyclerview.widget.d;
import java.io.IOException;
import rd.h;
import yd.o;

/* JADX INFO: compiled from: Protocol.kt */
/* JADX INFO: loaded from: classes.dex */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic"),
    HTTP_3("h3");

    public static final Companion Companion = new Companion(null);
    private final String protocol;

    /* JADX INFO: compiled from: Protocol.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final Protocol get(String str) throws IOException {
            p4.h.j(str, "protocol");
            Protocol protocol = Protocol.HTTP_1_0;
            if (!p4.h.c(str, protocol.protocol)) {
                protocol = Protocol.HTTP_1_1;
                if (!p4.h.c(str, protocol.protocol)) {
                    protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                    if (!p4.h.c(str, protocol.protocol)) {
                        protocol = Protocol.HTTP_2;
                        if (!p4.h.c(str, protocol.protocol)) {
                            protocol = Protocol.SPDY_3;
                            if (!p4.h.c(str, protocol.protocol)) {
                                protocol = Protocol.QUIC;
                                if (!p4.h.c(str, protocol.protocol)) {
                                    protocol = Protocol.HTTP_3;
                                    if (!o.g0(str, protocol.protocol, false)) {
                                        throw new IOException(d.c("Unexpected protocol: ", str));
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return protocol;
        }
    }

    Protocol(String str) {
        this.protocol = str;
    }

    public static final Protocol get(String str) throws IOException {
        return Companion.get(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
