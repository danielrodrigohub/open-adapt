package com.newrelic.agent.android.logging;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAgentLog implements AgentLog {
    private AgentLog impl = new NullAgentLog();

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void audit(String str) {
        synchronized (this) {
            this.impl.audit(str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String str) {
        synchronized (this) {
            this.impl.debug(str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str) {
        synchronized (this) {
            this.impl.error(str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        int level;
        synchronized (this) {
            level = this.impl.getLevel();
        }
        return level;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String str) {
        synchronized (this) {
            this.impl.info(str);
        }
    }

    public void setImpl(AgentLog agentLog) {
        synchronized (this) {
            this.impl = agentLog;
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int i10) {
        synchronized (this) {
            this.impl.setLevel(i10);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String str) {
        synchronized (this) {
            this.impl.verbose(str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String str) {
        synchronized (this) {
            this.impl.warning(str);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String str, Throwable th) {
        synchronized (this) {
            this.impl.error(str, th);
        }
    }
}
