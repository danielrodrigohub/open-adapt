package okhttp3.internal.http2;

import a0.b;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import de.c;
import de.e;
import de.f;
import de.g;
import de.w;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import p4.h;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;
    public static final Companion Companion = new Companion(null);
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextStreamId;
    private final Settings okHttpSettings;
    private Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    private final Socket socket;
    private final Map<Integer, Http2Stream> streams;
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    /* JADX INFO: renamed from: okhttp3.internal.http2.Http2Connection$1, reason: invalid class name */
    /* JADX INFO: compiled from: Http2Connection.kt */
    public static final class AnonymousClass1 extends o implements a<Long> {
        public final /* synthetic */ long $pingIntervalNanos;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j10) {
            super(0);
            this.$pingIntervalNanos = j10;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // qd.a
        public final Long invoke() {
            boolean z10;
            Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                if (http2Connection.intervalPongsReceived < http2Connection.intervalPingsSent) {
                    z10 = true;
                } else {
                    http2Connection.intervalPingsSent++;
                    z10 = false;
                }
            }
            if (z10) {
                Http2Connection.this.failConnection(null);
                return -1L;
            }
            Http2Connection.this.writePing(false, 1, 0);
            return Long.valueOf(this.$pingIntervalNanos);
        }
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    public static final class Builder {
        private boolean client;
        public String connectionName;
        private Listener listener;
        private int pingIntervalMillis;
        private PushObserver pushObserver;
        public e sink;
        public Socket socket;
        public f source;
        private final TaskRunner taskRunner;

        public Builder(boolean z10, TaskRunner taskRunner) {
            h.j(taskRunner, "taskRunner");
            this.client = z10;
            this.taskRunner = taskRunner;
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.pushObserver = PushObserver.CANCEL;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, f fVar, e eVar, int i10, Object obj) throws IOException {
            if ((i10 & 2) != 0) {
                str = _UtilJvmKt.peerName(socket);
            }
            if ((i10 & 4) != 0) {
                fVar = w.b(w.g(socket));
            }
            if ((i10 & 8) != 0) {
                eVar = w.a(w.e(socket));
            }
            return builder.socket(socket, str, fVar, eVar);
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }

        public final boolean getClient$okhttp() {
            return this.client;
        }

        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            h.C("connectionName");
            throw null;
        }

        public final Listener getListener$okhttp() {
            return this.listener;
        }

        public final int getPingIntervalMillis$okhttp() {
            return this.pingIntervalMillis;
        }

        public final PushObserver getPushObserver$okhttp() {
            return this.pushObserver;
        }

        public final e getSink$okhttp() {
            e eVar = this.sink;
            if (eVar != null) {
                return eVar;
            }
            h.C("sink");
            throw null;
        }

        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket != null) {
                return socket;
            }
            h.C("socket");
            throw null;
        }

        public final f getSource$okhttp() {
            f fVar = this.source;
            if (fVar != null) {
                return fVar;
            }
            h.C("source");
            throw null;
        }

        public final TaskRunner getTaskRunner$okhttp() {
            return this.taskRunner;
        }

        public final Builder listener(Listener listener) {
            h.j(listener, "listener");
            this.listener = listener;
            return this;
        }

        public final Builder pingIntervalMillis(int i10) {
            this.pingIntervalMillis = i10;
            return this;
        }

        public final Builder pushObserver(PushObserver pushObserver) {
            h.j(pushObserver, "pushObserver");
            this.pushObserver = pushObserver;
            return this;
        }

        public final void setClient$okhttp(boolean z10) {
            this.client = z10;
        }

        public final void setConnectionName$okhttp(String str) {
            h.j(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setListener$okhttp(Listener listener) {
            h.j(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i10) {
            this.pingIntervalMillis = i10;
        }

        public final void setPushObserver$okhttp(PushObserver pushObserver) {
            h.j(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(e eVar) {
            h.j(eVar, "<set-?>");
            this.sink = eVar;
        }

        public final void setSocket$okhttp(Socket socket) {
            h.j(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(f fVar) {
            h.j(fVar, "<set-?>");
            this.source = fVar;
        }

        public final Builder socket(Socket socket) throws IOException {
            h.j(socket, "socket");
            return socket$default(this, socket, null, null, null, 14, null);
        }

        public final Builder socket(Socket socket, String str) throws IOException {
            h.j(socket, "socket");
            h.j(str, "peerName");
            return socket$default(this, socket, str, null, null, 12, null);
        }

        public final Builder socket(Socket socket, String str, f fVar) throws IOException {
            h.j(socket, "socket");
            h.j(str, "peerName");
            h.j(fVar, "source");
            return socket$default(this, socket, str, fVar, null, 8, null);
        }

        public final Builder socket(Socket socket, String str, f fVar, e eVar) throws IOException {
            String strC;
            h.j(socket, "socket");
            h.j(str, "peerName");
            h.j(fVar, "source");
            h.j(eVar, "sink");
            setSocket$okhttp(socket);
            if (this.client) {
                strC = _UtilJvmKt.okHttpName + SafeJsonPrimitive.NULL_CHAR + str;
            } else {
                strC = d.c("MockWebServer ", str);
            }
            setConnectionName$okhttp(strC);
            setSource$okhttp(fVar);
            setSink$okhttp(eVar);
            return this;
        }
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    public static abstract class Listener {
        public static final Companion Companion = new Companion(null);
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) throws IOException {
                h.j(http2Stream, "stream");
                http2Stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        /* JADX INFO: compiled from: Http2Connection.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(rd.h hVar) {
                this();
            }
        }

        public void onSettings(Http2Connection http2Connection, Settings settings) {
            h.j(http2Connection, "connection");
            h.j(settings, "settings");
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    public final class ReaderRunnable implements Http2Reader.Handler, a<fd.o> {
        private final Http2Reader reader;
        public final /* synthetic */ Http2Connection this$0;

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            h.j(http2Reader, "reader");
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i10, String str, g gVar, String str2, int i11, long j10) {
            h.j(str, "origin");
            h.j(gVar, "protocol");
            h.j(str2, "host");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24 */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4, types: [T, okhttp3.internal.http2.Settings] */
        public final void applyAndAckSettings(boolean z10, Settings settings) {
            ?? r10;
            long initialWindowSize;
            int i10;
            Http2Stream[] http2StreamArr;
            Http2Stream[] http2StreamArr2;
            Settings settings2 = settings;
            h.j(settings2, "settings");
            rd.w wVar = new rd.w();
            Http2Writer writer = this.this$0.getWriter();
            Http2Connection http2Connection = this.this$0;
            synchronized (writer) {
                synchronized (http2Connection) {
                    Settings peerSettings = http2Connection.getPeerSettings();
                    if (z10) {
                        r10 = settings2;
                    } else {
                        Settings settings3 = new Settings();
                        settings3.merge(peerSettings);
                        settings3.merge(settings2);
                        r10 = settings3;
                    }
                    wVar.f14795h = r10;
                    initialWindowSize = ((long) r10.getInitialWindowSize()) - ((long) peerSettings.getInitialWindowSize());
                    if (initialWindowSize == 0 || http2Connection.getStreams$okhttp().isEmpty()) {
                        http2StreamArr = null;
                    } else {
                        Object[] array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                        http2StreamArr = (Http2Stream[]) array;
                    }
                    http2StreamArr2 = http2StreamArr;
                    http2Connection.setPeerSettings((Settings) wVar.f14795h);
                    TaskQueue.execute$default(http2Connection.settingsListenerQueue, http2Connection.getConnectionName$okhttp() + " onSettings", 0L, false, new Http2Connection$ReaderRunnable$applyAndAckSettings$1$1$2(http2Connection, wVar), 6, null);
                }
                try {
                    http2Connection.getWriter().applyAndAckSettings((Settings) wVar.f14795h);
                } catch (IOException e10) {
                    http2Connection.failConnection(e10);
                }
            }
            if (http2StreamArr2 != null) {
                for (Http2Stream http2Stream : http2StreamArr2) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(initialWindowSize);
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z10, int i10, f fVar, int i11) throws IOException {
            h.j(fVar, "source");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushDataLater$okhttp(i10, fVar, i11, z10);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i10);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(i10, ErrorCode.PROTOCOL_ERROR);
                long j10 = i11;
                this.this$0.updateConnectionFlowControl$okhttp(j10);
                fVar.a(j10);
                return;
            }
            stream.receiveData(fVar, i11);
            if (z10) {
                stream.receiveHeaders(_UtilJvmKt.EMPTY_HEADERS, true);
            }
        }

        public final Http2Reader getReader$okhttp() {
            return this.reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i10, ErrorCode errorCode, g gVar) {
            int i11;
            Object[] array;
            h.j(errorCode, "errorCode");
            h.j(gVar, "debugData");
            gVar.j();
            Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                http2Connection.isShutdown = true;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.getId() > i10 && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z10, int i10, int i11, List<Header> list) {
            h.j(list, "headerBlock");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushHeadersLater$okhttp(i10, list, z10);
                return;
            }
            Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                Http2Stream stream = http2Connection.getStream(i10);
                if (stream != null) {
                    stream.receiveHeaders(_UtilJvmKt.toHeaders(list), z10);
                    return;
                }
                if (http2Connection.isShutdown) {
                    return;
                }
                if (i10 <= http2Connection.getLastGoodStreamId$okhttp()) {
                    return;
                }
                if (i10 % 2 == http2Connection.getNextStreamId$okhttp() % 2) {
                    return;
                }
                Http2Stream http2Stream = new Http2Stream(i10, http2Connection, false, z10, _UtilJvmKt.toHeaders(list));
                http2Connection.setLastGoodStreamId$okhttp(i10);
                http2Connection.getStreams$okhttp().put(Integer.valueOf(i10), http2Stream);
                TaskQueue.execute$default(http2Connection.taskRunner.newQueue(), http2Connection.getConnectionName$okhttp() + '[' + i10 + "] onStream", 0L, false, new Http2Connection$ReaderRunnable$headers$1$1(http2Connection, http2Stream), 6, null);
            }
        }

        @Override // qd.a
        public /* bridge */ /* synthetic */ fd.o invoke() throws Throwable {
            invoke2();
            return fd.o.f7408a;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z10, int i10, int i11) {
            if (!z10) {
                TaskQueue.execute$default(this.this$0.writerQueue, this.this$0.getConnectionName$okhttp() + " ping", 0L, false, new Http2Connection$ReaderRunnable$ping$2(this.this$0, i10, i11), 6, null);
                return;
            }
            Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                try {
                    if (i10 == 1) {
                        http2Connection.intervalPongsReceived++;
                    } else if (i10 == 2) {
                        http2Connection.degradedPongsReceived++;
                    } else if (i10 == 3) {
                        http2Connection.awaitPongsReceived++;
                        http2Connection.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i10, int i11, int i12, boolean z10) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i10, int i11, List<Header> list) {
            h.j(list, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(i11, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i10, ErrorCode errorCode) {
            h.j(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushResetLater$okhttp(i10, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream$okhttp = this.this$0.removeStream$okhttp(i10);
            if (http2StreamRemoveStream$okhttp != null) {
                http2StreamRemoveStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z10, Settings settings) {
            h.j(settings, "settings");
            TaskQueue.execute$default(this.this$0.writerQueue, this.this$0.getConnectionName$okhttp() + " applyAndAckSettings", 0L, false, new Http2Connection$ReaderRunnable$settings$1(this, z10, settings), 6, null);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i10, long j10) {
            if (i10 == 0) {
                Http2Connection http2Connection = this.this$0;
                synchronized (http2Connection) {
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + j10;
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i10);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j10);
                }
            }
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e10 = null;
            try {
                this.reader.readConnectionPreface(this);
                while (this.reader.nextFrame(false, this)) {
                }
                errorCode = ErrorCode.NO_ERROR;
                try {
                    try {
                        this.this$0.close$okhttp(errorCode, ErrorCode.CANCEL, null);
                    } catch (IOException e11) {
                        e10 = e11;
                        ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                        this.this$0.close$okhttp(errorCode3, errorCode3, e10);
                    }
                } catch (Throwable th) {
                    th = th;
                    this.this$0.close$okhttp(errorCode, errorCode2, e10);
                    _UtilCommonKt.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e12) {
                e10 = e12;
                errorCode = errorCode2;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                this.this$0.close$okhttp(errorCode, errorCode2, e10);
                _UtilCommonKt.closeQuietly(this.reader);
                throw th;
            }
            _UtilCommonKt.closeQuietly(this.reader);
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        settings.set(5, Http2.INITIAL_MAX_FRAME_SIZE);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(Builder builder) {
        h.j(builder, "builder");
        boolean client$okhttp = builder.getClient$okhttp();
        this.client = client$okhttp;
        this.listener = builder.getListener$okhttp();
        this.streams = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        this.nextStreamId = builder.getClient$okhttp() ? 3 : 2;
        TaskRunner taskRunner$okhttp = builder.getTaskRunner$okhttp();
        this.taskRunner = taskRunner$okhttp;
        TaskQueue taskQueueNewQueue = taskRunner$okhttp.newQueue();
        this.writerQueue = taskQueueNewQueue;
        this.pushQueue = taskRunner$okhttp.newQueue();
        this.settingsListenerQueue = taskRunner$okhttp.newQueue();
        this.pushObserver = builder.getPushObserver$okhttp();
        Settings settings = new Settings();
        if (builder.getClient$okhttp()) {
            settings.set(7, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        this.okHttpSettings = settings;
        Settings settings2 = DEFAULT_SETTINGS;
        this.peerSettings = settings2;
        this.writeBytesMaximum = settings2.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), client$okhttp);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), client$okhttp));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis$okhttp() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis$okhttp());
            taskQueueNewQueue.schedule(d.c(connectionName$okhttp, " ping"), nanos, new AnonymousClass1(nanos));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void failConnection(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        close$okhttp(errorCode, errorCode, iOException);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z10, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        http2Connection.start(z10);
    }

    public final synchronized void awaitPong() throws InterruptedException {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i10;
        h.j(errorCode, "connectionCode");
        h.j(errorCode2, "streamCode");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(this);
            throw new AssertionError(sbC.toString());
        }
        try {
            shutdown(errorCode);
        } catch (IOException unused) {
        }
        Object[] array = null;
        synchronized (this) {
            if (!this.streams.isEmpty()) {
                array = this.streams.values().toArray(new Http2Stream[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                this.streams.clear();
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            this.socket.close();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public final void flush() throws IOException {
        this.writer.flush();
    }

    public final boolean getClient$okhttp() {
        return this.client;
    }

    public final String getConnectionName$okhttp() {
        return this.connectionName;
    }

    public final int getLastGoodStreamId$okhttp() {
        return this.lastGoodStreamId;
    }

    public final Listener getListener$okhttp() {
        return this.listener;
    }

    public final int getNextStreamId$okhttp() {
        return this.nextStreamId;
    }

    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    public final synchronized Http2Stream getStream(int i10) {
        return this.streams.get(Integer.valueOf(i10));
    }

    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final synchronized boolean isHealthy(long j10) {
        if (this.isShutdown) {
            return false;
        }
        return this.degradedPongsReceived >= this.degradedPingsSent || j10 < this.degradedPongDeadlineNs;
    }

    public final Http2Stream newStream(List<Header> list, boolean z10) throws IOException {
        h.j(list, "requestHeaders");
        return newStream(0, list, z10);
    }

    public final synchronized int openStreamCount() {
        return this.streams.size();
    }

    public final void pushDataLater$okhttp(int i10, f fVar, int i11, boolean z10) throws IOException {
        h.j(fVar, "source");
        c cVar = new c();
        long j10 = i11;
        fVar.T(j10);
        fVar.read(cVar, j10);
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + i10 + "] onData", 0L, false, new Http2Connection$pushDataLater$1(this, i10, cVar, i11, z10), 6, null);
    }

    public final void pushHeadersLater$okhttp(int i10, List<Header> list, boolean z10) {
        h.j(list, "requestHeaders");
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + i10 + "] onHeaders", 0L, false, new Http2Connection$pushHeadersLater$1(this, i10, list, z10), 6, null);
    }

    public final void pushRequestLater$okhttp(int i10, List<Header> list) {
        h.j(list, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i10))) {
                writeSynResetLater$okhttp(i10, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i10));
            TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + i10 + "] onRequest", 0L, false, new Http2Connection$pushRequestLater$2(this, i10, list), 6, null);
        }
    }

    public final void pushResetLater$okhttp(int i10, ErrorCode errorCode) {
        h.j(errorCode, "errorCode");
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + i10 + "] onReset", 0L, false, new Http2Connection$pushResetLater$1(this, i10, errorCode), 6, null);
    }

    public final Http2Stream pushStream(int i10, List<Header> list, boolean z10) throws IOException {
        h.j(list, "requestHeaders");
        if (!this.client) {
            return newStream(i10, list, z10);
        }
        throw new IllegalStateException("Client cannot push requests.".toString());
    }

    public final boolean pushedStream$okhttp(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public final synchronized Http2Stream removeStream$okhttp(int i10) {
        Http2Stream http2StreamRemove;
        http2StreamRemove = this.streams.remove(Integer.valueOf(i10));
        notifyAll();
        return http2StreamRemove;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j10 = this.degradedPongsReceived;
            long j11 = this.degradedPingsSent;
            if (j10 < j11) {
                return;
            }
            this.degradedPingsSent = j11 + 1;
            this.degradedPongDeadlineNs = System.nanoTime() + ((long) DEGRADED_PONG_TIMEOUT_NS);
            TaskQueue.execute$default(this.writerQueue, a1.f.d(new StringBuilder(), this.connectionName, " ping"), 0L, false, new Http2Connection$sendDegradedPingLater$2(this), 6, null);
        }
    }

    public final void setLastGoodStreamId$okhttp(int i10) {
        this.lastGoodStreamId = i10;
    }

    public final void setNextStreamId$okhttp(int i10) {
        this.nextStreamId = i10;
    }

    public final void setPeerSettings(Settings settings) {
        h.j(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void setSettings(Settings settings) throws IOException {
        h.j(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
            }
            this.writer.settings(settings);
        }
    }

    public final void shutdown(ErrorCode errorCode) throws IOException {
        h.j(errorCode, AnalyticsAttribute.STATUS_CODE_ATTRIBUTE);
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, _UtilCommonKt.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void start() throws IOException {
        start$default(this, false, 1, null);
    }

    public final void start(boolean z10) throws IOException {
        if (z10) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        TaskQueue.execute$default(this.taskRunner.newQueue(), this.connectionName, 0L, false, this.readerRunnable, 6, null);
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long j10) {
        long j11 = this.readBytesTotal + j10;
        this.readBytesTotal = j11;
        long j12 = j11 - this.readBytesAcknowledged;
        if (j12 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater$okhttp(0, j12);
            this.readBytesAcknowledged += j12;
        }
    }

    public final void writeData(int i10, boolean z10, c cVar, long j10) throws IOException {
        long j11;
        long j12;
        int iMin;
        long j13;
        if (j10 == 0) {
            this.writer.data(z10, i10, cVar, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        j11 = this.writeBytesTotal;
                        j12 = this.writeBytesMaximum;
                        if (j11 >= j12) {
                            if (!this.streams.containsKey(Integer.valueOf(i10))) {
                                throw new IOException("stream closed");
                            }
                            wait();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j10, j12 - j11), this.writer.maxDataLength());
                j13 = iMin;
                this.writeBytesTotal += j13;
            }
            j10 -= j13;
            this.writer.data(z10 && j10 == 0, i10, cVar, iMin);
        }
    }

    public final void writeHeaders$okhttp(int i10, boolean z10, List<Header> list) throws IOException {
        h.j(list, "alternating");
        this.writer.headers(z10, i10, list);
    }

    public final void writePing(boolean z10, int i10, int i11) {
        try {
            this.writer.ping(z10, i10, i11);
        } catch (IOException e10) {
            failConnection(e10);
        }
    }

    public final void writePingAndAwaitPong() throws InterruptedException {
        writePing();
        awaitPong();
    }

    public final void writeSynReset$okhttp(int i10, ErrorCode errorCode) throws IOException {
        h.j(errorCode, AnalyticsAttribute.STATUS_CODE_ATTRIBUTE);
        this.writer.rstStream(i10, errorCode);
    }

    public final void writeSynResetLater$okhttp(int i10, ErrorCode errorCode) {
        h.j(errorCode, "errorCode");
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i10 + "] writeSynReset", 0L, false, new Http2Connection$writeSynResetLater$1(this, i10, errorCode), 6, null);
    }

    public final void writeWindowUpdateLater$okhttp(int i10, long j10) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i10 + "] windowUpdate", 0L, false, new Http2Connection$writeWindowUpdateLater$1(this, i10, j10), 6, null);
    }

    private final Http2Stream newStream(int i10, List<Header> list, boolean z10) throws IOException {
        int i11;
        Http2Stream http2Stream;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.writer) {
            synchronized (this) {
                if (this.nextStreamId > 1073741823) {
                    shutdown(ErrorCode.REFUSED_STREAM);
                }
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                i11 = this.nextStreamId;
                this.nextStreamId = i11 + 2;
                http2Stream = new Http2Stream(i11, this, z12, false, null);
                z11 = !z10 || this.writeBytesTotal >= this.writeBytesMaximum || http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum();
                if (http2Stream.isOpen()) {
                    this.streams.put(Integer.valueOf(i11), http2Stream);
                }
            }
            if (i10 == 0) {
                this.writer.headers(z12, i11, list);
            } else {
                if (!(true ^ this.client)) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs".toString());
                }
                this.writer.pushPromise(i10, i11, list);
            }
        }
        if (z11) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public final void writePing() throws InterruptedException {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }
}
