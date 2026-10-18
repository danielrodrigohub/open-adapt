package okhttp3.internal.connection;

import a0.b;
import gd.f;
import java.io.IOException;
import okhttp3.Address;
import okhttp3.HttpUrl;
import p4.h;

/* JADX INFO: compiled from: RoutePlanner.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface RoutePlanner {

    /* JADX INFO: compiled from: RoutePlanner.kt */
    public interface Plan {
        /* JADX INFO: renamed from: cancel */
        void mo162cancel();

        /* JADX INFO: renamed from: connectTcp */
        ConnectResult mo165connectTcp();

        /* JADX INFO: renamed from: connectTlsEtc */
        ConnectResult mo166connectTlsEtc();

        /* JADX INFO: renamed from: handleSuccess */
        RealConnection mo163handleSuccess();

        boolean isReady();

        /* JADX INFO: renamed from: retry */
        Plan mo164retry();
    }

    static /* synthetic */ boolean hasNext$default(RoutePlanner routePlanner, RealConnection realConnection, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hasNext");
        }
        if ((i10 & 1) != 0) {
            realConnection = null;
        }
        return routePlanner.hasNext(realConnection);
    }

    Address getAddress();

    f<Plan> getDeferredPlans();

    boolean hasNext(RealConnection realConnection);

    boolean isCanceled();

    Plan plan() throws IOException;

    boolean sameHostAndPort(HttpUrl httpUrl);

    /* JADX INFO: compiled from: RoutePlanner.kt */
    public static final class ConnectResult {
        private final Plan nextPlan;
        private final Plan plan;
        private final Throwable throwable;

        public ConnectResult(Plan plan, Plan plan2, Throwable th) {
            h.j(plan, "plan");
            this.plan = plan;
            this.nextPlan = plan2;
            this.throwable = th;
        }

        public static /* synthetic */ ConnectResult copy$default(ConnectResult connectResult, Plan plan, Plan plan2, Throwable th, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                plan = connectResult.plan;
            }
            if ((i10 & 2) != 0) {
                plan2 = connectResult.nextPlan;
            }
            if ((i10 & 4) != 0) {
                th = connectResult.throwable;
            }
            return connectResult.copy(plan, plan2, th);
        }

        public final Plan component1() {
            return this.plan;
        }

        public final Plan component2() {
            return this.nextPlan;
        }

        public final Throwable component3() {
            return this.throwable;
        }

        public final ConnectResult copy(Plan plan, Plan plan2, Throwable th) {
            h.j(plan, "plan");
            return new ConnectResult(plan, plan2, th);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConnectResult)) {
                return false;
            }
            ConnectResult connectResult = (ConnectResult) obj;
            return h.c(this.plan, connectResult.plan) && h.c(this.nextPlan, connectResult.nextPlan) && h.c(this.throwable, connectResult.throwable);
        }

        public final Plan getNextPlan() {
            return this.nextPlan;
        }

        public final Plan getPlan() {
            return this.plan;
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public int hashCode() {
            int iHashCode = this.plan.hashCode() * 31;
            Plan plan = this.nextPlan;
            int iHashCode2 = (iHashCode + (plan == null ? 0 : plan.hashCode())) * 31;
            Throwable th = this.throwable;
            return iHashCode2 + (th != null ? th.hashCode() : 0);
        }

        public final boolean isSuccess() {
            return this.nextPlan == null && this.throwable == null;
        }

        public String toString() {
            StringBuilder sbC = b.c("ConnectResult(plan=");
            sbC.append(this.plan);
            sbC.append(", nextPlan=");
            sbC.append(this.nextPlan);
            sbC.append(", throwable=");
            sbC.append(this.throwable);
            sbC.append(')');
            return sbC.toString();
        }

        public /* synthetic */ ConnectResult(Plan plan, Plan plan2, Throwable th, int i10, rd.h hVar) {
            this(plan, (i10 & 2) != 0 ? null : plan2, (i10 & 4) != 0 ? null : th);
        }
    }
}
