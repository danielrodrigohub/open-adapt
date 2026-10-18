.class public abstract Lna/b;
.super Ljava/lang/Object;
.source "BaseServiceApi.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public a:Lokhttp3/OkHttpClient;

.field public b:Ljava/lang/String;

.field public final c:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://api.nike.com"

    .line 2
    iput-object v0, p0, Lna/b;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lna/b;->c:Lokhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public final c(Lqd/l;)Lokhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lokhttp3/Request$Builder;",
            "+",
            "Lokhttp3/Request$Builder;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 2
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "charset"

    const-string v2, "utf-8"

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept-Charset"

    .line 4
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 5
    sget-object v1, Lv9/t;->a:Lv9/t;

    invoke-virtual {v1}, Lv9/t;->c()Lma/a;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lma/a;->a:Lv9/c;

    invoke-interface {v1}, Lv9/c;->b()Lqd/a;

    move-result-object v1

    invoke-interface {v1}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 8
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Request$Builder;

    .line 10
    instance-of v0, p1, Lokhttp3/Request$Builder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final d()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lna/b;->a:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "okHttpClient"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
