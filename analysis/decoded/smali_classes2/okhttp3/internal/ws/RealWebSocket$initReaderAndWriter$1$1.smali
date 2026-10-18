.class final Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;
.super Lrd/o;
.source "RealWebSocket.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $pingIntervalNanos:J

.field public final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Lokhttp3/internal/ws/RealWebSocket;J)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    iput-wide p2, p0, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;->$pingIntervalNanos:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 2

    .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket;->writePingFrame$okhttp()V

    .line 3
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;->$pingIntervalNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/ws/RealWebSocket$initReaderAndWriter$1$1;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
