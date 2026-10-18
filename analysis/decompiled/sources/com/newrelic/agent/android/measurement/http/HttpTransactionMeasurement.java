package com.newrelic.agent.android.measurement.http;

import a0.b;
import a1.d;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.measurement.BaseMeasurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.Util;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransactionMeasurement extends BaseMeasurement {
    private final String appData;
    private final long bytesReceived;
    private final long bytesSent;
    private final int errorCode;
    private final String httpMethod;
    private Map<String, String> params;
    private String responseBody;
    private final int statusCode;
    private final double totalTime;
    private Map<String, Object> traceAttributes;
    private TraceContext traceContext;
    private String url;

    public HttpTransactionMeasurement(String str, String str2, int i10, int i11, long j10, double d10, long j11, long j12, String str3) {
        super(MeasurementType.Network);
        String strSanitizeUrl = Util.sanitizeUrl(str);
        setName(strSanitizeUrl);
        setScope(TraceMachine.getCurrentScope());
        setStartTime(j10);
        setEndTime(j10 + ((long) ((int) d10)));
        setExclusiveTime((int) (1000.0d * d10));
        this.url = strSanitizeUrl;
        this.httpMethod = str2;
        this.statusCode = i10;
        this.bytesSent = j11;
        this.bytesReceived = j12;
        this.totalTime = d10;
        this.appData = str3;
        this.errorCode = i11;
        this.responseBody = null;
        this.params = null;
        this.traceContext = null;
    }

    @Override // com.newrelic.agent.android.measurement.BaseMeasurement, com.newrelic.agent.android.measurement.Measurement
    public double asDouble() {
        return this.totalTime;
    }

    public String getAppData() {
        return this.appData;
    }

    public long getBytesReceived() {
        return this.bytesReceived;
    }

    public long getBytesSent() {
        return this.bytesSent;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getHttpMethod() {
        return this.httpMethod;
    }

    public Map<String, String> getParams() {
        return this.params;
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public double getTotalTime() {
        return this.totalTime;
    }

    public Map<String, Object> getTraceAttributes() {
        return this.traceAttributes;
    }

    public TraceContext getTraceContext() {
        return this.traceContext;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override // com.newrelic.agent.android.measurement.BaseMeasurement
    public String toString() {
        StringBuilder sbC = b.c("HttpTransactionMeasurement{url='");
        d.f(sbC, this.url, '\'', ", httpMethod='");
        d.f(sbC, this.httpMethod, '\'', ", totalTime=");
        sbC.append(this.totalTime);
        sbC.append(", statusCode=");
        sbC.append(this.statusCode);
        sbC.append(", errorCode=");
        sbC.append(this.errorCode);
        sbC.append(", bytesSent=");
        sbC.append(this.bytesSent);
        sbC.append(", bytesReceived=");
        sbC.append(this.bytesReceived);
        sbC.append(", appData='");
        d.f(sbC, this.appData, '\'', ", responseBody='");
        d.f(sbC, this.responseBody, '\'', ", params='");
        sbC.append(this.params);
        sbC.append('\'');
        sbC.append('}');
        return sbC.toString();
    }

    public HttpTransactionMeasurement(String str, String str2, int i10, int i11, long j10, double d10, long j11, long j12, String str3, String str4) {
        this(str, str2, i10, i11, j10, d10, j11, j12, str3);
        this.responseBody = str4;
    }

    public HttpTransactionMeasurement(TransactionData transactionData) {
        this(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData());
        this.responseBody = transactionData.getResponseBody();
        this.params = transactionData.getParams();
        this.traceContext = transactionData.getTraceContext();
        this.traceAttributes = transactionData.getTraceAttributes();
    }
}
