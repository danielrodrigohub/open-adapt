package com.newrelic.agent.android.payload;

import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class PayloadReporter {
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public final AgentConfiguration agentConfiguration;
    public final AtomicBoolean isEnabled = new AtomicBoolean(false);
    public final AtomicBoolean isStarted = new AtomicBoolean(false);

    public PayloadReporter(AgentConfiguration agentConfiguration) {
        this.agentConfiguration = agentConfiguration;
    }

    public AgentConfiguration getAgentConfiguration() {
        return this.agentConfiguration;
    }

    public boolean isEnabled() {
        return this.isEnabled.get();
    }

    public void reportSupportabilityMetrics() {
    }

    public void setEnabled(boolean z10) {
        this.isEnabled.set(z10);
    }

    public abstract void start();

    public abstract void stop();
}
