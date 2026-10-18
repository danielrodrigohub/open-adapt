package com.newrelic.agent.android.measurement;

import a0.b;
import a1.d;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;

/* JADX INFO: loaded from: classes.dex */
public class BaseMeasurement implements Measurement {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private long endTime;
    private long exclusiveTime;
    private boolean finished;
    private String name;
    private String scope;
    private long startTime;
    private ThreadInfo threadInfo;
    private MeasurementType type;

    public BaseMeasurement(MeasurementType measurementType) {
        setType(measurementType);
    }

    private boolean logIfFinished() {
        if (this.finished) {
            log.warning("BaseMeasuredActivity: cannot modify finished Activity");
        }
        return this.finished;
    }

    private void throwIfFinished() {
        if (this.finished) {
            throw new MeasurementException("Attempted to modify finished Measurement");
        }
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double asDouble() {
        throw new UnsupportedOperationException();
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public void finish() {
        if (this.finished) {
            throw new MeasurementException("Finish called on already finished Measurement");
        }
        this.finished = true;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getEndTime() {
        return this.endTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getEndTimeInSeconds() {
        return this.endTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getExclusiveTime() {
        return this.exclusiveTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getExclusiveTimeInSeconds() {
        return this.exclusiveTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public String getName() {
        return this.name;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public String getScope() {
        return this.scope;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getStartTime() {
        return this.startTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getStartTimeInSeconds() {
        return this.startTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public ThreadInfo getThreadInfo() {
        return this.threadInfo;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public MeasurementType getType() {
        return this.type;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public boolean isFinished() {
        return this.finished;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public boolean isInstantaneous() {
        return this.endTime == 0;
    }

    public void setEndTime(long j10) {
        if (logIfFinished()) {
            return;
        }
        if (j10 >= this.startTime) {
            this.endTime = j10;
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Measurement end time must not precede start time - startTime: ");
        sbC.append(this.startTime);
        sbC.append(" endTime: ");
        sbC.append(j10);
        agentLog.error(sbC.toString());
    }

    public void setExclusiveTime(long j10) {
        if (logIfFinished()) {
            return;
        }
        this.exclusiveTime = j10;
    }

    public void setName(String str) {
        if (logIfFinished()) {
            return;
        }
        this.name = str;
    }

    public void setScope(String str) {
        if (logIfFinished()) {
            return;
        }
        this.scope = str;
    }

    public void setStartTime(long j10) {
        if (logIfFinished()) {
            return;
        }
        this.startTime = j10;
    }

    public void setThreadInfo(ThreadInfo threadInfo) {
        this.threadInfo = threadInfo;
    }

    public void setType(MeasurementType measurementType) {
        if (logIfFinished()) {
            return;
        }
        this.type = measurementType;
    }

    public String toString() {
        StringBuilder sbC = b.c("BaseMeasurement{type=");
        sbC.append(this.type);
        sbC.append(", name='");
        d.f(sbC, this.name, '\'', ", scope='");
        d.f(sbC, this.scope, '\'', ", startTime=");
        sbC.append(this.startTime);
        sbC.append(", endTime=");
        sbC.append(this.endTime);
        sbC.append(", exclusiveTime=");
        sbC.append(this.exclusiveTime);
        sbC.append(", threadInfo=");
        sbC.append(this.threadInfo);
        sbC.append(", finished=");
        sbC.append(this.finished);
        sbC.append('}');
        return sbC.toString();
    }

    public BaseMeasurement(Measurement measurement) {
        setType(measurement.getType());
        setName(measurement.getName());
        setScope(measurement.getScope());
        setStartTime(measurement.getStartTime());
        setEndTime(measurement.getEndTime());
        setExclusiveTime(measurement.getExclusiveTime());
        setThreadInfo(measurement.getThreadInfo());
        this.finished = measurement.isFinished();
    }
}
