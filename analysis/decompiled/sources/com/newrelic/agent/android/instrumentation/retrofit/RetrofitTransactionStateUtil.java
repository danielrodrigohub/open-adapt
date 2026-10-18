package com.newrelic.agent.android.instrumentation.retrofit;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.distributedtracing.DistributedTracing;
import com.newrelic.agent.android.distributedtracing.TraceContext;
import com.newrelic.agent.android.distributedtracing.TraceHeader;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.util.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class RetrofitTransactionStateUtil extends TransactionStateUtil {
    public static void addTransactionAndErrorData(TransactionState transactionState, Response response) {
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd == null) {
            return;
        }
        if (transactionState.isErrorOrFailure()) {
            String appDataHeader = getAppDataHeader(response.getHeaders(), Constants.Network.CONTENT_TYPE_HEADER);
            TreeMap treeMap = new TreeMap();
            if (appDataHeader != null && appDataHeader.length() > 0 && !"".equals(appDataHeader)) {
                treeMap.put(Constants.Transactions.CONTENT_TYPE, appDataHeader);
            }
            treeMap.put(Constants.Transactions.CONTENT_LENGTH, transactionState.getBytesReceived() + "");
            transactionDataEnd.setParams(treeMap);
            Measurements.addHttpError(transactionDataEnd);
        }
        TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        setDistributedTraceHeaders(transactionState, response);
    }

    private static String getAppDataHeader(List<Header> list, String str) {
        if (list == null) {
            return null;
        }
        for (Header header : list) {
            if (header.getName() != null && header.getName().equalsIgnoreCase(str)) {
                return header.getValue();
            }
        }
        return null;
    }

    public static void inspectAndInstrument(TransactionState transactionState, Request request) {
        transactionState.setUrl(request.getUrl());
        transactionState.setHttpMethod(request.getMethod());
        transactionState.setCarrier(Agent.getActiveNetworkCarrier());
        transactionState.setWanType(Agent.getActiveNetworkWanType());
    }

    public static void inspectAndInstrumentResponse(TransactionState transactionState, Response response) {
        String appDataHeader = getAppDataHeader(response.getHeaders(), Constants.Network.APP_DATA_HEADER);
        if (appDataHeader != null && !"".equals(appDataHeader)) {
            transactionState.setAppData(appDataHeader);
        }
        transactionState.setStatusCode(response.getStatus());
        long length = response.getBody().length();
        if (length >= 0) {
            transactionState.setBytesReceived(length);
        }
        addTransactionAndErrorData(transactionState, response);
    }

    public static Request setDistributedTraceHeaders(TransactionState transactionState, Request request) {
        ArrayList arrayList = new ArrayList(request.getHeaders());
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TraceContext traceContextStartTrace = DistributedTracing.getInstance().startTrace(transactionState);
            transactionState.setTrace(traceContextStartTrace);
            if (traceContextStartTrace != null) {
                try {
                    for (TraceHeader traceHeader : traceContextStartTrace.getHeaders()) {
                        arrayList.add(new Header(traceHeader.getHeaderName(), traceHeader.getHeaderValue()));
                    }
                } catch (Exception e10) {
                    TraceContext.reportSupportabilityExceptionMetric(e10);
                }
            }
            TraceContext.reportSupportabilityMetrics();
            return new Request(request.getMethod(), request.getUrl(), arrayList, request.getBody());
        }
        return request;
    }

    public static Response setDistributedTraceHeaders(TransactionState transactionState, Response response) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            ArrayList arrayList = new ArrayList(response.getHeaders());
            TraceContext traceContextStartTrace = DistributedTracing.getInstance().startTrace(transactionState);
            transactionState.setTrace(traceContextStartTrace);
            if (traceContextStartTrace != null) {
                try {
                    for (TraceHeader traceHeader : traceContextStartTrace.getHeaders()) {
                        arrayList.add(new Header(traceHeader.getHeaderName(), traceHeader.getHeaderValue()));
                    }
                } catch (Exception e10) {
                    TraceContext.reportSupportabilityExceptionMetric(e10);
                }
            }
            return new Response(response.getUrl(), response.getStatus(), response.getReason(), arrayList, response.getBody());
        }
        return response;
    }
}
