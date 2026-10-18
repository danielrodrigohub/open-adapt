package com.newrelic.agent.android.distributedtracing;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class TracePayload implements TraceHeader {
    public static final String ACCOUNT_ID_KEY = "ac";
    public static final String APP_ID_KEY = "ap";
    public static final String CALLER_TYPE = "Mobile";
    public static final String DATA_KEY = "d";
    public static final String GUID_KEY = "id";
    public static final int MAJOR_VERSION = 0;
    public static final int MINOR_VERSION = 2;
    public static final String PAYLOAD_TYPE_KEY = "ty";
    public static final String TIMESTAMP_KEY = "ti";
    public static final String TRACE_ID_KEY = "tr";
    public static final String TRACE_PAYLOAD_HEADER = "newrelic";
    public static final String VERSION_KEY = "v";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public final String spanId;
    public final long timestampMs = DistributedTracing.generateNormalizedTimestamp();
    public final TraceContext traceContext;

    public TracePayload(TraceContext traceContext) {
        this.traceContext = traceContext;
        TracePayload tracePayload = traceContext.tracePayload;
        this.spanId = tracePayload == null ? traceContext.getParentId() : tracePayload.spanId;
    }

    public String asBase64Json() {
        try {
            return Agent.getEncoder().encodeNoWrap(asJson().toString().getBytes());
        } catch (Exception e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("asBase64Json: ");
            sbC.append(e10.getLocalizedMessage());
            agentLog.error(sbC.toString());
            return "";
        }
    }

    public JsonObject asJson() {
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject2 = new JsonObject();
        try {
            jsonArray.add(new JsonPrimitive((Number) 0));
            jsonArray.add(new JsonPrimitive((Number) 2));
            jsonObject2.add(PAYLOAD_TYPE_KEY, new JsonPrimitive("Mobile"));
            jsonObject2.add(ACCOUNT_ID_KEY, new JsonPrimitive(this.traceContext.traceConfiguration.accountId));
            jsonObject2.add(APP_ID_KEY, new JsonPrimitive(this.traceContext.traceConfiguration.applicationId));
            jsonObject2.add(TRACE_ID_KEY, new JsonPrimitive(this.traceContext.traceId));
            jsonObject2.add("id", new JsonPrimitive(this.spanId));
            jsonObject2.add(TIMESTAMP_KEY, new JsonPrimitive((Number) Long.valueOf(this.timestampMs)));
            jsonObject.add(VERSION_KEY, jsonArray);
            jsonObject.add(DATA_KEY, jsonObject2);
        } catch (Exception e10) {
            log.error("Unable to create payload asJSON", e10);
        }
        return jsonObject;
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
    public String getHeaderName() {
        return TRACE_PAYLOAD_HEADER;
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
    public String getHeaderValue() {
        return asBase64Json();
    }

    public String getSpanId() {
        return this.spanId;
    }

    public String getTraceId() {
        return this.traceContext.getTraceId();
    }
}
