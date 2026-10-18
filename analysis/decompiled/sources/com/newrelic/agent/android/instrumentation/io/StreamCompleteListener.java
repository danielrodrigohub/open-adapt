package com.newrelic.agent.android.instrumentation.io;

/* JADX INFO: loaded from: classes.dex */
public interface StreamCompleteListener {
    void streamComplete(StreamCompleteEvent streamCompleteEvent);

    void streamError(StreamCompleteEvent streamCompleteEvent);
}
