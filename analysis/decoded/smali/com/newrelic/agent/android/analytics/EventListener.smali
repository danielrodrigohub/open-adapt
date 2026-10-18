.class public interface abstract Lcom/newrelic/agent/android/analytics/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# virtual methods
.method public abstract onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
.end method

.method public abstract onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
.end method

.method public abstract onEventFlush()V
.end method

.method public abstract onEventOverflow(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
.end method

.method public abstract onEventQueueSizeExceeded(I)V
.end method

.method public abstract onEventQueueTimeExceeded(I)V
.end method

.method public abstract onShutdown()V
.end method

.method public abstract onStart(Lcom/newrelic/agent/android/analytics/EventManager;)V
.end method
