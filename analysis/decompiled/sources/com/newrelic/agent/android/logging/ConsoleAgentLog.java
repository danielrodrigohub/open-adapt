package com.newrelic.agent.android.logging;

import androidx.fragment.app.r0;

/* JADX INFO: loaded from: classes.dex */
public class ConsoleAgentLog implements AgentLog {
    private int level = 3;

    private static void print(String str, String str2) {
        System.out.println("[" + str + "] " + str2);
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void audit(String str) {
        if (this.level == 6) {
            print("AUDIT", str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String str) {
        if (this.level >= 5) {
            print("DEBUG", str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str, Throwable th) {
        if (this.level >= 1) {
            StringBuilder sbH = r0.h(str, " ");
            sbH.append(th.getMessage());
            print("ERROR", sbH.toString());
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        return this.level;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String str) {
        if (this.level >= 3) {
            print("INFO", str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int i10) {
        this.level = i10;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String str) {
        if (this.level >= 4) {
            print("VERBOSE", str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String str) {
        if (this.level >= 2) {
            print("WARN", str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str) {
        if (this.level >= 1) {
            print("ERROR", str);
        }
    }
}
