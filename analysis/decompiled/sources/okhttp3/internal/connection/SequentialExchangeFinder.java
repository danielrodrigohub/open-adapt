package okhttp3.internal.connection;

import java.io.IOException;
import p4.h;

/* JADX INFO: compiled from: SequentialExchangeFinder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SequentialExchangeFinder implements ExchangeFinder {
    private final RoutePlanner routePlanner;

    public SequentialExchangeFinder(RoutePlanner routePlanner) {
        h.j(routePlanner, "routePlanner");
        this.routePlanner = routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() throws Throwable {
        IOException iOException = null;
        while (!getRoutePlanner().isCanceled()) {
            try {
                RoutePlanner.Plan plan = getRoutePlanner().plan();
                if (!plan.isReady()) {
                    RoutePlanner.ConnectResult connectResultMo165connectTcp = plan.mo165connectTcp();
                    if (connectResultMo165connectTcp.isSuccess()) {
                        connectResultMo165connectTcp = plan.mo166connectTlsEtc();
                    }
                    RoutePlanner.Plan planComponent2 = connectResultMo165connectTcp.component2();
                    Throwable thComponent3 = connectResultMo165connectTcp.component3();
                    if (thComponent3 != null) {
                        throw thComponent3;
                    }
                    if (planComponent2 != null) {
                        getRoutePlanner().getDeferredPlans().m(planComponent2);
                    }
                }
                return plan.mo163handleSuccess();
            } catch (IOException e10) {
                if (iOException == null) {
                    iOException = e10;
                } else {
                    h.b(iOException, e10);
                }
                if (!RoutePlanner.hasNext$default(getRoutePlanner(), null, 1, null)) {
                    throw iOException;
                }
            }
        }
        throw new IOException("Canceled");
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }
}
