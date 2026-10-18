package com.nike.adapt.analytics;

import qd.a;
import rd.o;

/* JADX INFO: compiled from: ReportingGateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ReportingGateKeeper$externalReporter$2 extends o implements a<NikeReporter> {
    public static final ReportingGateKeeper$externalReporter$2 INSTANCE = new ReportingGateKeeper$externalReporter$2();

    public ReportingGateKeeper$externalReporter$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // qd.a
    public final NikeReporter invoke() {
        return ReportingGateKeeper.INSTANCE.getNikeReporter();
    }
}
