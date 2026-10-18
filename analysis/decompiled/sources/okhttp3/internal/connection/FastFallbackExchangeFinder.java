package okhttp3.internal.connection;

import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import p4.h;

/* JADX INFO: compiled from: FastFallbackExchangeFinder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {
    private final long connectDelayNanos;
    private final BlockingQueue<RoutePlanner.ConnectResult> connectResults;
    private long nextTcpConnectAtNanos;
    private final RoutePlanner routePlanner;
    private final TaskRunner taskRunner;
    private final CopyOnWriteArrayList<RoutePlanner.Plan> tcpConnectsInFlight;

    public FastFallbackExchangeFinder(RoutePlanner routePlanner, TaskRunner taskRunner) {
        h.j(routePlanner, "routePlanner");
        h.j(taskRunner, "taskRunner");
        this.routePlanner = routePlanner;
        this.taskRunner = taskRunner;
        this.connectDelayNanos = TimeUnit.MILLISECONDS.toNanos(250L);
        this.nextTcpConnectAtNanos = Long.MIN_VALUE;
        this.tcpConnectsInFlight = new CopyOnWriteArrayList<>();
        this.connectResults = taskRunner.getBackend().decorate(new LinkedBlockingDeque());
    }

    private final RoutePlanner.ConnectResult awaitTcpConnect(long j10, TimeUnit timeUnit) {
        RoutePlanner.ConnectResult connectResultPoll;
        if (this.tcpConnectsInFlight.isEmpty() || (connectResultPoll = this.connectResults.poll(j10, timeUnit)) == null) {
            return null;
        }
        this.tcpConnectsInFlight.remove(connectResultPoll.getPlan());
        return connectResultPoll;
    }

    private final void cancelInFlightConnects() {
        for (RoutePlanner.Plan plan : this.tcpConnectsInFlight) {
            plan.mo162cancel();
            RoutePlanner.Plan planMo164retry = plan.mo164retry();
            if (planMo164retry != null) {
                getRoutePlanner().getDeferredPlans().n(planMo164retry);
            }
        }
        this.tcpConnectsInFlight.clear();
    }

    private final RoutePlanner.ConnectResult launchTcpConnect() throws IOException {
        final RoutePlanner.Plan failedPlan;
        if (RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
            try {
                failedPlan = getRoutePlanner().plan();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6, null);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).getResult();
            }
            this.tcpConnectsInFlight.add(failedPlan);
            TaskQueue.schedule$default(this.taskRunner.newQueue(), new Task(_UtilJvmKt.okHttpName + " connect " + getRoutePlanner().getAddress().url().redact()) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder.launchTcpConnect.1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() throws InterruptedException {
                    RoutePlanner.ConnectResult connectResult;
                    try {
                        connectResult = failedPlan.mo165connectTcp();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(failedPlan, null, th2, 2, null);
                    }
                    if (!this.tcpConnectsInFlight.contains(failedPlan)) {
                        return -1L;
                    }
                    this.connectResults.put(connectResult);
                    return -1L;
                }
            }, 0L, 2, null);
        }
        return null;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() throws IOException {
        RoutePlanner.ConnectResult connectResultLaunchTcpConnect;
        long j10;
        IOException iOException = null;
        while (true) {
            try {
                if (!(!this.tcpConnectsInFlight.isEmpty()) && !RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
                    cancelInFlightConnects();
                    h.g(iOException);
                    throw iOException;
                }
                if (getRoutePlanner().isCanceled()) {
                    throw new IOException("Canceled");
                }
                long jNanoTime = this.taskRunner.getBackend().nanoTime();
                long j11 = this.nextTcpConnectAtNanos - jNanoTime;
                if (this.tcpConnectsInFlight.isEmpty() || j11 <= 0) {
                    connectResultLaunchTcpConnect = launchTcpConnect();
                    j10 = this.connectDelayNanos;
                    this.nextTcpConnectAtNanos = jNanoTime + j10;
                } else {
                    j10 = j11;
                    connectResultLaunchTcpConnect = null;
                }
                if (connectResultLaunchTcpConnect != null || (connectResultLaunchTcpConnect = awaitTcpConnect(j10, TimeUnit.NANOSECONDS)) != null) {
                    if (connectResultLaunchTcpConnect.isSuccess()) {
                        cancelInFlightConnects();
                        if (!connectResultLaunchTcpConnect.getPlan().isReady()) {
                            connectResultLaunchTcpConnect = connectResultLaunchTcpConnect.getPlan().mo166connectTlsEtc();
                        }
                        if (connectResultLaunchTcpConnect.isSuccess()) {
                            RealConnection realConnectionMo163handleSuccess = connectResultLaunchTcpConnect.getPlan().mo163handleSuccess();
                            cancelInFlightConnects();
                            return realConnectionMo163handleSuccess;
                        }
                    }
                    Throwable throwable = connectResultLaunchTcpConnect.getThrowable();
                    if (throwable != null) {
                        if (!(throwable instanceof IOException)) {
                            throw throwable;
                        }
                        if (iOException == null) {
                            iOException = (IOException) throwable;
                        } else {
                            h.b(iOException, throwable);
                        }
                    }
                    RoutePlanner.Plan nextPlan = connectResultLaunchTcpConnect.getNextPlan();
                    if (nextPlan != null) {
                        getRoutePlanner().getDeferredPlans().m(nextPlan);
                    }
                }
            } catch (Throwable th) {
                cancelInFlightConnects();
                throw th;
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }
}
