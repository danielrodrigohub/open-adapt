package com.newrelic.agent.android.hybrid.rninterface;

/* JADX INFO: loaded from: classes.dex */
public interface IStackFrame {
    String getClassName();

    int getColumnNumber();

    String getFileName();

    int getLineNumber();

    String getMethodName();

    String getRawSourceLine();
}
