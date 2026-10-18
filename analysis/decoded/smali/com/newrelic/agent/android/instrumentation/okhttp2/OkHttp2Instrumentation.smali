.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;
.super Ljava/lang/Object;
.source "OkHttp2Instrumentation.java"


# static fields
.field public static final CACHED_RESPONSE_CLASS:Ljava/lang/String; = "com.squareup.okhttp.Cache$CacheResponseBody"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static body(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 3
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    instance-of v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;

    .line 5
    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.squareup.okhttp.Cache$CacheResponseBody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p0, v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/PrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static build(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request;
    .locals 1
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    new-instance v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;-><init>(Lcom/squareup/okhttp/Request$Builder;)V

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/RequestBuilderExtension;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    new-instance v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/ResponseBuilderExtension;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    return-object v0
.end method

.method public static newCall(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 4
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DistributedTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->getInstance()Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/distributedtracing/DistributedTracing;->startTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setTrace(Lcom/newrelic/agent/android/distributedtracing/TraceContext;)V

    .line 5
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->setDistributedTraceHeaders(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Call;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2Instrumentation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp2/CallExtension;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Call;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    return-object v1
.end method

.method public static open(Lcom/squareup/okhttp/OkUrlFactory;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        isStatic = false
        scope = "com.squareup.okhttp.OkUrlFactory"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-direct {p1, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1

    :cond_0
    const-string v0, "https"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p1, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    invoke-direct {p1, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method
