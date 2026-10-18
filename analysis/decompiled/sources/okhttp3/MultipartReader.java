package okhttp3;

import androidx.fragment.app.r0;
import de.c;
import de.f;
import de.g;
import de.j0;
import de.k0;
import de.w;
import de.y;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http1.HeadersReader;
import rd.h;

/* JADX INFO: compiled from: MultipartReader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final y afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final g crlfDashDashBoundary;
    private PartSource currentPart;
    private final g dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final f source;

    /* JADX INFO: compiled from: MultipartReader.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final y getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    /* JADX INFO: compiled from: MultipartReader.kt */
    public static final class Part implements Closeable {
        private final f body;
        private final Headers headers;

        public Part(Headers headers, f fVar) {
            p4.h.j(headers, "headers");
            p4.h.j(fVar, "body");
            this.headers = headers;
            this.body = fVar;
        }

        public final f body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.body.close();
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    /* JADX INFO: compiled from: MultipartReader.kt */
    public final class PartSource implements j0 {
        private final k0 timeout = new k0();

        public PartSource() {
        }

        @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (p4.h.c(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // de.j0
        public long read(c cVar, long j10) {
            p4.h.j(cVar, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            if (!p4.h.c(MultipartReader.this.currentPart, this)) {
                throw new IllegalStateException("closed".toString());
            }
            k0 k0VarTimeout = MultipartReader.this.source.timeout();
            k0 k0Var = this.timeout;
            MultipartReader multipartReader = MultipartReader.this;
            long jTimeoutNanos = k0VarTimeout.timeoutNanos();
            k0.b bVar = k0.Companion;
            long jTimeoutNanos2 = k0Var.timeoutNanos();
            long jTimeoutNanos3 = k0VarTimeout.timeoutNanos();
            Objects.requireNonNull(bVar);
            if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
                jTimeoutNanos2 = jTimeoutNanos3;
            }
            k0VarTimeout.timeout(jTimeoutNanos2, TimeUnit.NANOSECONDS);
            if (!k0VarTimeout.hasDeadline()) {
                if (k0Var.hasDeadline()) {
                    k0VarTimeout.deadlineNanoTime(k0Var.deadlineNanoTime());
                }
                try {
                    long jCurrentPartBytesRemaining = multipartReader.currentPartBytesRemaining(j10);
                    return jCurrentPartBytesRemaining == 0 ? -1L : multipartReader.source.read(cVar, jCurrentPartBytesRemaining);
                } finally {
                    k0VarTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (k0Var.hasDeadline()) {
                        k0VarTimeout.clearDeadline();
                    }
                }
            }
            long jDeadlineNanoTime = k0VarTimeout.deadlineNanoTime();
            if (k0Var.hasDeadline()) {
                k0VarTimeout.deadlineNanoTime(Math.min(k0VarTimeout.deadlineNanoTime(), k0Var.deadlineNanoTime()));
            }
            try {
                long jCurrentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(j10);
                return jCurrentPartBytesRemaining2 == 0 ? -1L : multipartReader.source.read(cVar, jCurrentPartBytesRemaining2);
            } finally {
                k0VarTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (k0Var.hasDeadline()) {
                    k0VarTimeout.deadlineNanoTime(jDeadlineNanoTime);
                }
            }
        }

        @Override // de.j0
        public k0 timeout() {
            return this.timeout;
        }
    }

    static {
        y.a aVar = y.f6279j;
        g.a aVar2 = g.f6227k;
        afterBoundaryOptions = aVar.b(aVar2.c("\r\n"), aVar2.c("--"), aVar2.c(" "), aVar2.c("\t"));
    }

    public MultipartReader(f fVar, String str) throws IOException {
        p4.h.j(fVar, "source");
        p4.h.j(str, "boundary");
        this.source = fVar;
        this.boundary = str;
        c cVar = new c();
        cVar.F0("--");
        cVar.F0(str);
        this.dashDashBoundary = cVar.i();
        c cVar2 = new c();
        cVar2.F0("\r\n--");
        cVar2.F0(str);
        this.crlfDashDashBoundary = cVar2.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j10) throws IOException {
        this.source.T(this.crlfDashDashBoundary.j());
        c cVarB = this.source.b();
        g gVar = this.crlfDashDashBoundary;
        Objects.requireNonNull(cVarB);
        p4.h.j(gVar, "bytes");
        long jJ0 = cVarB.j0(gVar, 0L);
        return jJ0 == -1 ? Math.min(j10, (this.source.b().f6199i - ((long) this.crlfDashDashBoundary.j())) + 1) : Math.min(j10, jJ0);
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.a0(0L, this.dashDashBoundary)) {
            this.source.a(this.dashDashBoundary.j());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(8192L);
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                this.source.a(jCurrentPartBytesRemaining);
            }
            this.source.a(this.crlfDashDashBoundary.j());
        }
        boolean z10 = false;
        while (true) {
            int iV = this.source.V(afterBoundaryOptions);
            if (iV == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iV == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(headers, w.b(partSource));
            }
            if (iV == 1) {
                if (z10) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iV == 2 || iV == 3) {
                z10 = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody responseBody) throws IOException {
        String strParameter;
        p4.h.j(responseBody, "response");
        f fVarSource = responseBody.source();
        MediaType mediaTypeContentType = responseBody.contentType();
        if (mediaTypeContentType != null && (strParameter = mediaTypeContentType.parameter("boundary")) != null) {
            this(fVarSource, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
