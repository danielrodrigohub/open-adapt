package com.newrelic.agent.android.instrumentation;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.distributedtracing.DistributedTracing;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.distributedtracing.TraceHeader;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.Constants;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class TransactionStateUtil {
    public static final long CONTENTLENGTH_UNKNOWN = -1;
    public static final AgentLog log = AgentLogManager.getAgentLog();

    public static void inspectAndInstrument(TransactionState transactionState, String str, String str2) {
        transactionState.setUrl(str);
        transactionState.setHttpMethod(str2);
        transactionState.setCarrier(Agent.getActiveNetworkCarrier());
        transactionState.setWanType(Agent.getActiveNetworkWanType());
    }

    public static void inspectAndInstrumentResponse(TransactionState transactionState, String str, int i10, int i11) {
        if (str != null && !str.equals("")) {
            transactionState.setAppData(str);
        }
        if (i10 >= 0) {
            transactionState.setBytesReceived(i10);
        }
        transactionState.setStatusCode(i11);
    }

    public static void setCrossProcessHeader(HttpURLConnection httpURLConnection) {
        try {
            String crossProcessId = Agent.getCrossProcessId();
            if (crossProcessId != null) {
                httpURLConnection.setRequestProperty(Constants.Network.CROSS_PROCESS_ID_HEADER, crossProcessId);
            }
        } catch (Exception e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("setCrossProcessHeader: ");
            sbC.append(e10.getLocalizedMessage());
            agentLog.error(sbC.toString());
        }
    }

    public static void setDistributedTraceHeaders(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            try {
                TraceContext trace = transactionState.getTrace();
                if (trace != null) {
                    for (TraceHeader traceHeader : trace.getHeaders()) {
                        httpURLConnection.addRequestProperty(traceHeader.getHeaderName(), traceHeader.getHeaderValue());
                    }
                    TraceContext.reportSupportabilityMetrics();
                }
            } catch (Exception e10) {
                log.error("setDistributedTraceHeaders: Unable to add trace headers. ", e10);
                TraceContext.reportSupportabilityExceptionMetric(e10);
            }
        }
    }

    public static void setErrorCodeFromException(TransactionState transactionState, Exception exc) {
        int iExceptionToErrorCode = ExceptionHelper.exceptionToErrorCode(exc);
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("TransactionStateUtil: Attempting to convert network exception ");
        sbC.append(exc.getClass().getName());
        sbC.append(" to error code.");
        agentLog.error(sbC.toString());
        transactionState.setErrorCode(iExceptionToErrorCode);
    }

    public static void setTrace(TransactionState transactionState) {
        if (transactionState.getTrace() == null) {
            transactionState.setTrace(DistributedTracing.getInstance().startTrace(transactionState));
        }
    }

    public static void inspectAndInstrument(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        inspectAndInstrument(transactionState, httpURLConnection.getURL().toString(), httpURLConnection.getRequestMethod());
    }

    public static void inspectAndInstrumentResponse(TransactionState transactionState, HttpURLConnection httpURLConnection) {
        String headerField = null;
        int contentLength = -1;
        int responseCode = 0;
        try {
            contentLength = httpURLConnection.getContentLength();
            responseCode = httpURLConnection.getResponseCode();
            headerField = httpURLConnection.getHeaderField(Constants.Network.APP_DATA_HEADER);
        } catch (IOException e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Failed to retrieve response data due to an I/O exception: ");
            sbC.append(e10.getLocalizedMessage());
            agentLog.debug(sbC.toString());
        } catch (IllegalStateException e11) {
            AgentLog agentLog2 = log;
            StringBuilder sbC2 = b.c("Failed to retrieve response data on a closed connection: ");
            sbC2.append(e11.getLocalizedMessage());
            agentLog2.debug(sbC2.toString());
        } catch (NullPointerException e12) {
            AgentLog agentLog3 = log;
            StringBuilder sbC3 = b.c("Failed to retrieve response code due to underlying (Harmony?) NPE");
            sbC3.append(e12.getLocalizedMessage());
            agentLog3.error(sbC3.toString());
        }
        inspectAndInstrumentResponse(transactionState, headerField, contentLength, responseCode);
    }
}
