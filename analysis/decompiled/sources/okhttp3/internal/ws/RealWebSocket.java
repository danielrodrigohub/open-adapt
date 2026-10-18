package okhttp3.internal.ws;

import a0.b;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import de.e;
import de.f;
import de.g;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import rd.h;

/* JADX INFO: compiled from: RealWebSocket.kt */
/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    public static final long DEFAULT_MINIMUM_DEFLATE_SIZE = 1024;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private boolean awaitingPong;
    private Call call;
    private boolean enqueuedClose;
    private WebSocketExtensions extensions;
    private boolean failed;
    private final String key;
    private final WebSocketListener listener;
    private final ArrayDeque<Object> messageAndCloseQueue;
    private long minimumDeflateSize;
    private String name;
    private final Request originalRequest;
    private final long pingIntervalMillis;
    private final ArrayDeque<g> pongQueue;
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private int receivedCloseCode;
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;
    private Streams streams;
    private TaskQueue taskQueue;
    private WebSocketWriter writer;
    private Task writerTask;
    public static final Companion Companion = new Companion(null);
    private static final List<Protocol> ONLY_HTTP1 = o.y(Protocol.HTTP_1_1);

    /* JADX INFO: compiled from: RealWebSocket.kt */
    public static final class Close {
        private final long cancelAfterCloseMillis;
        private final int code;
        private final g reason;

        public Close(int i10, g gVar, long j10) {
            this.code = i10;
            this.reason = gVar;
            this.cancelAfterCloseMillis = j10;
        }

        public final long getCancelAfterCloseMillis() {
            return this.cancelAfterCloseMillis;
        }

        public final int getCode() {
            return this.code;
        }

        public final g getReason() {
            return this.reason;
        }
    }

    /* JADX INFO: compiled from: RealWebSocket.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: RealWebSocket.kt */
    public static final class Message {
        private final g data;
        private final int formatOpcode;

        public Message(int i10, g gVar) {
            p4.h.j(gVar, "data");
            this.formatOpcode = i10;
            this.data = gVar;
        }

        public final g getData() {
            return this.data;
        }

        public final int getFormatOpcode() {
            return this.formatOpcode;
        }
    }

    /* JADX INFO: compiled from: RealWebSocket.kt */
    public static abstract class Streams implements Closeable {
        private final boolean client;
        private final e sink;
        private final f source;

        public Streams(boolean z10, f fVar, e eVar) {
            p4.h.j(fVar, "source");
            p4.h.j(eVar, "sink");
            this.client = z10;
            this.source = fVar;
            this.sink = eVar;
        }

        public final boolean getClient() {
            return this.client;
        }

        public final e getSink() {
            return this.sink;
        }

        public final f getSource() {
            return this.source;
        }
    }

    /* JADX INFO: compiled from: RealWebSocket.kt */
    public final class WriterTask extends Task {
        public WriterTask() {
            super(RealWebSocket.this.name + " writer", false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            try {
                return RealWebSocket.this.writeOneFrame$okhttp() ? 0L : -1L;
            } catch (IOException e10) {
                RealWebSocket.this.failWebSocket(e10, null);
                return -1L;
            }
        }
    }

    public RealWebSocket(TaskRunner taskRunner, Request request, WebSocketListener webSocketListener, Random random, long j10, WebSocketExtensions webSocketExtensions, long j11) {
        p4.h.j(taskRunner, "taskRunner");
        p4.h.j(request, "originalRequest");
        p4.h.j(webSocketListener, "listener");
        p4.h.j(random, "random");
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random;
        this.pingIntervalMillis = j10;
        this.extensions = webSocketExtensions;
        this.minimumDeflateSize = j11;
        this.taskQueue = taskRunner.newQueue();
        this.pongQueue = new ArrayDeque<>();
        this.messageAndCloseQueue = new ArrayDeque<>();
        this.receivedCloseCode = -1;
        if (!p4.h.c("GET", request.method())) {
            StringBuilder sbC = b.c("Request must be GET: ");
            sbC.append(request.method());
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        g.a aVar = g.f6227k;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.key = g.a.d(bArr).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValid(WebSocketExtensions webSocketExtensions) {
        if (!webSocketExtensions.unknownValues && webSocketExtensions.clientMaxWindowBits == null) {
            return webSocketExtensions.serverMaxWindowBits == null || new vd.e(8, 15).o(webSocketExtensions.serverMaxWindowBits.intValue());
        }
        return false;
    }

    private final void runWriter() {
        if (!_UtilJvmKt.assertionsEnabled || Thread.holdsLock(this)) {
            Task task = this.writerTask;
            if (task != null) {
                TaskQueue.schedule$default(this.taskQueue, task, 0L, 2, null);
                return;
            }
            return;
        }
        StringBuilder sbC = b.c("Thread ");
        sbC.append(Thread.currentThread().getName());
        sbC.append(" MUST hold lock on ");
        sbC.append(this);
        throw new AssertionError(sbC.toString());
    }

    public final void awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        p4.h.j(timeUnit, "timeUnit");
        this.taskQueue.idleLatch().await(j10, timeUnit);
    }

    @Override // okhttp3.WebSocket
    public void cancel() {
        Call call = this.call;
        p4.h.g(call);
        call.cancel();
    }

    public final void checkUpgradeSuccess$okhttp(Response response, Exchange exchange) throws IOException {
        p4.h.j(response, "response");
        if (response.code() != 101) {
            StringBuilder sbC = b.c("Expected HTTP 101 response but was '");
            sbC.append(response.code());
            sbC.append(SafeJsonPrimitive.NULL_CHAR);
            sbC.append(response.message());
            sbC.append('\'');
            throw new ProtocolException(sbC.toString());
        }
        String strHeader$default = Response.header$default(response, "Connection", null, 2, null);
        if (!yd.o.Z("Upgrade", strHeader$default)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + strHeader$default + '\'');
        }
        String strHeader$default2 = Response.header$default(response, "Upgrade", null, 2, null);
        if (!yd.o.Z("websocket", strHeader$default2)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + strHeader$default2 + '\'');
        }
        String strHeader$default3 = Response.header$default(response, "Sec-WebSocket-Accept", null, 2, null);
        String strB = g.f6227k.c(this.key + WebSocketProtocol.ACCEPT_MAGIC).u().b();
        if (p4.h.c(strB, strHeader$default3)) {
            if (exchange == null) {
                throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
            }
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strB + "' but was '" + strHeader$default3 + '\'');
    }

    @Override // okhttp3.WebSocket
    public boolean close(int i10, String str) {
        return close(i10, str, 60000L);
    }

    public final void connect(OkHttpClient okHttpClient) {
        p4.h.j(okHttpClient, "client");
        if (this.originalRequest.header("Sec-WebSocket-Extensions") != null) {
            failWebSocket(new ProtocolException("Request header not permitted: 'Sec-WebSocket-Extensions'"), null);
            return;
        }
        OkHttpClient okHttpClientBuild = okHttpClient.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        Request.Builder builderHeader = this.originalRequest.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").header("Sec-WebSocket-Extensions", "permessage-deflate");
        final Request requestBuild = !(builderHeader instanceof Request.Builder) ? builderHeader.build() : OkHttp3Instrumentation.build(builderHeader);
        RealCall realCall = new RealCall(okHttpClientBuild, requestBuild, true);
        this.call = realCall;
        realCall.enqueue(new Callback() { // from class: okhttp3.internal.ws.RealWebSocket.connect.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                p4.h.j(call, "call");
                p4.h.j(iOException, "e");
                RealWebSocket.this.failWebSocket(iOException, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                p4.h.j(call, "call");
                p4.h.j(response, "response");
                Exchange exchange = response.exchange();
                try {
                    RealWebSocket.this.checkUpgradeSuccess$okhttp(response, exchange);
                    p4.h.g(exchange);
                    Streams streamsNewWebSocketStreams = exchange.newWebSocketStreams();
                    WebSocketExtensions webSocketExtensions = WebSocketExtensions.Companion.parse(response.headers());
                    RealWebSocket.this.extensions = webSocketExtensions;
                    if (!RealWebSocket.this.isValid(webSocketExtensions)) {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        synchronized (realWebSocket) {
                            realWebSocket.messageAndCloseQueue.clear();
                            realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                        }
                    }
                    try {
                        RealWebSocket.this.initReaderAndWriter(_UtilJvmKt.okHttpName + " WebSocket " + requestBuild.url().redact(), streamsNewWebSocketStreams);
                        RealWebSocket.this.getListener$okhttp().onOpen(RealWebSocket.this, response);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e10) {
                        RealWebSocket.this.failWebSocket(e10, null);
                    }
                } catch (IOException e11) {
                    if (exchange != null) {
                        exchange.webSocketUpgradeFailed();
                    }
                    RealWebSocket.this.failWebSocket(e11, response);
                    _UtilCommonKt.closeQuietly(response);
                }
            }
        });
    }

    public final void failWebSocket(Exception exc, Response response) {
        p4.h.j(exc, "e");
        synchronized (this) {
            if (this.failed) {
                return;
            }
            this.failed = true;
            Streams streams = this.streams;
            this.streams = null;
            WebSocketReader webSocketReader = this.reader;
            this.reader = null;
            WebSocketWriter webSocketWriter = this.writer;
            this.writer = null;
            this.taskQueue.shutdown();
            try {
                this.listener.onFailure(this, exc, response);
            } finally {
                if (streams != null) {
                    _UtilCommonKt.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    _UtilCommonKt.closeQuietly(webSocketReader);
                }
                if (webSocketWriter != null) {
                    _UtilCommonKt.closeQuietly(webSocketWriter);
                }
            }
        }
    }

    public final WebSocketListener getListener$okhttp() {
        return this.listener;
    }

    public final void initReaderAndWriter(String str, Streams streams) throws IOException {
        p4.h.j(str, "name");
        p4.h.j(streams, "streams");
        WebSocketExtensions webSocketExtensions = this.extensions;
        p4.h.g(webSocketExtensions);
        synchronized (this) {
            this.name = str;
            this.streams = streams;
            this.writer = new WebSocketWriter(streams.getClient(), streams.getSink(), this.random, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(streams.getClient()), this.minimumDeflateSize);
            this.writerTask = new WriterTask();
            long j10 = this.pingIntervalMillis;
            if (j10 != 0) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(j10);
                this.taskQueue.schedule(str + " ping", nanos, new RealWebSocket$initReaderAndWriter$1$1(this, nanos));
            }
            if (!this.messageAndCloseQueue.isEmpty()) {
                runWriter();
            }
        }
        this.reader = new WebSocketReader(streams.getClient(), streams.getSource(), this, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(!streams.getClient()));
    }

    public final void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            WebSocketReader webSocketReader = this.reader;
            p4.h.g(webSocketReader);
            webSocketReader.processNextFrame();
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i10, String str) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        p4.h.j(str, "reason");
        boolean z10 = true;
        if (!(i10 != -1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        synchronized (this) {
            if (this.receivedCloseCode != -1) {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalStateException("already closed".toString());
            }
            this.receivedCloseCode = i10;
            this.receivedCloseReason = str;
            streams = null;
            if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                Streams streams2 = this.streams;
                this.streams = null;
                webSocketReader = this.reader;
                this.reader = null;
                webSocketWriter = this.writer;
                this.writer = null;
                this.taskQueue.shutdown();
                streams = streams2;
            } else {
                webSocketReader = null;
                webSocketWriter = null;
            }
        }
        try {
            this.listener.onClosing(this, i10, str);
            if (streams != null) {
                this.listener.onClosed(this, i10, str);
            }
        } finally {
            if (streams != null) {
                _UtilCommonKt.closeQuietly(streams);
            }
            if (webSocketReader != null) {
                _UtilCommonKt.closeQuietly(webSocketReader);
            }
            if (webSocketWriter != null) {
                _UtilCommonKt.closeQuietly(webSocketWriter);
            }
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(String str) throws IOException {
        p4.h.j(str, "text");
        this.listener.onMessage(this, str);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(g gVar) {
        p4.h.j(gVar, "payload");
        if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
            this.pongQueue.add(gVar);
            runWriter();
            this.receivedPingCount++;
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(g gVar) {
        p4.h.j(gVar, "payload");
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public final synchronized boolean pong(g gVar) {
        p4.h.j(gVar, "payload");
        if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
            this.pongQueue.add(gVar);
            runWriter();
            return true;
        }
        return false;
    }

    public final boolean processNextFrame() throws IOException {
        try {
            WebSocketReader webSocketReader = this.reader;
            p4.h.g(webSocketReader);
            webSocketReader.processNextFrame();
            return this.receivedCloseCode == -1;
        } catch (Exception e10) {
            failWebSocket(e10, null);
            return false;
        }
    }

    @Override // okhttp3.WebSocket
    public synchronized long queueSize() {
        return this.queueSize;
    }

    public final synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public final synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // okhttp3.WebSocket
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.WebSocket
    public boolean send(String str) {
        p4.h.j(str, "text");
        return send(g.f6227k.c(str), 1);
    }

    public final synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public final void tearDown() throws InterruptedException {
        this.taskQueue.shutdown();
        this.taskQueue.idleLatch().await(10L, TimeUnit.SECONDS);
    }

    public final boolean writeOneFrame$okhttp() throws IOException {
        Streams streams;
        String str;
        WebSocketReader webSocketReader;
        Closeable closeable;
        synchronized (this) {
            if (this.failed) {
                return false;
            }
            WebSocketWriter webSocketWriter = this.writer;
            g gVarPoll = this.pongQueue.poll();
            int i10 = -1;
            Object obj = null;
            if (gVarPoll == null) {
                Object objPoll = this.messageAndCloseQueue.poll();
                if (objPoll instanceof Close) {
                    int i11 = this.receivedCloseCode;
                    str = this.receivedCloseReason;
                    if (i11 != -1) {
                        Streams streams2 = this.streams;
                        this.streams = null;
                        webSocketReader = this.reader;
                        this.reader = null;
                        closeable = this.writer;
                        this.writer = null;
                        this.taskQueue.shutdown();
                        obj = objPoll;
                        i10 = i11;
                        streams = streams2;
                    } else {
                        long cancelAfterCloseMillis = ((Close) objPoll).getCancelAfterCloseMillis();
                        TaskQueue.execute$default(this.taskQueue, this.name + " cancel", TimeUnit.MILLISECONDS.toNanos(cancelAfterCloseMillis), false, new RealWebSocket$writeOneFrame$1$1(this), 4, null);
                        i10 = i11;
                        streams = null;
                        webSocketReader = null;
                    }
                } else {
                    if (objPoll == null) {
                        return false;
                    }
                    streams = null;
                    str = null;
                    webSocketReader = null;
                }
                closeable = webSocketReader;
                obj = objPoll;
            } else {
                streams = null;
                str = null;
                webSocketReader = null;
                closeable = null;
            }
            try {
                if (gVarPoll != null) {
                    p4.h.g(webSocketWriter);
                    webSocketWriter.writePong(gVarPoll);
                } else if (obj instanceof Message) {
                    Message message = (Message) obj;
                    p4.h.g(webSocketWriter);
                    webSocketWriter.writeMessageFrame(message.getFormatOpcode(), message.getData());
                    synchronized (this) {
                        this.queueSize -= (long) message.getData().j();
                    }
                } else {
                    if (!(obj instanceof Close)) {
                        throw new AssertionError();
                    }
                    Close close = (Close) obj;
                    p4.h.g(webSocketWriter);
                    webSocketWriter.writeClose(close.getCode(), close.getReason());
                    if (streams != null) {
                        WebSocketListener webSocketListener = this.listener;
                        p4.h.g(str);
                        webSocketListener.onClosed(this, i10, str);
                    }
                }
                if (streams != null) {
                    _UtilCommonKt.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    _UtilCommonKt.closeQuietly(webSocketReader);
                }
                if (closeable != null) {
                    _UtilCommonKt.closeQuietly(closeable);
                }
                return true;
            } catch (Throwable th) {
                if (streams != null) {
                    _UtilCommonKt.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    _UtilCommonKt.closeQuietly(webSocketReader);
                }
                if (closeable != null) {
                    _UtilCommonKt.closeQuietly(closeable);
                }
                throw th;
            }
        }
    }

    public final void writePingFrame$okhttp() {
        synchronized (this) {
            if (this.failed) {
                return;
            }
            WebSocketWriter webSocketWriter = this.writer;
            if (webSocketWriter == null) {
                return;
            }
            int i10 = this.awaitingPong ? this.sentPingCount : -1;
            this.sentPingCount++;
            this.awaitingPong = true;
            if (i10 == -1) {
                try {
                    webSocketWriter.writePing(g.f6228l);
                    return;
                } catch (IOException e10) {
                    failWebSocket(e10, null);
                    return;
                }
            }
            StringBuilder sbC = b.c("sent ping but didn't receive pong within ");
            sbC.append(this.pingIntervalMillis);
            sbC.append("ms (after ");
            sbC.append(i10 - 1);
            sbC.append(" successful ping/pongs)");
            failWebSocket(new SocketTimeoutException(sbC.toString()), null);
        }
    }

    public final synchronized boolean close(int i10, String str, long j10) {
        WebSocketProtocol.INSTANCE.validateCloseCode(i10);
        g gVarC = null;
        if (str != null) {
            gVarC = g.f6227k.c(str);
            if (!(((long) gVarC.j()) <= 123)) {
                throw new IllegalArgumentException(("reason.size() > 123: " + str).toString());
            }
        }
        if (!this.failed && !this.enqueuedClose) {
            this.enqueuedClose = true;
            this.messageAndCloseQueue.add(new Close(i10, gVarC, j10));
            runWriter();
            return true;
        }
        return false;
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(g gVar) throws IOException {
        p4.h.j(gVar, "bytes");
        this.listener.onMessage(this, gVar);
    }

    @Override // okhttp3.WebSocket
    public boolean send(g gVar) {
        p4.h.j(gVar, "bytes");
        return send(gVar, 2);
    }

    private final synchronized boolean send(g gVar, int i10) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + ((long) gVar.j()) > MAX_QUEUE_SIZE) {
                close(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, null);
                return false;
            }
            this.queueSize += (long) gVar.j();
            this.messageAndCloseQueue.add(new Message(i10, gVar));
            runWriter();
            return true;
        }
        return false;
    }
}
