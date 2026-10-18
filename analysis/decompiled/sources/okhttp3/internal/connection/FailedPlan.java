package okhttp3.internal.connection;

import p4.h;

/* JADX INFO: compiled from: FailedPlan.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FailedPlan implements RoutePlanner.Plan {
    private final boolean isReady;
    private final RoutePlanner.ConnectResult result;

    public FailedPlan(Throwable th) {
        h.j(th, "e");
        this.result = new RoutePlanner.ConnectResult(this, null, th, 2, null);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp */
    public RoutePlanner.ConnectResult mo165connectTcp() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc */
    public RoutePlanner.ConnectResult mo166connectTlsEtc() {
        return this.result;
    }

    public final RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RealConnection mo163handleSuccess() {
        return (RealConnection) handleSuccess();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.isReady;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo164retry() {
        return (RoutePlanner.Plan) retry();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo162cancel() {
        throw new IllegalStateException("unexpected cancel".toString());
    }

    public Void handleSuccess() {
        throw new IllegalStateException("unexpected call".toString());
    }

    public Void retry() {
        throw new IllegalStateException("unexpected retry".toString());
    }
}
