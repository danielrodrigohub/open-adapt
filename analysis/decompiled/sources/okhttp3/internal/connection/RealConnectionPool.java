package okhttp3.internal.connection;

import a0.b;
import a1.f;
import androidx.fragment.app.r0;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import rd.h;

/* JADX INFO: compiled from: RealConnectionPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RealConnectionPool {
    public static final Companion Companion = new Companion(null);
    private final TaskQueue cleanupQueue;
    private final RealConnectionPool$cleanupTask$1 cleanupTask;
    private final ConcurrentLinkedQueue<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;

    /* JADX INFO: compiled from: RealConnectionPool.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final RealConnectionPool get(ConnectionPool connectionPool) {
            p4.h.j(connectionPool, "connectionPool");
            return connectionPool.getDelegate$okhttp();
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner, int i10, long j10, TimeUnit timeUnit) {
        p4.h.j(taskRunner, "taskRunner");
        p4.h.j(timeUnit, "timeUnit");
        this.maxIdleConnections = i10;
        this.keepAliveDurationNs = timeUnit.toNanos(j10);
        this.cleanupQueue = taskRunner.newQueue();
        final String strD = f.d(new StringBuilder(), _UtilJvmKt.okHttpName, " ConnectionPool");
        this.cleanupTask = new Task(strD) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return this.this$0.cleanup(System.nanoTime());
            }
        };
        this.connections = new ConcurrentLinkedQueue<>();
        if (!(j10 > 0)) {
            throw new IllegalArgumentException(r0.f("keepAliveDuration <= 0: ", j10).toString());
        }
    }

    private final int pruneAndGetAllocationCount(RealConnection realConnection, long j10) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(realConnection);
            throw new AssertionError(sbC.toString());
        }
        List<Reference<RealCall>> calls = realConnection.getCalls();
        int i10 = 0;
        while (i10 < calls.size()) {
            Reference<RealCall> reference = calls.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                StringBuilder sbC2 = b.c("A connection to ");
                sbC2.append(realConnection.route().address().url());
                sbC2.append(" was leaked. Did you forget to close a response body?");
                Platform.Companion.get().logCloseableLeak(sbC2.toString(), ((RealCall.CallReference) reference).getCallStackTrace());
                calls.remove(i10);
                realConnection.setNoNewExchanges(true);
                if (calls.isEmpty()) {
                    realConnection.setIdleAtNs(j10 - this.keepAliveDurationNs);
                    return 0;
                }
            }
        }
        return calls.size();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d A[Catch: all -> 0x0054, TryCatch #1 {, blocks: (B:9:0x0026, B:12:0x002d, B:15:0x0034), top: B:37:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    /* JADX WARN: Code duplicated, block: B:15:0x0034 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #1 {, blocks: (B:9:0x0026, B:12:0x002d, B:15:0x0034), top: B:37:0x0026 }] */
    public final RealConnection callAcquirePooledConnection(boolean z10, Address address, RealCall realCall, List<Route> list, boolean z11) {
        boolean z12;
        Socket socketReleaseConnectionNoEvents$okhttp;
        p4.h.j(address, "address");
        p4.h.j(realCall, "call");
        for (RealConnection realConnection : this.connections) {
            p4.h.i(realConnection, "connection");
            synchronized (realConnection) {
                z12 = false;
                if (z11) {
                    if (realConnection.isMultiplexed$okhttp()) {
                        if (!realConnection.isEligible$okhttp(address, list)) {
                            realCall.acquireConnectionNoEvents(realConnection);
                            z12 = true;
                        }
                    }
                } else if (!realConnection.isEligible$okhttp(address, list)) {
                    realCall.acquireConnectionNoEvents(realConnection);
                    z12 = true;
                }
            }
            if (z12) {
                if (realConnection.isHealthy(z10)) {
                    return realConnection;
                }
                synchronized (realConnection) {
                    realConnection.setNoNewExchanges(true);
                    socketReleaseConnectionNoEvents$okhttp = realCall.releaseConnectionNoEvents$okhttp();
                }
                if (socketReleaseConnectionNoEvents$okhttp != null) {
                    _UtilJvmKt.closeQuietly(socketReleaseConnectionNoEvents$okhttp);
                }
            }
        }
        return null;
    }

    public final long cleanup(long j10) {
        int i10 = 0;
        long j11 = Long.MIN_VALUE;
        RealConnection realConnection = null;
        int i11 = 0;
        for (RealConnection realConnection2 : this.connections) {
            p4.h.i(realConnection2, "connection");
            synchronized (realConnection2) {
                if (pruneAndGetAllocationCount(realConnection2, j10) > 0) {
                    i11++;
                } else {
                    i10++;
                    long idleAtNs = j10 - realConnection2.getIdleAtNs();
                    if (idleAtNs > j11) {
                        realConnection = realConnection2;
                        j11 = idleAtNs;
                    }
                }
            }
        }
        long j12 = this.keepAliveDurationNs;
        if (j11 < j12 && i10 <= this.maxIdleConnections) {
            if (i10 > 0) {
                return j12 - j11;
            }
            if (i11 > 0) {
                return j12;
            }
            return -1L;
        }
        p4.h.g(realConnection);
        synchronized (realConnection) {
            if (!realConnection.getCalls().isEmpty()) {
                return 0L;
            }
            if (realConnection.getIdleAtNs() + j11 != j10) {
                return 0L;
            }
            realConnection.setNoNewExchanges(true);
            this.connections.remove(realConnection);
            _UtilJvmKt.closeQuietly(realConnection.socket());
            if (this.connections.isEmpty()) {
                this.cleanupQueue.cancelAll();
            }
            return 0L;
        }
    }

    public final boolean connectionBecameIdle(RealConnection realConnection) {
        p4.h.j(realConnection, "connection");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(realConnection);
            throw new AssertionError(sbC.toString());
        }
        if (!realConnection.getNoNewExchanges() && this.maxIdleConnections != 0) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return false;
        }
        realConnection.setNoNewExchanges(true);
        this.connections.remove(realConnection);
        if (!this.connections.isEmpty()) {
            return true;
        }
        this.cleanupQueue.cancelAll();
        return true;
    }

    public final int connectionCount() {
        return this.connections.size();
    }

    public final void evictAll() {
        Socket socket;
        Iterator<RealConnection> it = this.connections.iterator();
        p4.h.i(it, "connections.iterator()");
        while (it.hasNext()) {
            RealConnection next = it.next();
            p4.h.i(next, "connection");
            synchronized (next) {
                if (next.getCalls().isEmpty()) {
                    it.remove();
                    next.setNoNewExchanges(true);
                    socket = next.socket();
                } else {
                    socket = null;
                }
            }
            if (socket != null) {
                _UtilJvmKt.closeQuietly(socket);
            }
        }
        if (this.connections.isEmpty()) {
            this.cleanupQueue.cancelAll();
        }
    }

    public final int idleConnectionCount() {
        boolean zIsEmpty;
        ConcurrentLinkedQueue<RealConnection> concurrentLinkedQueue = this.connections;
        int i10 = 0;
        if (!(concurrentLinkedQueue instanceof Collection) || !concurrentLinkedQueue.isEmpty()) {
            for (RealConnection realConnection : concurrentLinkedQueue) {
                p4.h.i(realConnection, "it");
                synchronized (realConnection) {
                    zIsEmpty = realConnection.getCalls().isEmpty();
                }
                if (zIsEmpty && (i10 = i10 + 1) < 0) {
                    throw new ArithmeticException("Count overflow has happened.");
                }
            }
        }
        return i10;
    }

    public final void put(RealConnection realConnection) {
        p4.h.j(realConnection, "connection");
        if (!_UtilJvmKt.assertionsEnabled || Thread.holdsLock(realConnection)) {
            this.connections.add(realConnection);
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        } else {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST hold lock on ");
            sbC.append(realConnection);
            throw new AssertionError(sbC.toString());
        }
    }
}
