.class final Lokhttp3/Response$Builder$initExchange$1;
.super Lrd/o;
.source "Response.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Response$Builder;->initExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lokhttp3/Headers;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $exchange:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder$initExchange$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response$Builder$initExchange$1;->invoke()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/Headers;
    .locals 1

    .line 2
    iget-object v0, p0, Lokhttp3/Response$Builder$initExchange$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->trailers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method
