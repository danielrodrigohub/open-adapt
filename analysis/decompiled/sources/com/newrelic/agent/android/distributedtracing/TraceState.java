package com.newrelic.agent.android.distributedtracing;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class TraceState implements TraceHeader {
    public static final String TRACE_STATE_HEADER = "tracestate";
    public static final int TRACE_STATE_PARENT_TYPE = 2;
    public static final int TRACE_STATE_VERSION = 0;
    public final TraceContext traceContext;
    public final long timestampMs = DistributedTracing.generateNormalizedTimestamp();
    public final Map<String, String> entries = new HashMap();

    public static class W3CTraceState extends TraceState {
        public static final String TRACE_STATE_ENTRY_REGEX = "(\\d)-(\\d+)-(\\d+)?-(\\d+)?-(\\w*)?-(\\w+)?-(\\d{1,2})?-(\\w)?-(\\d+)$";
        public static final String TRACE_STATE_HEADER_FMT = "%1d-%1d-%s-%s-%s-%s-%s-%s-%d";
        public static final String TRACE_STATE_HEADER_REGEX = "^(\\d+)?@nr=(\\d)-(\\d)-(\\d+)?-(\\d+)?-(\\w+)?-(\\w)?-(\\d{1,2})?-(\\w)?-(\\d+)$";
        public static final String TRACE_STATE_VENDOR_REGEX = "^(\\d+?)(@nr)(=.*)?";

        public W3CTraceState(TraceContext traceContext) {
            super(traceContext);
            this.entries.put(traceContext.getVendor(), getVendorState());
        }

        @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
        public String getHeaderValue() {
            StringBuilder sb2 = new StringBuilder();
            for (String str : this.entries.keySet()) {
                sb2.append(String.format("%s=%s,", str, this.entries.get(str)));
            }
            sb2.deleteCharAt(sb2.length() - 1);
            return sb2.toString();
        }

        public String getVendorState() {
            return String.format(Locale.ROOT, TRACE_STATE_HEADER_FMT, 0, 2, this.traceContext.getAccountId(), this.traceContext.getApplicationId(), this.traceContext.getParentId(), "", "", "", Long.valueOf(this.timestampMs));
        }
    }

    public TraceState(TraceContext traceContext) {
        this.traceContext = traceContext;
    }

    public static TraceState createTraceState(TraceContext traceContext) {
        return new W3CTraceState(traceContext);
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
    public String getHeaderName() {
        return TRACE_STATE_HEADER;
    }
}
