package com.nike.adapt.adk;

import o7.x;
import p4.h;
import qd.l;
import rd.o;
import v9.p;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceController$minimumFirmwareRequirementNotMet$1 extends o implements l<p, fd.o> {
    public static final DeviceController$minimumFirmwareRequirementNotMet$1 INSTANCE = new DeviceController$minimumFirmwareRequirementNotMet$1();

    public DeviceController$minimumFirmwareRequirementNotMet$1() {
        super(1);
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(p pVar) {
        invoke2(pVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(p pVar) {
        h.j(pVar, "$this$null");
        x xVar = x.f12420a;
        String tag = DeviceController.Companion.getTAG();
        h.i(tag, "TAG");
        xVar.b(tag, "FW Minimum Not Met");
    }
}
