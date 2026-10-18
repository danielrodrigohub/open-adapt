package com.nike.adapt.analytics;

import com.nike.adapt.BigfootApplication;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: ReportingGateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NikeReporterImpl$sessionId$2 extends o implements a<String> {
    public static final NikeReporterImpl$sessionId$2 INSTANCE = new NikeReporterImpl$sessionId$2();

    public NikeReporterImpl$sessionId$2() {
        super(0);
    }

    @Override // qd.a
    public final String invoke() {
        BigfootApplication.e eVar = BigfootApplication.f5638p;
        return BigfootApplication.f5645w.getValue();
    }
}
