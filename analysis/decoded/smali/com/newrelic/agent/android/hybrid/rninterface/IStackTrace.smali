.class public interface abstract Lcom/newrelic/agent/android/hybrid/rninterface/IStackTrace;
.super Ljava/lang/Object;
.source "IStackTrace.java"


# virtual methods
.method public abstract getBuildId()Ljava/lang/String;
.end method

.method public abstract getCustomAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStackId()Ljava/lang/String;
.end method

.method public abstract getStackTraceException()Lcom/newrelic/agent/android/hybrid/rninterface/IStackTraceException;
.end method

.method public abstract getStackType()Ljava/lang/String;
.end method

.method public abstract getStacks()[Lcom/newrelic/agent/android/hybrid/rninterface/IStack;
.end method

.method public abstract isFatal()Z
.end method
