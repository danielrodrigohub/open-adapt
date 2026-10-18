package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.agent.android.util.Util;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonObject;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpError extends HarvestableArray {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private String appData;
    private long bytesReceived;
    private long bytesSent;
    private long count;
    private String digest;
    private int errorCode;
    private String httpMethod;
    private Map<String, String> params;
    private String responseBody;
    private String stackTrace;
    private int statusCode;
    private Long timestamp;
    private double totalTime;
    private String url;
    private String wanType;

    public HttpError() {
        this.url = null;
        this.statusCode = 0;
        this.count = 0L;
        this.responseBody = null;
        this.stackTrace = null;
        this.params = null;
        this.appData = null;
        this.digest = null;
        this.httpMethod = null;
        this.wanType = Agent.getActiveNetworkWanType();
        this.totalTime = 0.0d;
        this.errorCode = 0;
        this.bytesSent = 0L;
        this.bytesReceived = 0L;
        this.timestamp = 0L;
    }

    private String computeHash() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(this.url.getBytes());
            messageDigest.update(ByteBuffer.allocate(8).putInt(this.statusCode).array());
            String str = this.stackTrace;
            if (str != null && str.length() > 0) {
                messageDigest.update(this.stackTrace.getBytes());
            }
            return new String(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            log.error("HttpError: Unable to initialize SHA-1 hash algorithm");
            return null;
        }
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        String strOptional;
        int response_body_limit = Harvest.getHarvestConfiguration().getResponse_body_limit();
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(SafeJsonPrimitive.factory(this.url));
        jsonArray.add(SafeJsonPrimitive.factory(Integer.valueOf(this.statusCode)));
        jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.count)));
        if (FeatureFlag.featureEnabled(FeatureFlag.HttpResponseBodyCapture)) {
            strOptional = optional(this.responseBody);
            if (strOptional.length() > response_body_limit) {
                log.warning("HttpError: error response BODY is too large. Truncating to " + response_body_limit + " bytes.");
                strOptional = strOptional.substring(0, response_body_limit);
            }
        } else {
            log.debug("HttpError: HttpResponseBodyCapture is not enabled");
            strOptional = "";
        }
        jsonArray.add(SafeJsonPrimitive.factory(Agent.getEncoder().encode(strOptional.getBytes())));
        jsonArray.add(SafeJsonPrimitive.factory(optional(this.stackTrace)));
        JsonObject jsonObject = new JsonObject();
        if (this.params == null) {
            this.params = Collections.emptyMap();
        }
        jsonObject.add("custom_params", HarvestableObject.fromMap(this.params).asJson());
        jsonArray.add(jsonObject);
        jsonArray.add(SafeJsonPrimitive.factory(optional(this.appData)));
        return jsonArray;
    }

    public void digest() {
        this.digest = computeHash();
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

    public String getHash() {
        return this.digest;
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

    public String getUrl() {
        return this.url;
    }

    public String getWanType() {
        return this.wanType;
    }

    public void incrementCount() {
        this.count++;
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

    public void setCount(long j10) {
        this.count = j10;
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

    public void setTimestamp(Long l10) {
        this.timestamp = l10;
    }

    public void setTotalTime(double d10) {
        this.totalTime = d10;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWanType(String str) {
        this.wanType = str;
    }

    public HttpError(String str, int i10, String str2, String str3, Map<String, String> map) {
        this.url = null;
        this.statusCode = 0;
        this.count = 0L;
        this.responseBody = null;
        this.stackTrace = null;
        this.params = null;
        this.appData = null;
        this.digest = null;
        this.httpMethod = null;
        this.wanType = Agent.getActiveNetworkWanType();
        this.totalTime = 0.0d;
        this.errorCode = 0;
        this.bytesSent = 0L;
        this.bytesReceived = 0L;
        this.timestamp = 0L;
        this.url = Util.sanitizeUrl(str);
        this.statusCode = i10;
        this.responseBody = str2;
        this.stackTrace = str3;
        this.params = map;
        this.count = 1L;
        this.digest = computeHash();
    }

    public HttpError(HttpErrorMeasurement httpErrorMeasurement) {
        this(httpErrorMeasurement.getUrl(), httpErrorMeasurement.getStatusCode(), httpErrorMeasurement.getResponseBody(), httpErrorMeasurement.getStackTrace(), httpErrorMeasurement.getParams());
        setTimestamp(Long.valueOf(httpErrorMeasurement.getStartTime()));
        setHttpMethod(httpErrorMeasurement.getHttpMethod());
        setWanType(httpErrorMeasurement.getWanType());
        setHttpMethod(httpErrorMeasurement.getHttpMethod());
        setErrorCode(httpErrorMeasurement.getErrorCode());
        setBytesReceived(httpErrorMeasurement.getBytesReceived());
        setBytesSent(httpErrorMeasurement.getBytesSent());
        setAppData(httpErrorMeasurement.getAppData());
        setTotalTime(httpErrorMeasurement.getTotalTime());
    }
}
