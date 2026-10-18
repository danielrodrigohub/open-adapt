.class public final Lsa/a;
.super Ljava/lang/Object;
.source "AdaptKitOAuthInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final a:Lsa/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsa/a;

    invoke-direct {v0}, Lsa/a;-><init>()V

    sput-object v0, Lsa/a;->a:Lsa/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
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

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    if-ge v3, v4, :cond_7

    .line 4
    sget-object v4, Lv9/t;->a:Lv9/t;

    invoke-virtual {v4}, Lv9/t;->c()Lma/a;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lma/a;->a:Lv9/c;

    invoke-interface {v4}, Lv9/c;->c()Lqd/a;

    move-result-object v4

    invoke-interface {v4}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_0

    const-string v5, "request"

    .line 6
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->queryParameterNames()Ljava/util/Set;

    move-result-object v6

    const-string v7, "access_token"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "(?i)access_token=[^&]+"

    .line 10
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "compile(pattern)"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "access_token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "input"

    .line 12
    invoke-static {v0, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "replacement"

    invoke-static {v8, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v0, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    instance-of v6, v0, Lokhttp3/Request$Builder;

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    .line 15
    :cond_2
    :goto_1
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Authorization"

    .line 16
    invoke-virtual {v0, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Bearer "

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    invoke-static {v6, v7}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v6, :cond_6

    .line 17
    invoke-virtual {v0, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6, v7}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 18
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 21
    instance-of v4, v0, Lokhttp3/Request$Builder;

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v0

    .line 22
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 23
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method
