package com.google.android.material.datepicker;

import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.Trace;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: PickerFragment.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class y extends androidx.fragment.app.m implements TraceFieldInterface {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final LinkedHashSet<x<Object>> f5272a0 = new LinkedHashSet<>();

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public final void _nr_setTrace(Trace trace) {
    }

    public boolean p0(x<Object> xVar) {
        return this.f5272a0.add(xVar);
    }
}
