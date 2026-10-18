package com.newrelic.agent.android.distributedtracing;

import a0.b;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.agentdata.AgentDataController;
import com.newrelic.agent.android.harvest.HarvestConfiguration;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class DistributedTracing implements TraceFacade, TraceListener {
    public static final String ACTION_TYPE_ATTRIBUTE = "actionType";
    public static final String NR_GUID_ATTRIBUTE = "guid";
    public static final String NR_ID_ATTRIBUTE = "id";
    public static final String NR_SPAN_ID_ATTRIBUTE = "span.id";
    public static final String NR_TRACE_ID_ATTRIBUTE = "trace.id";
    public static final DistributedTracing instance = new DistributedTracing();
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public AtomicReference<TraceListener> traceListener = new AtomicReference<>(this);

    public static long generateNormalizedTimestamp() {
        return System.currentTimeMillis();
    }

    public static String generateRandomBytes(int i10) {
        String string = "";
        while (string.length() < i10) {
            StringBuilder sbC = b.c(string);
            sbC.append(UUID.randomUUID().toString().replace("-", ""));
            string = sbC.toString();
        }
        return string.substring(0, i10);
    }

    public static String generateSpanId() {
        return generateRandomBytes(16);
    }

    public static String generateTraceId() {
        return generateRandomBytes(32);
    }

    public static final DistributedTracing getInstance() {
        return instance;
    }

    private void invokeListeners(TraceContext traceContext) {
        try {
            traceContext.requestContext.put(NR_TRACE_ID_ATTRIBUTE, traceContext.traceId);
            instance.traceListener.get().onTraceCreated(traceContext.requestContext);
        } catch (Exception e10) {
            DistributedTracing distributedTracing = instance;
            distributedTracing.traceListener.set(distributedTracing);
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("The provided listener has thrown an exception and has been removed: ");
            sbC.append(e10.getLocalizedMessage());
            agentLog.error(sbC.toString());
            AgentDataController.sendAgentData(e10, null);
        }
        try {
            traceContext.requestContext.put(NR_SPAN_ID_ATTRIBUTE, traceContext.tracePayload.getSpanId());
            instance.traceListener.get().onSpanCreated(traceContext.requestContext);
        } catch (Exception e11) {
            DistributedTracing distributedTracing2 = instance;
            distributedTracing2.traceListener.set(distributedTracing2);
            AgentLog agentLog2 = log;
            StringBuilder sbC2 = b.c("The provided listener has thrown an exception and has been removed: ");
            sbC2.append(e11.getLocalizedMessage());
            agentLog2.error(sbC2.toString());
            AgentDataController.sendAgentData(e11, new HashMap());
        }
    }

    public static void setDistributedTraceListener(TraceListener traceListener) {
        instance.setTraceListener(traceListener);
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceListener
    public void onSpanCreated(Map<String, String> map) {
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceListener
    public void onTraceCreated(Map<String, String> map) {
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceFacade
    public void setConfiguration(TraceConfiguration traceConfiguration) {
        TraceConfiguration.setInstance(traceConfiguration);
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceFacade
    public void setTraceListener(TraceListener traceListener) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            if (traceListener == null) {
                this.traceListener.set(this);
            } else {
                this.traceListener.set(traceListener);
            }
        }
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceFacade
    public TraceContext startTrace(TransactionState transactionState) {
        TraceContext traceContextCreateTraceContext = TraceContext.createTraceContext(new HashMap<String, String>(transactionState) { // from class: com.newrelic.agent.android.distributedtracing.DistributedTracing.1
            public final /* synthetic */ TransactionState val$transactionState;

            {
                this.val$transactionState = transactionState;
                put("url", transactionState.getUrl());
                put("httpMethod", transactionState.getHttpMethod());
                put("thread.id", Long.toString(Thread.currentThread().getId()));
            }
        });
        invokeListeners(traceContextCreateTraceContext);
        return traceContextCreateTraceContext;
    }

    public void setConfiguration(HarvestConfiguration harvestConfiguration) {
        TraceConfiguration.getInstance().setConfiguration(harvestConfiguration);
    }
}
