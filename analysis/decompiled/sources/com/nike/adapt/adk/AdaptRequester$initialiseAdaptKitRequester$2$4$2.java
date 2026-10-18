package com.nike.adapt.adk;

import ea.m;
import p4.h;
import qd.l;
import rd.o;
import v9.e0;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptRequester$initialiseAdaptKitRequester$2$4$2 extends o implements l<e0, fd.o> {
    public final /* synthetic */ m $it;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptRequester$initialiseAdaptKitRequester$2$4$2(m mVar) {
        super(1);
        this.$it = mVar;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(e0 e0Var) {
        invoke2(e0Var);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(e0 e0Var) {
        h.j(e0Var, "$this$pairedDevicesUpdatedListener");
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        inMemoryCache.getLeftDevice().setMaxTightness(this.$it.f6667k.f6615m);
        inMemoryCache.getRightDevice().setMaxTightness(this.$it.f6668l.f6615m);
    }
}
