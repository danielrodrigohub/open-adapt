package okhttp3.internal.http2;

import a0.b;
import androidx.fragment.app.r0;
import de.a;
import de.c;
import de.f;
import de.h0;
import de.j0;
import de.k0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import rd.h;

/* JADX INFO: compiled from: Http2Stream.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Stream {
    public static final Companion Companion = new Companion(null);
    public static final long EMIT_BUFFER_SIZE = 16384;
    private final Http2Connection connection;
    private ErrorCode errorCode;
    private IOException errorException;
    private boolean hasResponseHeaders;
    private final ArrayDeque<Headers> headersQueue;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f12568id;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final StreamTimeout readTimeout;
    private final FramingSink sink;
    private final FramingSource source;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final StreamTimeout writeTimeout;

    /* JADX INFO: compiled from: Http2Stream.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Http2Stream.kt */
    public final class FramingSource implements j0 {
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private Headers trailers;
        private final c receiveBuffer = new c();
        private final c readBuffer = new c();

        public FramingSource(long j10, boolean z10) {
            this.maxByteCount = j10;
            this.finished = z10;
        }

        private final void updateConnectionFlowControl(long j10) {
            Http2Stream http2Stream = Http2Stream.this;
            if (!_UtilJvmKt.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                Http2Stream.this.getConnection().updateConnectionFlowControl$okhttp(j10);
                return;
            }
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(http2Stream);
            throw new AssertionError(sbC.toString());
        }

        @Override // de.j0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j10;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.closed = true;
                c cVar = this.readBuffer;
                j10 = cVar.f6199i;
                cVar.x();
                http2Stream.notifyAll();
            }
            if (j10 > 0) {
                updateConnectionFlowControl(j10);
            }
            Http2Stream.this.cancelStreamIfNecessary$okhttp();
        }

        public final boolean getClosed$okhttp() {
            return this.closed;
        }

        public final boolean getFinished$okhttp() {
            return this.finished;
        }

        public final c getReadBuffer() {
            return this.readBuffer;
        }

        public final c getReceiveBuffer() {
            return this.receiveBuffer;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        @Override // de.j0
        public long read(c cVar, long j10) throws IOException {
            boolean z10;
            long j11;
            p4.h.j(cVar, "sink");
            long j12 = 0;
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(r0.f("byteCount < 0: ", j10).toString());
            }
            while (true) {
                IOException errorException$okhttp = null;
                Http2Stream http2Stream = Http2Stream.this;
                synchronized (http2Stream) {
                    boolean zDoReadTimeout = http2Stream.doReadTimeout();
                    if (zDoReadTimeout) {
                        http2Stream.getReadTimeout$okhttp().enter();
                    }
                    try {
                        if (http2Stream.getErrorCode$okhttp() != null && !this.finished && (errorException$okhttp = http2Stream.getErrorException$okhttp()) == null) {
                            ErrorCode errorCode$okhttp = http2Stream.getErrorCode$okhttp();
                            p4.h.g(errorCode$okhttp);
                            errorException$okhttp = new StreamResetException(errorCode$okhttp);
                        }
                        if (this.closed) {
                            throw new IOException("stream closed");
                        }
                        c cVar2 = this.readBuffer;
                        long j13 = cVar2.f6199i;
                        if (j13 > j12) {
                            long j14 = cVar2.read(cVar, Math.min(j10, j13));
                            http2Stream.setReadBytesTotal$okhttp(http2Stream.getReadBytesTotal() + j14);
                            long readBytesTotal = http2Stream.getReadBytesTotal() - http2Stream.getReadBytesAcknowledged();
                            if (errorException$okhttp == null && readBytesTotal >= http2Stream.getConnection().getOkHttpSettings().getInitialWindowSize() / 2) {
                                http2Stream.getConnection().writeWindowUpdateLater$okhttp(http2Stream.getId(), readBytesTotal);
                                http2Stream.setReadBytesAcknowledged$okhttp(http2Stream.getReadBytesTotal());
                            }
                            j11 = j14;
                            z10 = false;
                        } else {
                            if (this.finished || errorException$okhttp != null) {
                                z10 = false;
                            } else {
                                http2Stream.waitForIo$okhttp();
                                z10 = true;
                            }
                            j11 = -1;
                        }
                        if (zDoReadTimeout) {
                            http2Stream.getReadTimeout$okhttp().exitAndThrowIfTimedOut();
                        }
                    } catch (Throwable th) {
                        if (zDoReadTimeout) {
                            http2Stream.getReadTimeout$okhttp().exitAndThrowIfTimedOut();
                        }
                        throw th;
                    }
                }
                if (!z10) {
                    if (j11 != -1) {
                        updateConnectionFlowControl(j11);
                        return j11;
                    }
                    if (errorException$okhttp == null) {
                        return -1L;
                    }
                    throw errorException$okhttp;
                }
                j12 = 0;
            }
        }

        public final void receive$okhttp(f fVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            long j11;
            p4.h.j(fVar, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbC = b.c("Thread ");
                sbC.append(Thread.currentThread().getName());
                sbC.append(" MUST NOT hold lock on ");
                sbC.append(http2Stream);
                throw new AssertionError(sbC.toString());
            }
            while (j10 > 0) {
                synchronized (Http2Stream.this) {
                    z10 = this.finished;
                    z11 = true;
                    z12 = this.readBuffer.f6199i + j10 > this.maxByteCount;
                }
                if (z12) {
                    fVar.a(j10);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    fVar.a(j10);
                    return;
                }
                long j12 = fVar.read(this.receiveBuffer, j10);
                if (j12 == -1) {
                    throw new EOFException();
                }
                j10 -= j12;
                Http2Stream http2Stream2 = Http2Stream.this;
                synchronized (http2Stream2) {
                    if (this.closed) {
                        c cVar = this.receiveBuffer;
                        j11 = cVar.f6199i;
                        cVar.x();
                    } else {
                        c cVar2 = this.readBuffer;
                        if (cVar2.f6199i != 0) {
                            z11 = false;
                        }
                        cVar2.s(this.receiveBuffer);
                        if (z11) {
                            http2Stream2.notifyAll();
                        }
                        j11 = 0;
                    }
                }
                if (j11 > 0) {
                    updateConnectionFlowControl(j11);
                }
            }
        }

        public final void setClosed$okhttp(boolean z10) {
            this.closed = z10;
        }

        public final void setFinished$okhttp(boolean z10) {
            this.finished = z10;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // de.j0
        public k0 timeout() {
            return Http2Stream.this.getReadTimeout$okhttp();
        }
    }

    /* JADX INFO: compiled from: Http2Stream.kt */
    public final class StreamTimeout extends a {
        public StreamTimeout() {
        }

        public final void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // de.a
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // de.a
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.getConnection().sendDegradedPingLater$okhttp();
        }
    }

    public Http2Stream(int i10, Http2Connection http2Connection, boolean z10, boolean z11, Headers headers) {
        p4.h.j(http2Connection, "connection");
        this.f12568id = i10;
        this.connection = http2Connection;
        this.writeBytesMaximum = http2Connection.getPeerSettings().getInitialWindowSize();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.headersQueue = arrayDeque;
        this.source = new FramingSource(http2Connection.getOkHttpSettings().getInitialWindowSize(), z11);
        this.sink = new FramingSink(z10);
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        if (headers == null) {
            if (!isLocallyInitiated()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else {
            if (!(!isLocallyInitiated())) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            }
            arrayDeque.add(headers);
        }
    }

    private final boolean closeInternal(ErrorCode errorCode, IOException iOException) {
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.getFinished$okhttp() && this.sink.getFinished()) {
                return false;
            }
            this.errorCode = errorCode;
            this.errorException = iOException;
            notifyAll();
            this.connection.removeStream$okhttp(this.f12568id);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean doReadTimeout() {
        return !this.connection.getClient$okhttp() || this.sink.getClosed() || this.sink.getFinished();
    }

    public static /* synthetic */ Headers takeHeaders$default(Http2Stream http2Stream, boolean z10, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return http2Stream.takeHeaders(z10);
    }

    public final void addBytesToWriteWindow(long j10) {
        this.writeBytesMaximum += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public final void cancelStreamIfNecessary$okhttp() throws IOException {
        boolean z10;
        boolean zIsOpen;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this) {
            z10 = !this.source.getFinished$okhttp() && this.source.getClosed$okhttp() && (this.sink.getFinished() || this.sink.getClosed());
            zIsOpen = isOpen();
        }
        if (z10) {
            close(ErrorCode.CANCEL, null);
        } else {
            if (zIsOpen) {
                return;
            }
            this.connection.removeStream$okhttp(this.f12568id);
        }
    }

    public final void checkOutNotClosed$okhttp() throws IOException {
        if (this.sink.getClosed()) {
            throw new IOException("stream closed");
        }
        if (this.sink.getFinished()) {
            throw new IOException("stream finished");
        }
        if (this.errorCode != null) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            p4.h.g(errorCode);
            throw new StreamResetException(errorCode);
        }
    }

    public final void close(ErrorCode errorCode, IOException iOException) throws IOException {
        p4.h.j(errorCode, "rstStatusCode");
        if (closeInternal(errorCode, iOException)) {
            this.connection.writeSynReset$okhttp(this.f12568id, errorCode);
        }
    }

    public final void closeLater(ErrorCode errorCode) {
        p4.h.j(errorCode, "errorCode");
        if (closeInternal(errorCode, null)) {
            this.connection.writeSynResetLater$okhttp(this.f12568id, errorCode);
        }
    }

    public final void enqueueTrailers(Headers headers) {
        p4.h.j(headers, "trailers");
        synchronized (this) {
            boolean z10 = true;
            if (!(!this.sink.getFinished())) {
                throw new IllegalStateException("already finished".toString());
            }
            if (headers.size() == 0) {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalArgumentException("trailers.size() == 0".toString());
            }
            this.sink.setTrailers(headers);
        }
    }

    public final Http2Connection getConnection() {
        return this.connection;
    }

    public final synchronized ErrorCode getErrorCode$okhttp() {
        return this.errorCode;
    }

    public final IOException getErrorException$okhttp() {
        return this.errorException;
    }

    public final int getId() {
        return this.f12568id;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final StreamTimeout getReadTimeout$okhttp() {
        return this.readTimeout;
    }

    public final h0 getSink() {
        synchronized (this) {
            if (!(this.hasResponseHeaders || isLocallyInitiated())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
        }
        return this.sink;
    }

    public final FramingSink getSink$okhttp() {
        return this.sink;
    }

    public final j0 getSource() {
        return this.source;
    }

    public final FramingSource getSource$okhttp() {
        return this.source;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final StreamTimeout getWriteTimeout$okhttp() {
        return this.writeTimeout;
    }

    public final boolean isLocallyInitiated() {
        return this.connection.getClient$okhttp() == ((this.f12568id & 1) == 1);
    }

    public final synchronized boolean isOpen() {
        if (this.errorCode != null) {
            return false;
        }
        return ((this.source.getFinished$okhttp() || this.source.getClosed$okhttp()) && (this.sink.getFinished() || this.sink.getClosed()) && this.hasResponseHeaders) ? false : true;
    }

    public final k0 readTimeout() {
        return this.readTimeout;
    }

    public final void receiveData(f fVar, int i10) throws IOException {
        p4.h.j(fVar, "source");
        if (!_UtilJvmKt.assertionsEnabled || !Thread.holdsLock(this)) {
            this.source.receive$okhttp(fVar, i10);
            return;
        }
        StringBuilder sbC = b.c("Thread ");
        sbC.append(Thread.currentThread().getName());
        sbC.append(" MUST NOT hold lock on ");
        sbC.append(this);
        throw new AssertionError(sbC.toString());
    }

    public final void receiveHeaders(Headers headers, boolean z10) {
        boolean zIsOpen;
        p4.h.j(headers, "headers");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this) {
            if (this.hasResponseHeaders && headers.get(Header.RESPONSE_STATUS_UTF8) == null && headers.get(Header.TARGET_METHOD_UTF8) == null) {
                this.source.setTrailers(headers);
            } else {
                this.hasResponseHeaders = true;
                this.headersQueue.add(headers);
            }
            if (z10) {
                this.source.setFinished$okhttp(true);
            }
            zIsOpen = isOpen();
            notifyAll();
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream$okhttp(this.f12568id);
    }

    public final synchronized void receiveRstStream(ErrorCode errorCode) {
        p4.h.j(errorCode, "errorCode");
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    public final void setErrorCode$okhttp(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public final void setErrorException$okhttp(IOException iOException) {
        this.errorException = iOException;
    }

    public final void setReadBytesAcknowledged$okhttp(long j10) {
        this.readBytesAcknowledged = j10;
    }

    public final void setReadBytesTotal$okhttp(long j10) {
        this.readBytesTotal = j10;
    }

    public final void setWriteBytesMaximum$okhttp(long j10) {
        this.writeBytesMaximum = j10;
    }

    public final void setWriteBytesTotal$okhttp(long j10) {
        this.writeBytesTotal = j10;
    }

    public final synchronized Headers takeHeaders(boolean z10) throws IOException {
        Headers headersRemoveFirst;
        while (true) {
            boolean z11 = true;
            if (!this.headersQueue.isEmpty() || this.errorCode != null) {
                break;
            }
            if (!z10 && !doReadTimeout()) {
                z11 = false;
            }
            if (z11) {
                this.readTimeout.enter();
            }
            try {
                waitForIo$okhttp();
                if (z11) {
                    this.readTimeout.exitAndThrowIfTimedOut();
                }
            } catch (Throwable th) {
                if (z11) {
                    this.readTimeout.exitAndThrowIfTimedOut();
                }
                throw th;
            }
        }
        if (!(!this.headersQueue.isEmpty())) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            p4.h.g(errorCode);
            throw new StreamResetException(errorCode);
        }
        headersRemoveFirst = this.headersQueue.removeFirst();
        p4.h.i(headersRemoveFirst, "headersQueue.removeFirst()");
        return headersRemoveFirst;
    }

    public final synchronized Headers trailers() throws IOException {
        Headers trailers;
        if (!this.source.getFinished$okhttp() || !this.source.getReceiveBuffer().z() || !this.source.getReadBuffer().z()) {
            if (this.errorCode == null) {
                throw new IllegalStateException("too early; can't read the trailers yet");
            }
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            p4.h.g(errorCode);
            throw new StreamResetException(errorCode);
        }
        trailers = this.source.getTrailers();
        if (trailers == null) {
            trailers = _UtilJvmKt.EMPTY_HEADERS;
        }
        return trailers;
    }

    public final void waitForIo$okhttp() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final void writeHeaders(List<Header> list, boolean z10, boolean z11) throws IOException {
        boolean z12;
        p4.h.j(list, "responseHeaders");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (z10) {
                this.sink.setFinished(true);
                notifyAll();
            }
        }
        if (!z11) {
            synchronized (this.connection) {
                z12 = this.connection.getWriteBytesTotal() >= this.connection.getWriteBytesMaximum();
            }
            z11 = z12;
        }
        this.connection.writeHeaders$okhttp(this.f12568id, z10, list);
        if (z11) {
            this.connection.flush();
        }
    }

    public final k0 writeTimeout() {
        return this.writeTimeout;
    }

    /* JADX INFO: compiled from: Http2Stream.kt */
    public final class FramingSink implements h0 {
        private boolean closed;
        private boolean finished;
        private final c sendBuffer;
        private Headers trailers;

        public FramingSink(boolean z10) {
            this.finished = z10;
            this.sendBuffer = new c();
        }

        private final void emitFrame(boolean z10) throws IOException {
            long jMin;
            boolean z11;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                http2Stream.getWriteTimeout$okhttp().enter();
                while (http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum() && !this.finished && !this.closed && http2Stream.getErrorCode$okhttp() == null) {
                    try {
                        http2Stream.waitForIo$okhttp();
                    } catch (Throwable th) {
                        http2Stream.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                        throw th;
                    }
                }
                http2Stream.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                http2Stream.checkOutNotClosed$okhttp();
                jMin = Math.min(http2Stream.getWriteBytesMaximum() - http2Stream.getWriteBytesTotal(), this.sendBuffer.f6199i);
                http2Stream.setWriteBytesTotal$okhttp(http2Stream.getWriteBytesTotal() + jMin);
                z11 = z10 && jMin == this.sendBuffer.f6199i;
            }
            Http2Stream.this.getWriteTimeout$okhttp().enter();
            try {
                Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), z11, this.sendBuffer, jMin);
            } finally {
                Http2Stream.this.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
            }
        }

        @Override // de.h0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbC = b.c("Thread ");
                sbC.append(Thread.currentThread().getName());
                sbC.append(" MUST NOT hold lock on ");
                sbC.append(http2Stream);
                throw new AssertionError(sbC.toString());
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                if (this.closed) {
                    return;
                }
                boolean z10 = http2Stream2.getErrorCode$okhttp() == null;
                if (!Http2Stream.this.getSink$okhttp().finished) {
                    boolean z11 = this.sendBuffer.f6199i > 0;
                    if (this.trailers != null) {
                        while (this.sendBuffer.f6199i > 0) {
                            emitFrame(false);
                        }
                        Http2Connection connection = Http2Stream.this.getConnection();
                        int id2 = Http2Stream.this.getId();
                        Headers headers = this.trailers;
                        p4.h.g(headers);
                        connection.writeHeaders$okhttp(id2, z10, _UtilJvmKt.toHeaderList(headers));
                    } else if (z11) {
                        while (this.sendBuffer.f6199i > 0) {
                            emitFrame(true);
                        }
                    } else if (z10) {
                        Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.closed = true;
                    http2Stream3.notifyAll();
                }
                Http2Stream.this.getConnection().flush();
                Http2Stream.this.cancelStreamIfNecessary$okhttp();
            }
        }

        @Override // de.h0, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbC = b.c("Thread ");
                sbC.append(Thread.currentThread().getName());
                sbC.append(" MUST NOT hold lock on ");
                sbC.append(http2Stream);
                throw new AssertionError(sbC.toString());
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                http2Stream2.checkOutNotClosed$okhttp();
            }
            while (this.sendBuffer.f6199i > 0) {
                emitFrame(false);
                Http2Stream.this.getConnection().flush();
            }
        }

        public final boolean getClosed() {
            return this.closed;
        }

        public final boolean getFinished() {
            return this.finished;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        public final void setFinished(boolean z10) {
            this.finished = z10;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // de.h0
        public k0 timeout() {
            return Http2Stream.this.getWriteTimeout$okhttp();
        }

        @Override // de.h0
        public void write(c cVar, long j10) throws IOException {
            p4.h.j(cVar, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (!_UtilJvmKt.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                this.sendBuffer.write(cVar, j10);
                while (this.sendBuffer.f6199i >= Http2Stream.EMIT_BUFFER_SIZE) {
                    emitFrame(false);
                }
            } else {
                StringBuilder sbC = b.c("Thread ");
                sbC.append(Thread.currentThread().getName());
                sbC.append(" MUST NOT hold lock on ");
                sbC.append(http2Stream);
                throw new AssertionError(sbC.toString());
            }
        }

        public /* synthetic */ FramingSink(Http2Stream http2Stream, boolean z10, int i10, h hVar) {
            this((i10 & 1) != 0 ? false : z10);
        }
    }
}
