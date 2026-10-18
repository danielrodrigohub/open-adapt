.class final Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;
.super Lrd/o;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;
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


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;

    invoke-direct {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;->INSTANCE:Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$readResponseHeaders$responseBuilder$1;->invoke()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/Headers;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trailers not available"

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
