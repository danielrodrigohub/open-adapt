package com.newrelic.agent.android.logging;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class AndroidAgentLog implements AgentLog {
    private static final String TAG = "com.newrelic.android";
    private int level = 3;

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void audit(String str) {
        if (this.level == 6) {
            Log.d(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String str) {
        if (this.level >= 5) {
            Log.d(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str) {
        if (this.level >= 1) {
            Log.e(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        return this.level;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String str) {
        if (this.level >= 3) {
            Log.i(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int i10) {
        if (i10 > 6 || i10 < 1) {
            throw new IllegalArgumentException("Log level is not between ERROR and AUDIT");
        }
        this.level = i10;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String str) {
        if (this.level >= 4) {
            Log.v(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String str) {
        if (this.level >= 2) {
            Log.w(TAG, str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str, Throwable th) {
        if (this.level >= 1) {
            Log.e(TAG, str, th);
        }
    }
}
