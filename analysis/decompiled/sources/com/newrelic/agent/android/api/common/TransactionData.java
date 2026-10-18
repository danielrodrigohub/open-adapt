package com.newrelic.agent.android.api.common;

import a0.b;
import a1.d;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TransactionData {
    private final String appData;
    private final long bytesReceived;
    private final long bytesSent;
    private final String carrier;
    private int errorCode;
    private final Object errorCodeLock;
    private final String httpMethod;
    private Map<String, String> params;
    private String responseBody;
    private final int statusCode;
    private final float time;
    private final long timestamp;
    private Map<String, Object> traceAttributes;
    private final TraceContext traceContext;
    private final String url;
    private final String wanType;

    public TransactionData(String str, String str2, String str3, float f10, int i10, int i11, long j10, long j11, String str4, String str5, TraceContext traceContext, Map<String, Object> map) {
        this.errorCodeLock = new Object();
        this.errorCode = 0;
        this.responseBody = null;
        this.params = null;
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0 && (iIndexOf = str.indexOf(59)) < 0) {
            iIndexOf = str.length();
        }
        this.url = str.substring(0, iIndexOf);
        this.httpMethod = str2;
        this.carrier = str3;
        this.time = f10;
        this.statusCode = i10;
        this.errorCode = i11;
        this.bytesSent = j10;
        this.bytesReceived = j11;
        this.appData = str4;
        this.wanType = str5;
        this.timestamp = System.currentTimeMillis();
        this.responseBody = null;
        this.params = null;
        this.traceContext = traceContext;
        this.traceAttributes = map;
    }

    public List<Object> asList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.url);
        arrayList.add(this.carrier);
        arrayList.add(Float.valueOf(this.time));
        arrayList.add(Integer.valueOf(this.statusCode));
        arrayList.add(Integer.valueOf(this.errorCode));
        arrayList.add(Long.valueOf(this.bytesSent));
        arrayList.add(Long.valueOf(this.bytesReceived));
        arrayList.add(this.appData);
        return arrayList;
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
        int i10;
        synchronized (this.errorCodeLock) {
            i10 = this.errorCode;
        }
        return i10;
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

    public float getTime() {
        return this.time;
    }

    public long getTimestamp() {
        return this.timestamp;
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

    public void setErrorCode(int i10) {
        synchronized (this.errorCodeLock) {
            this.errorCode = i10;
        }
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

    public void setTraceAttributes(Map<String, Object> map) {
        this.traceAttributes = map;
    }

    public String toString() {
        StringBuilder sbC = b.c("TransactionData{timestamp=");
        sbC.append(this.timestamp);
        sbC.append(", url='");
        d.f(sbC, this.url, '\'', ", httpMethod='");
        d.f(sbC, this.httpMethod, '\'', ", carrier='");
        d.f(sbC, this.carrier, '\'', ", time=");
        sbC.append(this.time);
        sbC.append(", statusCode=");
        sbC.append(this.statusCode);
        sbC.append(", errorCode=");
        sbC.append(this.errorCode);
        sbC.append(", errorCodeLock=");
        sbC.append(this.errorCodeLock);
        sbC.append(", bytesSent=");
        sbC.append(this.bytesSent);
        sbC.append(", bytesReceived=");
        sbC.append(this.bytesReceived);
        sbC.append(", appData='");
        d.f(sbC, this.appData, '\'', ", wanType='");
        sbC.append(this.wanType);
        sbC.append('\'');
        sbC.append('}');
        return sbC.toString();
    }

    public TransactionData(String str, String str2, String str3, float f10, int i10, int i11, long j10, long j11, String str4, String str5, TraceContext traceContext, String str6, Map<String, String> map, Map<String, Object> map2) {
        this(str, str2, str3, f10, i10, i11, j10, j11, str4, str5, traceContext, map2);
        this.responseBody = str6;
        this.params = map;
    }
}
