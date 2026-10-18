package com.newrelic.agent.android.measurement.http;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.measurement.BaseMeasurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrorMeasurement extends BaseMeasurement {
    private String appData;
    private long bytesReceived;
    private long bytesSent;
    private int errorCode;
    private String httpMethod;
    private Map<String, String> params;
    private String responseBody;
    private String stackTrace;
    private int statusCode;
    private double totalTime;
    private TraceContext traceContext;
    private String url;
    private String wanType;

    public HttpErrorMeasurement() {
        super(MeasurementType.HttpError);
        this.url = null;
        this.statusCode = 0;
        this.errorCode = 0;
        this.responseBody = null;
        this.stackTrace = null;
        this.params = null;
        this.httpMethod = null;
        this.wanType = Agent.getActiveNetworkWanType();
        this.totalTime = 0.0d;
        this.bytesSent = 0L;
        this.bytesReceived = 0L;
        this.appData = null;
        this.traceContext = null;
        setStartTime(System.currentTimeMillis());
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

    public String getStackTrace() {
        return this.stackTrace;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public double getTotalTime() {
        return this.totalTime;
    }

    public TraceContext getTraceContext() {
        return this.traceContext;
    }

    public String getUrl() {
        return this.url;
    }

    public String getWanType() {
        return this.wanType;
    }

    public void setAppData(String str) {
        this.appData = str;
    }

    public void setBytesReceived(long j10) {
        this.bytesReceived = j10;
    }

    public void setBytesSent(long j10) {
        this.bytesSent = j10;
    }

    public void setErrorCode(int i10) {
        this.errorCode = i10;
    }

    public void setHttpMethod(String str) {
        this.httpMethod = str;
    }

    public void setParams(Map<String, String> map) {
        this.params = map;
    }

    public void setResponseBody(String str) {
        if (FeatureFlag.featureEnabled(FeatureFlag.HttpResponseBodyCapture)) {
            if (str == null || str.isEmpty()) {
                this.responseBody = null;
            } else {
                this.responseBody = str;
            }
        }
    }

    public void setStackTrace(String str) {
        this.stackTrace = str;
    }

    public void setStatusCode(int i10) {
        this.statusCode = i10;
    }

    public void setTotalTime(double d10) {
        this.totalTime = d10;
    }

    public void setTraceContext(TraceContext traceContext) {
        this.traceContext = traceContext;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWanType(String str) {
        this.wanType = str;
    }

    public HttpErrorMeasurement(String str, int i10) {
        this();
        setUrl(str);
        setName(str);
        setStatusCode(i10);
    }
}
