package com.newrelic.agent.android.hybrid;

import com.newrelic.agent.android.hybrid.rninterface.IStackTraceException;

/* JADX INFO: loaded from: classes.dex */
public class StackTraceException implements IStackTraceException {
    private final String cause;
    private final String name;

    public StackTraceException(String str, String str2) {
        this.name = str;
        this.cause = str2;
    }

    @Override // com.newrelic.agent.android.hybrid.rninterface.IStackTraceException
    public String getCause() {
        return this.cause;
    }

    @Override // com.newrelic.agent.android.hybrid.rninterface.IStackTraceException
    public String getExceptionName() {
        return this.name;
    }
}
