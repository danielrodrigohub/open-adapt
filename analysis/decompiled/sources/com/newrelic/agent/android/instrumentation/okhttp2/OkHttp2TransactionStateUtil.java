package com.newrelic.agent.android.instrumentation.okhttp2;

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
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import de.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.TreeMap;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes.dex */
public class OkHttp2TransactionStateUtil extends TransactionStateUtil {
    public static Response addTransactionAndErrorData(TransactionState transactionState, Response response) {
        String strMessage = "Missing response body, using response message";
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
                String strMessage2 = "";
                sb2.append("");
                treeMap.put(Constants.Transactions.CONTENT_LENGTH, sb2.toString());
                try {
                    if (response.body() != null) {
                        ResponseBody responseBodyBody = response.body();
                        ByteBuffer byteBufferWrap = ByteBuffer.wrap(responseBodyBody.bytes());
                        c cVar = new c();
                        cVar.w0(byteBufferWrap.array());
                        response = response.newBuilder().body(new PrebufferedResponseBody(responseBodyBody, cVar)).build();
                        strMessage2 = new String(byteBufferWrap.array());
                    } else if (response.message() != null) {
                        TransactionStateUtil.log.debug("Missing response body, using response message");
                        strMessage = response.message();
                        strMessage2 = strMessage;
                    }
                } catch (Exception unused) {
                    if (response.message() != null) {
                        TransactionStateUtil.log.debug(strMessage);
                        strMessage2 = response.message();
                    }
                }
                transactionDataEnd.setResponseBody(strMessage2);
                transactionDataEnd.setParams(treeMap);
                Measurements.addHttpError(transactionDataEnd);
                response = setDistributedTraceHeaders(transactionState, response);
            }
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        }
        return response;
    }

    private static long exhaustiveContentLength(Response response) {
        long jContentLength = -1;
        if (response == null) {
            return -1L;
        }
        if (response.body() != null) {
            try {
                jContentLength = response.body().contentLength();
            } catch (IOException e10) {
                AgentLog agentLog = TransactionStateUtil.log;
                StringBuilder sbC = b.c("Failed to parse content length: ");
                sbC.append(e10.toString());
                agentLog.debug(sbC.toString());
            }
        }
        if (jContentLength >= 0) {
            return jContentLength;
        }
        String strHeader = response.header(Constants.Network.CONTENT_LENGTH_HEADER);
        if (strHeader != null && strHeader.length() > 0) {
            try {
                return Long.parseLong(strHeader);
            } catch (NumberFormatException e11) {
                AgentLog agentLog2 = TransactionStateUtil.log;
                StringBuilder sbC2 = b.c("Failed to parse content length: ");
                sbC2.append(e11.toString());
                agentLog2.debug(sbC2.toString());
                return jContentLength;
            }
        }
        Response responseNetworkResponse = response.networkResponse();
        if (responseNetworkResponse == null) {
            return jContentLength;
        }
        String strHeader2 = responseNetworkResponse.header(Constants.Network.CONTENT_LENGTH_HEADER);
        if (strHeader2 != null && strHeader2.length() > 0) {
            try {
                return Long.parseLong(strHeader2);
            } catch (NumberFormatException e12) {
                AgentLog agentLog3 = TransactionStateUtil.log;
                StringBuilder sbC3 = b.c("Failed to parse content length: ");
                sbC3.append(e12.toString());
                agentLog3.debug(sbC3.toString());
                return jContentLength;
            }
        }
        if (responseNetworkResponse.body() == null) {
            return jContentLength;
        }
        try {
            return responseNetworkResponse.body().contentLength();
        } catch (IOException e13) {
            AgentLog agentLog4 = TransactionStateUtil.log;
            StringBuilder sbC4 = b.c("Failed to parse network response content length: ");
            sbC4.append(e13.toString());
            agentLog4.debug(sbC4.toString());
            e13.printStackTrace();
            return jContentLength;
        }
    }

    public static void inspectAndInstrument(TransactionState transactionState, Request request) {
        if (request == null) {
            TransactionStateUtil.log.debug("Missing request");
            return;
        }
        if (!transactionState.isSent()) {
            TransactionStateUtil.inspectAndInstrument(transactionState, request.urlString(), request.method());
        }
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
        int iCode;
        String strHeader = "";
        long jExhaustiveContentLength = 0;
        if (response == null) {
            iCode = HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR;
            TransactionStateUtil.log.debug("Missing response");
        } else {
            Request request = response.request();
            if (request != null && request.url() != null) {
                String string = request.url().toString();
                if (!string.isEmpty()) {
                    TransactionStateUtil.inspectAndInstrument(transactionState, string, request.method());
                }
            }
            iCode = -1;
            try {
                strHeader = response.header(Constants.Network.APP_DATA_HEADER);
                iCode = response.code();
                jExhaustiveContentLength = exhaustiveContentLength(response);
            } catch (Exception unused) {
                TransactionStateUtil.log.debug("OkHttp2TransactionStateUtil: Missing body or content length");
            }
        }
        TransactionStateUtil.inspectAndInstrumentResponse(transactionState, strHeader, (int) jExhaustiveContentLength, iCode);
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
                }
                TraceContext.reportSupportabilityMetrics();
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
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        builderNewBuilder = builderNewBuilder.header(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                    }
                }
                TraceContext.reportSupportabilityMetrics();
                return builderNewBuilder.build();
            } catch (Exception e10) {
                TransactionStateUtil.log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
        return response;
    }
}
