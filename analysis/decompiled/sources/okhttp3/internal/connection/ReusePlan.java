package okhttp3.internal.connection;

import p4.h;

/* JADX INFO: compiled from: ReusePlan.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ReusePlan implements RoutePlanner.Plan {
    private final RealConnection connection;
    private final boolean isReady;

    public ReusePlan(RealConnection realConnection) {
        h.j(realConnection, "connection");
        this.connection = realConnection;
        this.isReady = true;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.ConnectResult mo165connectTcp() {
        return (RoutePlanner.ConnectResult) connectTcp();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.ConnectResult mo166connectTlsEtc() {
        return (RoutePlanner.ConnectResult) connectTlsEtc();
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess */
    public RealConnection mo163handleSuccess() {
        return this.connection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.isReady;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo164retry() {
        return (RoutePlanner.Plan) retry();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo162cancel() {
        throw new IllegalStateException("unexpected cancel".toString());
    }

    public Void connectTcp() {
        throw new IllegalStateException("already connected".toString());
    }

    public Void connectTlsEtc() {
        throw new IllegalStateException("already connected".toString());
    }

    public Void retry() {
        throw new IllegalStateException("unexpected retry".toString());
    }
}
