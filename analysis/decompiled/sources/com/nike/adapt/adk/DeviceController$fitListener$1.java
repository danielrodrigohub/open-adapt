package com.nike.adapt.adk;

import ba.v;
import ba.z;
import o7.x;
import p4.h;
import qd.l;
import rd.o;
import v9.q;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceController$fitListener$1 extends o implements l<q, fd.o> {
    public final /* synthetic */ DeviceController this$0;

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$fitListener$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass1 extends o implements l<v, fd.o> {
        public final /* synthetic */ DeviceController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DeviceController deviceController) {
            super(1);
            this.this$0 = deviceController;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(v vVar) {
            invoke2(vVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(v vVar) {
            h.j(vVar, "$this$null");
            x.f12420a.a("FindYouFit Update ::: " + vVar + ".toString()");
            DeviceController deviceController = this.this$0;
            boolean z10 = vVar instanceof z;
            deviceController.publish(new FitCalibrateResult(deviceController.controllerEventUUID, vVar.a() == 1 ? Shoe.LEFT : Shoe.RIGHT, z10 ? CalibrateResult.MAXIMUM_FOUND_FIT : CalibrateResult.Companion.valueOf(vVar), z10 ? String.valueOf(((z) vVar).f3747k) : null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceController$fitListener$1(DeviceController deviceController) {
        super(1);
        this.this$0 = deviceController;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(q qVar) {
        invoke2(qVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(q qVar) {
        h.j(qVar, "$this$fitListener");
        qVar.f16773b = new AnonymousClass1(this.this$0);
    }
}
