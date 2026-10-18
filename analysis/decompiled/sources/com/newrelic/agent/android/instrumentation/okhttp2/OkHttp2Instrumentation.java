package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.distributedtracing.DistributedTracing;
import com.newrelic.agent.android.instrumentation.HttpURLConnectionExtension;
import com.newrelic.agent.android.instrumentation.HttpsURLConnectionExtension;
import com.newrelic.agent.android.instrumentation.ReplaceCallSite;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.OkUrlFactory;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class OkHttp2Instrumentation {
    public static final String CACHED_RESPONSE_CLASS = "com.squareup.okhttp.Cache$CacheResponseBody";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    private OkHttp2Instrumentation() {
    }

    @ReplaceCallSite
    public static Response.Builder body(Response.Builder builder, ResponseBody responseBody) {
        return new ResponseBuilderExtension(builder).body(responseBody);
    }

    @ReplaceCallSite
    public static Request build(Request.Builder builder) {
        return new RequestBuilderExtension(builder).build();
    }

    @ReplaceCallSite
    public static Response.Builder newBuilder(Response.Builder builder) {
        return new ResponseBuilderExtension(builder);
    }

    @ReplaceCallSite
    public static Call newCall(OkHttpClient okHttpClient, Request request) {
        TransactionState transactionState = new TransactionState();
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            try {
                transactionState.setTrace(DistributedTracing.getInstance().startTrace(transactionState));
                Request distributedTraceHeaders = OkHttp2TransactionStateUtil.setDistributedTraceHeaders(transactionState, request);
                return new CallExtension(okHttpClient, distributedTraceHeaders, okHttpClient.newCall(distributedTraceHeaders), transactionState);
            } catch (Exception e10) {
                log.error(e10.getMessage());
            }
        }
        return new CallExtension(okHttpClient, request, okHttpClient.newCall(request), transactionState);
    }

    @ReplaceCallSite(isStatic = false, scope = "com.squareup.okhttp.OkUrlFactory")
    public static HttpURLConnection open(OkUrlFactory okUrlFactory, URL url) {
        HttpURLConnection httpURLConnectionOpen = okUrlFactory.open(url);
        String protocol = url.getProtocol();
        if (protocol.equals("http")) {
            return new HttpURLConnectionExtension(httpURLConnectionOpen);
        }
        return (protocol.equals("https") && (httpURLConnectionOpen instanceof HttpsURLConnection)) ? new HttpsURLConnectionExtension((HttpsURLConnection) httpURLConnectionOpen) : new HttpURLConnectionExtension(httpURLConnectionOpen);
    }

    @ReplaceCallSite
    public static ResponseBody body(Response response) {
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            try {
                if (responseBodyBody instanceof PrebufferedResponseBody) {
                    PrebufferedResponseBody prebufferedResponseBody = (PrebufferedResponseBody) responseBodyBody;
                    if (prebufferedResponseBody.impl.getClass().getName().equalsIgnoreCase(CACHED_RESPONSE_CLASS)) {
                        return prebufferedResponseBody.impl;
                    }
                }
            } catch (Exception e10) {
                log.error(e10.getMessage());
            }
        }
        return responseBodyBody;
    }
}
