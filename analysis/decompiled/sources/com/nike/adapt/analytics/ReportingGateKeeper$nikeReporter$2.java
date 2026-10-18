package com.nike.adapt.analytics;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: ReportingGateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ReportingGateKeeper$nikeReporter$2 extends o implements a<NikeReporterImpl> {
    public static final ReportingGateKeeper$nikeReporter$2 INSTANCE = new ReportingGateKeeper$nikeReporter$2();

    public ReportingGateKeeper$nikeReporter$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // qd.a
    public final NikeReporterImpl invoke() {
        NikeReporterImpl nikeReporterImpl = NikeReporterImpl.INSTANCE;
        nikeReporterImpl.initialize();
        return nikeReporterImpl;
    }
}
