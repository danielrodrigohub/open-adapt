package com.nike.adapt.adk;

import o7.x;
import p4.h;
import qd.l;
import rd.o;
import v9.j;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceController$notConnected$1 extends o implements l<j, fd.o> {
    public static final DeviceController$notConnected$1 INSTANCE = new DeviceController$notConnected$1();

    public DeviceController$notConnected$1() {
        super(1);
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(j jVar) {
        invoke2(jVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(j jVar) {
        h.j(jVar, "$this$null");
        x.f12420a.a("FitCalibrateStartRequest : Not Connected");
    }
}
