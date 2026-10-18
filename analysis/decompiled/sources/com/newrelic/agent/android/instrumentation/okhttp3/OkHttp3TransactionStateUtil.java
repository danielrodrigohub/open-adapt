package com.newrelic.agent.android.instrumentation.okhttp3;

import a0.b;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.distributedtracing.TraceHeader;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.util.TreeMap;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes.dex */
public class OkHttp3TransactionStateUtil extends TransactionStateUtil {
    public static Response addTransactionAndErrorData(TransactionState transactionState, Response response) throws IOException {
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd != null) {
            if (response != null && transactionState.isErrorOrFailure()) {
                String strHeader = response.header(Constants.Network.CONTENT_TYPE_HEADER);
                TreeMap treeMap = new TreeMap();
                if (strHeader != null && !strHeader.isEmpty()) {
                    treeMap.put(Constants.Transactions.CONTENT_TYPE, strHeader);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(transactionState.getBytesReceived());
                String strMessage = "";
                sb2.append("");
                treeMap.put(Constants.Transactions.CONTENT_LENGTH, sb2.toString());
                try {
                    long jExhaustiveContentLength = exhaustiveContentLength(response);
                    if (jExhaustiveContentLength > 0) {
                        strMessage = response.peekBody(jExhaustiveContentLength).string();
                    }
                } catch (Exception unused) {
                    if (response.message() != null) {
                        TransactionStateUtil.log.debug("Missing response body, using response message");
                        strMessage = response.message();
                    }
                }
                transactionDataEnd.setResponseBody(strMessage);
                transactionDataEnd.setParams(treeMap);
                Measurements.addHttpError(transactionDataEnd);
            }
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
            setDistributedTraceHeaders(transactionState, response);
        }
        return response;
    }

    private static long exhaustiveContentLength(Response response) {
        if (response == null) {
            return -1L;
        }
        long jContentLength = response.body() != null ? response.body().contentLength() : -1L;
        if (jContentLength >= 0) {
            return jContentLength;
        }
        String strHeader = response.header(Constants.Network.CONTENT_LENGTH_HEADER);
        if (strHeader != null && strHeader.length() > 0) {
            try {
                return Long.parseLong(strHeader);
            } catch (NumberFormatException e10) {
                AgentLog agentLog = TransactionStateUtil.log;
                StringBuilder sbC = b.c("Failed to parse content length: ");
                sbC.append(e10.toString());
                agentLog.debug(sbC.toString());
                return jContentLength;
            }
        }
        Response responseNetworkResponse = response.networkResponse();
        if (responseNetworkResponse == null) {
            return jContentLength;
        }
        String strHeader2 = responseNetworkResponse.header(Constants.Network.CONTENT_LENGTH_HEADER);
        if (strHeader2 == null || strHeader2.length() <= 0) {
            return responseNetworkResponse.body() != null ? responseNetworkResponse.body().contentLength() : jContentLength;
        }
        try {
            return Long.parseLong(strHeader2);
        } catch (NumberFormatException e11) {
            AgentLog agentLog2 = TransactionStateUtil.log;
            StringBuilder sbC2 = b.c("Failed to parse network response content length: ");
            sbC2.append(e11.toString());
            agentLog2.debug(sbC2.toString());
            return jContentLength;
        }
    }

    public static void inspectAndInstrument(TransactionState transactionState, Request request) {
        if (request == null) {
            TransactionStateUtil.log.debug("Missing request");
            return;
        }
        TransactionStateUtil.inspectAndInstrument(transactionState, request.url().toString(), request.method());
        try {
            RequestBody requestBodyBody = request.body();
            if (requestBodyBody == null || requestBodyBody.contentLength() <= 0) {
                return;
            }
            transactionState.setBytesSent(requestBodyBody.contentLength());
        } catch (IOException e10) {
            TransactionStateUtil.log.debug("Could not determine request length: " + e10);
        }
    }

    public static Response inspectAndInstrumentResponse(TransactionState transactionState, Response response) {
        String strHeader;
        int iCode;
        long jExhaustiveContentLength;
        long j10 = 0;
        if (response == null) {
            iCode = HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR;
            TransactionStateUtil.log.debug("Missing response");
            strHeader = "";
        } else {
            Request request = response.request();
            if (request != null && request.url() != null) {
                String string = request.url().toString();
                if (!string.isEmpty()) {
                    TransactionStateUtil.inspectAndInstrument(transactionState, string, request.method());
                }
            }
            strHeader = response.header(Constants.Network.APP_DATA_HEADER);
            iCode = response.code();
            try {
                jExhaustiveContentLength = exhaustiveContentLength(response);
            } catch (Exception unused) {
                jExhaustiveContentLength = 0;
            }
            if (jExhaustiveContentLength < 0) {
                TransactionStateUtil.log.debug("OkHttp3TransactionStateUtil: Missing body or content length");
            }
            j10 = jExhaustiveContentLength;
        }
        TransactionStateUtil.inspectAndInstrumentResponse(transactionState, strHeader, (int) j10, iCode);
        return addTransactionAndErrorData(transactionState, response);
    }

    public static Request setDistributedTraceHeaders(TransactionState transactionState, Request request) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            try {
                Request.Builder builderNewBuilder = request.newBuilder();
                TraceContext trace = transactionState.getTrace();
                if (trace != null) {
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        builderNewBuilder = builderNewBuilder.header(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                    }
                    TraceContext.reportSupportabilityMetrics();
                }
                return builderNewBuilder.build();
            } catch (Exception e10) {
                TransactionStateUtil.log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
        return request;
    }

    public static Response setDistributedTraceHeaders(TransactionState transactionState, Response response) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            try {
                Response.Builder builderNewBuilder = response.newBuilder();
                TraceContext trace = transactionState.getTrace();
                if (trace != null) {
                    Headers headers = response.headers();
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        if (headers.get(traceHeader.getHeaderName()) == null) {
                            builderNewBuilder = builderNewBuilder.addHeader(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                        }
                    }
                }
                return builderNewBuilder.build();
            } catch (Exception e10) {
                TransactionStateUtil.log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
        return response;
    }
}
