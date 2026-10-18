package okhttp3.internal.http1;

import de.f;
import java.io.IOException;
import okhttp3.Headers;
import rd.h;

/* JADX INFO: compiled from: HeadersReader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HeadersReader {
    public static final Companion Companion = new Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;
    private final f source;

    /* JADX INFO: compiled from: HeadersReader.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    public HeadersReader(f fVar) {
        p4.h.j(fVar, "source");
        this.source = fVar;
        this.headerLimit = 262144L;
    }

    public final f getSource() {
        return this.source;
    }

    public final Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String line = readLine();
            if (line.length() == 0) {
                return builder.build();
            }
            builder.addLenient$okhttp(line);
        }
    }

    public final String readLine() throws IOException {
        String strJ = this.source.J(this.headerLimit);
        this.headerLimit -= (long) strJ.length();
        return strJ;
    }
}
