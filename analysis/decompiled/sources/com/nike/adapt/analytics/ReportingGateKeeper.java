package com.nike.adapt.analytics;

import androidx.lifecycle.o;
import fd.d;
import p4.h;

/* JADX INFO: compiled from: ReportingGateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ReportingGateKeeper {
    public static final ReportingGateKeeper INSTANCE = new ReportingGateKeeper();
    private static final d nikeReporter$delegate = o.x(ReportingGateKeeper$nikeReporter$2.INSTANCE);
    private static final d externalReporter$delegate = o.x(ReportingGateKeeper$externalReporter$2.INSTANCE);

    private ReportingGateKeeper() {
    }

    public static /* synthetic */ void getNikeReporter$annotations() {
    }

    public final o7.o getExternalReporter() {
        return (o7.o) externalReporter$delegate.getValue();
    }

    public final NikeReporter getNikeReporter() {
        return (NikeReporter) nikeReporter$delegate.getValue();
    }

    public final void report(AnalysisEvent analysisEvent) {
        h.j(analysisEvent, "analysisEvent");
        Track breadCrumb = analysisEvent.getBreadCrumb();
        if (breadCrumb != null) {
            INSTANCE.getNikeReporter().report(breadCrumb);
        }
    }
}
