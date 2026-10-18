.class public interface abstract Lcom/newrelic/agent/android/distributedtracing/TraceFacade;
.super Ljava/lang/Object;
.source "TraceFacade.java"


# virtual methods
.method public abstract setConfiguration(Lcom/newrelic/agent/android/distributedtracing/TraceConfiguration;)V
.end method

.method public abstract setTraceListener(Lcom/newrelic/agent/android/distributedtracing/TraceListener;)V
.end method

.method public abstract startTrace(Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lcom/newrelic/agent/android/distributedtracing/TraceContext;
.end method
