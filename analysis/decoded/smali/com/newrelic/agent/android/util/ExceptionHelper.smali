.class public Lcom/newrelic/agent/android/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/type/HarvestErrorCodes;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionToErrorCode(Ljava/lang/Exception;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "ExceptionHelper: exception "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to error code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 4
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/16 p0, -0x3ee

    goto :goto_1

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const/16 p0, -0x3e9

    goto :goto_1

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_2

    const/16 p0, -0x3ec

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_3

    const/16 p0, -0x3e8

    goto :goto_1

    .line 8
    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    const/16 p0, -0x4b0

    goto :goto_1

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_5

    const/16 p0, -0x44c

    goto :goto_1

    .line 10
    :cond_5
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_6

    const/16 p0, -0x3fd

    goto :goto_1

    .line 11
    :cond_6
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_7

    const-string v0, "IOException"

    .line 12
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_7
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_8

    const-string v0, "RuntimeException"

    .line 14
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_8
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/Exception;)V

    .line 2
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 3
    sget-object v2, Lcom/newrelic/agent/android/util/ExceptionHelper;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceClass()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getSourceMethod()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 5
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v3, v1

    const/4 p0, 0x4

    aput-object p1, v3, p0

    .line 6
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getExceptionClass()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v3, v1

    .line 7
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v3, v1

    const-string p0, "ExceptionHelper: %s:%s(%s:%s) %s[%s] %s"

    .line 8
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Lcom/newrelic/agent/android/harvest/AgentHealthException;Ljava/lang/String;)V

    return-void
.end method
