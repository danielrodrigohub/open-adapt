package com.newrelic.agent.android.unity;

import com.newrelic.agent.android.NewRelic;
import com.newrelic.agent.android.crash.UncaughtExceptionHandler;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.NetworkFailure;

/* JADX INFO: loaded from: classes.dex */
public class NewRelicUnity {
    private static final String ROOT_TRACE_NAME = "Unity";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    public static void handleUnityCrash(UnityException unityException) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler == null || !(defaultUncaughtExceptionHandler instanceof UncaughtExceptionHandler)) {
            return;
        }
        defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), unityException);
    }

    public static void noticeNetworkFailure(String str, String str2, long j10, long j11, int i10, String str3) {
        NewRelic.noticeNetworkFailure(str, str2, j10, j11, NetworkFailure.fromErrorCode(i10), str3);
    }

    public static boolean recordEvent(UnityEvent unityEvent) {
        return NewRelic.recordEvent(unityEvent.getName(), unityEvent.getAttributes());
    }
}
