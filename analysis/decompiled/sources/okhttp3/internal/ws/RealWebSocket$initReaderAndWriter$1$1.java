package okhttp3.internal.ws;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: RealWebSocket.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RealWebSocket$initReaderAndWriter$1$1 extends o implements a<Long> {
    public final /* synthetic */ long $pingIntervalNanos;
    public final /* synthetic */ RealWebSocket this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealWebSocket$initReaderAndWriter$1$1(RealWebSocket realWebSocket, long j10) {
        super(0);
        this.this$0 = realWebSocket;
        this.$pingIntervalNanos = j10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // qd.a
    public final Long invoke() {
        this.this$0.writePingFrame$okhttp();
        return Long.valueOf(this.$pingIntervalNanos);
    }
}
