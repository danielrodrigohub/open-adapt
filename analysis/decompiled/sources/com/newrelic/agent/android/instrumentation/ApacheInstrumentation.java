package com.newrelic.agent.android.instrumentation;

import a0.b;
import a1.f;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.distributedtracing.TraceHeader;
import com.newrelic.agent.android.instrumentation.httpclient.ContentBufferingResponseEntityImpl;
import com.newrelic.agent.android.instrumentation.httpclient.HttpRequestEntityImpl;
import com.newrelic.agent.android.instrumentation.httpclient.HttpResponseEntityImpl;
import com.newrelic.agent.android.instrumentation.httpclient.ResponseHandlerImpl;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.text.MessageFormat;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ApacheInstrumentation {
    public static final AgentLog log = AgentLogManager.getAgentLog();

    private ApacheInstrumentation() {
    }

    public static void addTransactionAndErrorData(TransactionState transactionState, HttpResponse httpResponse) {
        String bufferAsString;
        Header[] headers;
        String value;
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd == null) {
            return;
        }
        if (transactionState.isErrorOrFailure()) {
            TreeMap treeMap = new TreeMap();
            if (httpResponse != null) {
                try {
                    if (httpResponse.getEntity() != null) {
                        if (!(httpResponse.getEntity() instanceof HttpRequestEntityImpl)) {
                            httpResponse.setEntity(new ContentBufferingResponseEntityImpl(httpResponse.getEntity()));
                        }
                        InputStream content = httpResponse.getEntity().getContent();
                        if (content instanceof CountingInputStream) {
                            bufferAsString = ((CountingInputStream) content).getBufferAsString();
                        } else {
                            log.error("Unable to wrap content stream for entity");
                        }
                        headers = httpResponse.getHeaders(Constants.Network.CONTENT_TYPE_HEADER);
                        value = null;
                        if (headers != null && headers.length > 0 && !"".equals(headers[0].getValue())) {
                            value = headers[0].getValue();
                        }
                        if (value != null && value.length() > 0) {
                            treeMap.put(Constants.Transactions.CONTENT_TYPE, value);
                        }
                    } else {
                        log.debug("null response entity. response-body will be reported empty");
                    }
                } catch (IOException e10) {
                    log.error(e10.toString());
                } catch (IllegalStateException e11) {
                    log.error(e11.toString());
                }
                bufferAsString = "";
                headers = httpResponse.getHeaders(Constants.Network.CONTENT_TYPE_HEADER);
                value = null;
                if (headers != null) {
                    value = headers[0].getValue();
                }
                if (value != null) {
                    treeMap.put(Constants.Transactions.CONTENT_TYPE, value);
                }
            } else {
                bufferAsString = "";
            }
            treeMap.put(Constants.Transactions.CONTENT_LENGTH, transactionState.getBytesReceived() + "");
            transactionDataEnd.setResponseBody(bufferAsString);
            transactionDataEnd.setParams(treeMap);
            Measurements.addHttpError(transactionDataEnd);
        }
        TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
    }

    private static HttpUriRequest delegate(HttpUriRequest httpUriRequest, TransactionState transactionState) {
        return inspectAndInstrument(transactionState, httpUriRequest);
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpRequest);
        }
        try {
            return delegate(httpClient.execute(httpHost, delegate(httpHost, httpRequest, transactionState), httpContext), transactionState);
        } catch (IOException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        }
    }

    public static void httpClientError(TransactionState transactionState, Exception exc) {
        if (transactionState.isComplete()) {
            return;
        }
        TransactionStateUtil.setErrorCodeFromException(transactionState, exc);
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd != null) {
            transactionDataEnd.setResponseBody(exc.toString());
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        }
    }

    public static HttpRequest inspectAndInstrument(TransactionState transactionState, HttpHost httpHost, HttpRequest httpRequest) {
        RequestLine requestLine = httpRequest.getRequestLine();
        if (requestLine != null) {
            String uri = requestLine.getUri();
            boolean z10 = uri != null && uri.length() >= 10 && uri.substring(0, 10).indexOf("://") >= 0;
            if (!z10 && uri != null && httpHost != null) {
                String uri2 = httpHost.toURI();
                uri = f.d(b.c(uri2), (uri2.endsWith("/") || uri.startsWith("/")) ? "" : "/", uri);
            } else if (!z10) {
                uri = null;
            }
            TransactionStateUtil.inspectAndInstrument(transactionState, uri, requestLine.getMethod());
        }
        setCrossProcessHeader(httpRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpRequest);
        }
        if (transactionState.getUrl() != null && transactionState.getHttpMethod() != null) {
            wrapRequestEntity(transactionState, httpRequest);
            return httpRequest;
        }
        try {
            throw new Exception("TransactionData constructor was not provided with a valid URL, host or HTTP method");
        } catch (Exception e10) {
            log.error(MessageFormat.format("TransactionStateUtil.inspectAndInstrument(...) for {0} could not determine request URL or HTTP method [host={1}, requestLine={2}]", httpRequest.getClass().getCanonicalName(), httpHost, requestLine), e10);
            return httpRequest;
        }
    }

    private static void setCrossProcessHeader(HttpRequest httpRequest) {
        String crossProcessId = Agent.getCrossProcessId();
        if (crossProcessId != null) {
            TraceMachine.setCurrentTraceParam("cross_process_data", crossProcessId);
            httpRequest.setHeader(Constants.Network.CROSS_PROCESS_ID_HEADER, crossProcessId);
        }
    }

    public static void setDistributedTraceHeaders(TransactionState transactionState, HttpRequest httpRequest) {
        if (transactionState.getTrace() != null) {
            try {
                TraceContext trace = transactionState.getTrace();
                if (trace != null) {
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        httpRequest.setHeader(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                    }
                    TraceContext.reportSupportabilityMetrics();
                }
            } catch (Exception e10) {
                log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
    }

    private static void wrapRequestEntity(TransactionState transactionState, HttpRequest httpRequest) {
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            HttpEntityEnclosingRequest httpEntityEnclosingRequest = (HttpEntityEnclosingRequest) httpRequest;
            if (httpEntityEnclosingRequest.getEntity() != null) {
                httpEntityEnclosingRequest.setEntity(new HttpRequestEntityImpl(httpEntityEnclosingRequest.getEntity(), transactionState));
            }
        }
    }

    private static HttpRequest delegate(HttpHost httpHost, HttpRequest httpRequest, TransactionState transactionState) {
        return inspectAndInstrument(transactionState, httpHost, httpRequest);
    }

    private static HttpResponse delegate(HttpResponse httpResponse, TransactionState transactionState) {
        return inspectAndInstrument(transactionState, httpResponse);
    }

    private static <T> ResponseHandler<? extends T> delegate(ResponseHandler<? extends T> responseHandler, TransactionState transactionState) {
        return ResponseHandlerImpl.wrap(responseHandler, transactionState);
    }

    public static void setDistributedTraceHeaders(TransactionState transactionState, HttpResponse httpResponse) {
        if (transactionState.getTrace() != null) {
            try {
                TraceContext trace = transactionState.getTrace();
                if (trace != null) {
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        if (!httpResponse.containsHeader(traceHeader.getHeaderName())) {
                            httpResponse.setHeader(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                        }
                    }
                }
            } catch (Exception e10) {
                log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpRequest);
        }
        try {
            return (T) httpClient.execute(httpHost, delegate(httpHost, httpRequest, transactionState), delegate(responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        } catch (IOException e11) {
            httpClientError(transactionState, e11);
            throw e11;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpRequest);
        }
        try {
            return (T) httpClient.execute(httpHost, delegate(httpHost, httpRequest, transactionState), delegate(responseHandler, transactionState));
        } catch (ClientProtocolException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        } catch (IOException e11) {
            httpClientError(transactionState, e11);
            throw e11;
        }
    }

    public static HttpUriRequest inspectAndInstrument(TransactionState transactionState, HttpUriRequest httpUriRequest) {
        setCrossProcessHeader(httpUriRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpUriRequest);
        }
        TransactionStateUtil.inspectAndInstrument(transactionState, httpUriRequest.getURI().toString(), httpUriRequest.getMethod());
        wrapRequestEntity(transactionState, httpUriRequest);
        return httpUriRequest;
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpRequest);
        }
        try {
            return delegate(httpClient.execute(httpHost, delegate(httpHost, httpRequest, transactionState)), transactionState);
        } catch (IOException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        }
    }

    public static HttpResponse inspectAndInstrument(TransactionState transactionState, HttpResponse httpResponse) {
        transactionState.setStatusCode(httpResponse.getStatusLine().getStatusCode());
        Header[] headers = httpResponse.getHeaders(Constants.Network.APP_DATA_HEADER);
        if (headers != null && headers.length > 0 && !"".equals(headers[0].getValue())) {
            transactionState.setAppData(headers[0].getValue());
        }
        Header[] headers2 = httpResponse.getHeaders(Constants.Network.CONTENT_LENGTH_HEADER);
        if (headers2 != null && headers2.length > 0) {
            try {
                transactionState.setBytesReceived(Long.parseLong(headers2[0].getValue()));
                addTransactionAndErrorData(transactionState, httpResponse);
            } catch (NumberFormatException e10) {
                log.warning("Failed to parse content length: " + e10);
            }
        } else if (httpResponse.getEntity() != null) {
            httpResponse.setEntity(new HttpResponseEntityImpl(httpResponse.getEntity(), transactionState, -1L));
        } else {
            transactionState.setBytesReceived(0L);
            addTransactionAndErrorData(transactionState, null);
        }
        setDistributedTraceHeaders(transactionState, httpResponse);
        return httpResponse;
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpUriRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpUriRequest);
        }
        try {
            return delegate(httpClient.execute(delegate(httpUriRequest, transactionState), httpContext), transactionState);
        } catch (IOException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpUriRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpUriRequest);
        }
        try {
            return (T) httpClient.execute(delegate(httpUriRequest, transactionState), delegate(responseHandler, transactionState), httpContext);
        } catch (ClientProtocolException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        } catch (IOException e11) {
            httpClientError(transactionState, e11);
            throw e11;
        }
    }

    @ReplaceCallSite
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpUriRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpUriRequest);
        }
        try {
            return (T) httpClient.execute(delegate(httpUriRequest, transactionState), delegate(responseHandler, transactionState));
        } catch (ClientProtocolException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        } catch (IOException e11) {
            httpClientError(transactionState, e11);
            throw e11;
        }
    }

    @ReplaceCallSite
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        TransactionState transactionState = new TransactionState();
        setCrossProcessHeader(httpUriRequest);
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TransactionStateUtil.setTrace(transactionState);
            setDistributedTraceHeaders(transactionState, httpUriRequest);
        }
        try {
            return delegate(httpClient.execute(delegate(httpUriRequest, transactionState)), transactionState);
        } catch (IOException e10) {
            httpClientError(transactionState, e10);
            throw e10;
        }
    }
}
