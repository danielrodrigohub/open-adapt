.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lokhttp3/ResponseBody;

.field private cacheResponse:Lokhttp3/Response;

.field private code:I

.field private exchange:Lokhttp3/internal/connection/Exchange;

.field private handshake:Lokhttp3/Handshake;

.field private headers:Lokhttp3/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lokhttp3/Response;

.field private priorResponse:Lokhttp3/Response;

.field private protocol:Lokhttp3/Protocol;

.field private receivedResponseAtMillis:J

.field private request:Lokhttp3/Request;

.field private sentRequestAtMillis:J

.field private trailersFn:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 3
    invoke-static {}, Lokhttp3/internal/_UtilCommonKt;->getCommonEmptyResponse()Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 4
    sget-object v0, Lokhttp3/Response$Builder$trailersFn$1;->INSTANCE:Lokhttp3/Response$Builder$trailersFn$1;

    iput-object v0, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    .line 5
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 8
    invoke-static {}, Lokhttp3/internal/_UtilCommonKt;->getCommonEmptyResponse()Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 9
    sget-object v0, Lokhttp3/Response$Builder$trailersFn$1;->INSTANCE:Lokhttp3/Response$Builder$trailersFn$1;

    iput-object v0, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    .line 10
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 11
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 12
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 16
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 17
    invoke-virtual {p1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 18
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 19
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 21
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 22
    invoke-virtual {p1}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 23
    invoke-static {p1}, Lokhttp3/Response;->access$getTrailersFn$p(Lokhttp3/Response;)Lqd/a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lokhttp3/internal/_ResponseCommonKt;->commonAddHeader(Lokhttp3/Response$Builder;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonBody(Lokhttp3/Response$Builder;Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lokhttp3/Response;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v5, v0, Lokhttp3/Response$Builder;->code:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-object v2, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    if-eqz v3, :cond_2

    .line 4
    iget-object v4, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    iget-object v6, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 6
    iget-object v1, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v7

    .line 7
    iget-object v8, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 8
    iget-object v9, v0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 9
    iget-object v10, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 10
    iget-object v11, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 11
    iget-wide v12, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 12
    iget-wide v14, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 13
    iget-object v1, v0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    move-object/from16 v16, v1

    .line 14
    iget-object v1, v0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    move-object/from16 v17, v1

    .line 15
    new-instance v18, Lokhttp3/Response;

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;Lqd/a;)V

    return-object v18

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "code < 0: "

    .line 19
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    iget v2, v0, Lokhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonCacheResponse(Lokhttp3/Response$Builder;Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public code(I)Lokhttp3/Response$Builder;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonCode(Lokhttp3/Response$Builder;I)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final getBody$okhttp()Lokhttp3/ResponseBody;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public final getCacheResponse$okhttp()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getCode$okhttp()I
    .locals 1

    iget v0, p0, Lokhttp3/Response$Builder;->code:I

    return v0
.end method

.method public final getExchange$okhttp()Lokhttp3/internal/connection/Exchange;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public final getHandshake$okhttp()Lokhttp3/Handshake;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final getHeaders$okhttp()Lokhttp3/Headers$Builder;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final getMessage$okhttp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkResponse$okhttp()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getPriorResponse$okhttp()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public final getProtocol$okhttp()Lokhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public final getReceivedResponseAtMillis$okhttp()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public final getRequest$okhttp()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public final getSentRequestAtMillis$okhttp()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public final getTrailersFn$okhttp()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    return-object v0
.end method

.method public handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lokhttp3/internal/_ResponseCommonKt;->commonHeader(Lokhttp3/Response$Builder;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonHeaders(Lokhttp3/Response$Builder;Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final initExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    .locals 1

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 2
    new-instance v0, Lokhttp3/Response$Builder$initExchange$1;

    invoke-direct {v0, p1}, Lokhttp3/Response$Builder$initExchange$1;-><init>(Lokhttp3/internal/connection/Exchange;)V

    iput-object v0, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    return-void
.end method

.method public message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonMessage(Lokhttp3/Response$Builder;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonNetworkResponse(Lokhttp3/Response$Builder;Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonPriorResponse(Lokhttp3/Response$Builder;Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonProtocol(Lokhttp3/Response$Builder;Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    .locals 0

    iput-wide p1, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonRemoveHeader(Lokhttp3/Response$Builder;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonRequest(Lokhttp3/Response$Builder;Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    .locals 0

    iput-wide p1, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method

.method public final setBody$okhttp(Lokhttp3/ResponseBody;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    return-void
.end method

.method public final setCacheResponse$okhttp(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setCode$okhttp(I)V
    .locals 0

    iput p1, p0, Lokhttp3/Response$Builder;->code:I

    return-void
.end method

.method public final setExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-void
.end method

.method public final setHandshake$okhttp(Lokhttp3/Handshake;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-void
.end method

.method public final setHeaders$okhttp(Lokhttp3/Headers$Builder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final setMessage$okhttp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    return-void
.end method

.method public final setNetworkResponse$okhttp(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setPriorResponse$okhttp(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setProtocol$okhttp(Lokhttp3/Protocol;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    return-void
.end method

.method public final setReceivedResponseAtMillis$okhttp(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method public final setRequest$okhttp(Lokhttp3/Request;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    return-void
.end method

.method public final setSentRequestAtMillis$okhttp(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-void
.end method

.method public final setTrailersFn$okhttp(Lqd/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lokhttp3/Headers;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Response$Builder;->trailersFn:Lqd/a;

    return-void
.end method

.method public trailers(Lqd/a;)Lokhttp3/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lokhttp3/Headers;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    const-string v0, "trailersFn"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokhttp3/internal/_ResponseCommonKt;->commonTrailers(Lokhttp3/Response$Builder;Lqd/a;)Lokhttp3/Response$Builder;

    move-result-object p1

    return-object p1
.end method
