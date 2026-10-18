.class public final Lvc/f;
.super Ljava/lang/Object;
.source "OAuthRefreshInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public final a:I

.field public final b:Lvc/a;


# direct methods
.method public constructor <init>(Lvc/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lvc/f;->a:I

    iput-object p1, p0, Lvc/f;->b:Lvc/a;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_5

    iget v4, p0, Lvc/f;->a:I

    if-ge v3, v4, :cond_5

    .line 4
    iget-object v4, p0, Lvc/f;->b:Lvc/a;

    invoke-interface {v4}, Lvc/a;->a()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_0

    const-string v5, "request"

    .line 5
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Authorization"

    .line 6
    invoke-virtual {v0, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Bearer "

    const/4 v8, 0x0

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_4

    .line 7
    invoke-virtual {v0, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6, v7}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 8
    :goto_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 10
    invoke-static {v7, v4}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 11
    instance-of v4, v0, Lokhttp3/Request$Builder;

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    .line 12
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 13
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_0

    :cond_5
    return-object v1
.end method
