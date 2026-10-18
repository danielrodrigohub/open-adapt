package com.newrelic.agent.android.instrumentation.io;

import java.util.EventObject;

/* JADX INFO: loaded from: classes.dex */
public final class StreamCompleteEvent extends EventObject {
    private static final long serialVersionUID = 1;
    private final long bytes;
    private final Exception exception;

    public StreamCompleteEvent(Object obj, long j10, Exception exc) {
        super(obj);
        this.bytes = j10;
        this.exception = exc;
    }

    public long getBytes() {
        return this.bytes;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean isError() {
        return this.exception != null;
    }

    public StreamCompleteEvent(Object obj, long j10) {
        this(obj, j10, null);
    }
}
