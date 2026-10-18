package com.newrelic.agent.android.api.v2;

/* JADX INFO: loaded from: classes.dex */
public interface TraceMachineInterface {
    long getCurrentThreadId();

    String getCurrentThreadName();

    boolean isUIThread();
}
