package com.newrelic.agent.android.instrumentation;

import a0.b;
import a1.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.producer.HttpErrorMeasurementProducer;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.Util;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class TransactionState {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private String appData;
    private String contentType;
    private String httpMethod;
    private long startTime;
    private TraceContext trace;
    private TransactionData transactionData;
    private String url;
    private int statusCode = 0;
    private int errorCode = 0;
    private long bytesSent = 0;
    private long bytesReceived = 0;
    private long endTime = 0;
    private String carrier = "unknown";
    private String wanType = "unknown";
    private State state = State.READY;

    public enum State {
        READY,
        SENT,
        COMPLETE
    }

    public TransactionState() {
        this.startTime = 0L;
        this.startTime = System.currentTimeMillis();
        TraceMachine.enterNetworkSegment("External/unknownhost");
    }

    public static boolean isRequestError(int i10) {
        return ((long) i10) >= 400;
    }

    public static boolean isRequestFailure(int i10) {
        return i10 != 0;
    }

    public TransactionData end() {
        if (!isComplete()) {
            this.state = State.COMPLETE;
            this.endTime = System.currentTimeMillis();
            TraceMachine.exitMethod();
        }
        return toTransactionData();
    }

    public long getBytesReceived() {
        return this.bytesReceived;
    }

    public long getBytesSent() {
        return this.bytesSent;
    }

    public String getContentType() {
        return this.contentType;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getHttpMethod() {
        return this.httpMethod;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public TraceContext getTrace() {
        return this.trace;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isComplete() {
        return this.state == State.COMPLETE;
    }

    public boolean isErrorOrFailure() {
        return isRequestError() || isRequestFailure();
    }

    public boolean isRequestError() {
        return isRequestError(this.statusCode);
    }

    public boolean isRequestFailure() {
        return isRequestFailure(this.errorCode);
    }

    public boolean isSent() {
        State state = this.state;
        return state == State.SENT || state == State.COMPLETE;
    }

    public void setAppData(String str) {
        if (!isComplete()) {
            this.appData = str;
            TraceMachine.setCurrentTraceParam("encoded_app_data", str);
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setAppData(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setBytesReceived(long j10) {
        if (!isComplete()) {
            this.bytesReceived = j10;
            TraceMachine.setCurrentTraceParam("bytes_received", Long.valueOf(j10));
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setBytesReceived(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setBytesSent(long j10) {
        if (!isComplete()) {
            this.bytesSent = j10;
            TraceMachine.setCurrentTraceParam("bytes_sent", Long.valueOf(j10));
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setBytesSent(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setCarrier(String str) {
        if (!isSent()) {
            this.carrier = str;
            TraceMachine.setCurrentTraceParam(AnalyticsAttribute.CARRIER_ATTRIBUTE, str);
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setCarrier(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setErrorCode(int i10) {
        if (!isComplete()) {
            this.errorCode = i10;
            TraceMachine.setCurrentTraceParam("error_code", Integer.valueOf(i10));
            return;
        }
        TransactionData transactionData = this.transactionData;
        if (transactionData != null) {
            transactionData.setErrorCode(i10);
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setErrorCode(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setHttpMethod(String str) {
        if (!isSent()) {
            this.httpMethod = str;
            TraceMachine.setCurrentTraceParam(HttpErrorMeasurementProducer.HTTP_METHOD_PARAMS_KEY, str);
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setHttpMethod(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public State setState(State state) {
        this.state = state;
        return state;
    }

    public void setStatusCode(int i10) {
        if (!isComplete()) {
            this.statusCode = i10;
            TraceMachine.setCurrentTraceParam("status_code", Integer.valueOf(i10));
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setStatusCode(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setTrace(TraceContext traceContext) {
        if (!isSent()) {
            this.trace = traceContext;
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setCatPayload(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public void setUrl(String str) {
        String strSanitizeUrl = Util.sanitizeUrl(str);
        if (strSanitizeUrl == null) {
            return;
        }
        if (isSent()) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("setUrl(...) called on TransactionState in ");
            sbC.append(this.state.toString());
            sbC.append(" state");
            agentLog.debug(sbC.toString());
            return;
        }
        this.url = strSanitizeUrl;
        try {
            TraceMachine.setCurrentDisplayName("External/" + new URL(strSanitizeUrl).getHost());
        } catch (MalformedURLException unused) {
            log.error("unable to parse host name from " + strSanitizeUrl);
        }
        TraceMachine.setCurrentTraceParam("uri", strSanitizeUrl);
    }

    public void setWanType(String str) {
        if (!isSent()) {
            this.wanType = str;
            TraceMachine.setCurrentTraceParam(HttpErrorMeasurementProducer.WAN_TYPE_PARAMS_KEY, str);
            return;
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("setWanType(...) called on TransactionState in ");
        sbC.append(this.state.toString());
        sbC.append(" state");
        agentLog.debug(sbC.toString());
    }

    public String toString() {
        StringBuilder sbC = b.c("TransactionState{url='");
        d.f(sbC, this.url, '\'', ", httpMethod='");
        d.f(sbC, this.httpMethod, '\'', ", statusCode=");
        sbC.append(this.statusCode);
        sbC.append(", errorCode=");
        sbC.append(this.errorCode);
        sbC.append(", bytesSent=");
        sbC.append(this.bytesSent);
        sbC.append(", bytesReceived=");
        sbC.append(this.bytesReceived);
        sbC.append(", startTime=");
        sbC.append(this.startTime);
        sbC.append(", endTime=");
        sbC.append(this.endTime);
        sbC.append(", appData='");
        d.f(sbC, this.appData, '\'', ", carrier='");
        d.f(sbC, this.carrier, '\'', ", wanType='");
        d.f(sbC, this.wanType, '\'', ", state=");
        sbC.append(this.state);
        sbC.append(", contentType='");
        d.f(sbC, this.contentType, '\'', ", transactionData=");
        sbC.append(this.transactionData);
        sbC.append('}');
        return sbC.toString();
    }

    public TransactionData toTransactionData() {
        float f10;
        if (!isComplete()) {
            log.debug("toTransactionData() called on incomplete TransactionState");
        }
        if (this.url == null) {
            log.error("Attempted to convert a TransactionState instance with no URL into a TransactionData");
            return null;
        }
        float f11 = (this.endTime - this.startTime) / 1000.0f;
        if (f11 < 0.0f) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Invalid response duration detected: start[");
            sbC.append(this.startTime);
            sbC.append("] end[");
            sbC.append(this.endTime);
            sbC.append("]");
            agentLog.error(sbC.toString());
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_RESPONSE_TIME_INVALID_DURATION);
            f10 = 0.0f;
        } else {
            f10 = f11;
        }
        if (this.transactionData == null) {
            this.transactionData = new TransactionData(this.url, this.httpMethod, this.carrier, f10, this.statusCode, this.errorCode, this.bytesSent, this.bytesReceived, this.appData, this.wanType, this.trace, null);
        }
        return this.transactionData;
    }
}
