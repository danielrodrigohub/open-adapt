package com.newrelic.agent.android.instrumentation.io;

/* JADX INFO: loaded from: classes.dex */
public interface StreamCompleteListenerSource {
    void addStreamCompleteListener(StreamCompleteListener streamCompleteListener);

    void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener);
}
