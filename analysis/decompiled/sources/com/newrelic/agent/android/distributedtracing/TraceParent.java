package com.newrelic.agent.android.distributedtracing;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class TraceParent implements TraceHeader {
    public static final String TRACE_PARENT_HEADER = "traceparent";
    public static final String TRACE_PARENT_HEADER_FMT = "%s-%s-%s-%s";
    public static final int TRACE_PARENT_VERSION = 0;
    public final String parentId = DistributedTracing.generateSpanId();
    public final TraceContext traceContext;

    public static class W3CTraceParent extends TraceParent {
        public static final String TRACE_PARENT_HEADER_REGEX = "^(\\d+)-([A-Fa-f0-9]{32})-([A-Fa-f0-9]{16})?-(\\d+)$";

        public W3CTraceParent(TraceContext traceContext) {
            super(traceContext);
        }

        @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
        public String getHeaderValue() {
            Locale locale = Locale.ROOT;
            TraceContext traceContext = this.traceContext;
            return String.format(locale, TraceParent.TRACE_PARENT_HEADER_FMT, getVersion(), traceContext.traceId, this.parentId, traceContext.getSampled());
        }
    }

    public TraceParent(TraceContext traceContext) {
        this.traceContext = traceContext;
    }

    public static TraceParent createTraceParent(TraceContext traceContext) {
        return new W3CTraceParent(traceContext);
    }

    @Override // com.newrelic.agent.android.distributedtracing.TraceHeader
    public String getHeaderName() {
        return TRACE_PARENT_HEADER;
    }

    public String getParentId() {
        return this.parentId;
    }

    public String getVersion() {
        return String.format(Locale.ROOT, "%02x", 0);
    }
}
