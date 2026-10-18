package com.newrelic.agent.android.unity;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class UnityException extends RuntimeException {
    private String sourceExceptionType;

    public UnityException() {
        this.sourceExceptionType = null;
    }

    public void appendStackFrame(StackTraceElement stackTraceElement) {
        StackTraceElement[] stackTrace = getStackTrace();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[stackTrace.length + 1];
        for (int i10 = 0; i10 < stackTrace.length; i10++) {
            stackTraceElementArr[i10] = stackTrace[i10];
        }
        stackTraceElementArr[stackTrace.length] = stackTraceElement;
        setStackTrace(stackTraceElementArr);
    }

    public void setSourceExceptionType(String str) {
        this.sourceExceptionType = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return TextUtils.isEmpty(this.sourceExceptionType) ? getClass().getName() : this.sourceExceptionType;
    }

    public UnityException(String str, String str2) {
        super(str2);
        this.sourceExceptionType = str;
    }

    public UnityException(String str) {
        super(str);
        this.sourceExceptionType = null;
    }

    public UnityException(String str, StackTraceElement[] stackTraceElementArr) {
        super(str);
        this.sourceExceptionType = null;
        setStackTrace(stackTraceElementArr);
    }

    public void appendStackFrame(String str, String str2, String str3, int i10) {
        StackTraceElement stackTraceElement = new StackTraceElement(str, str2, str3, i10);
        StackTraceElement[] stackTrace = getStackTrace();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[stackTrace.length + 1];
        for (int i11 = 0; i11 < stackTrace.length; i11++) {
            stackTraceElementArr[i11] = stackTrace[i11];
        }
        stackTraceElementArr[stackTrace.length] = stackTraceElement;
        setStackTrace(stackTraceElementArr);
    }
}
