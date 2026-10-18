package com.newrelic.agent.android.harvest;

import a0.b;
import a1.d;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransaction extends HarvestableArray {
    private String appData;
    private long bytesReceived;
    private long bytesSent;
    private String carrier;
    private int errorCode;
    private String httpMethod;
    private Map<String, String> params;
    private String responseBody;
    private int statusCode;
    private Long timestamp;
    private double totalTime;
    private Map<String, Object> traceAttributes;
    private TraceContext traceContext;
    private String url;
    private String wanType;

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(SafeJsonPrimitive.factory(this.url));
        jsonArray.add(SafeJsonPrimitive.factory(this.carrier));
        jsonArray.add(SafeJsonPrimitive.factory(Double.valueOf(this.totalTime)));
        jsonArray.add(SafeJsonPrimitive.factory(Integer.valueOf(this.statusCode)));
        jsonArray.add(SafeJsonPrimitive.factory(Integer.valueOf(this.errorCode)));
        jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.bytesSent)));
        jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.bytesReceived)));
        String str = this.appData;
        jsonArray.add(str == null ? null : SafeJsonPrimitive.factory(str));
        jsonArray.add(SafeJsonPrimitive.factory(this.wanType));
        jsonArray.add(SafeJsonPrimitive.factory(this.httpMethod));
        return jsonArray;
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

    public String getCarrier() {
        return this.carrier;
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

    public Long getTimestamp() {
        return this.timestamp;
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

    public void setCarrier(String str) {
        this.carrier = str;
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

    public void setStatusCode(int i10) {
        this.statusCode = i10;
    }

    public void setTimestamp(Long l10) {
        this.timestamp = l10;
    }

    public void setTotalTime(double d10) {
        this.totalTime = d10;
    }

    public void setTraceAttributes(Map<String, Object> map) {
        this.traceAttributes = map;
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

    public String toString() {
        StringBuilder sbC = b.c("HttpTransaction{url='");
        d.f(sbC, this.url, '\'', ", carrier='");
        d.f(sbC, this.carrier, '\'', ", wanType='");
        d.f(sbC, this.wanType, '\'', ", httpMethod='");
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
        sbC.append(", timestamp=");
        sbC.append(this.timestamp);
        sbC.append('}');
        return sbC.toString();
    }
}
