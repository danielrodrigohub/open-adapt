package com.nike.adapt.adk;

import ea.r;
import p4.h;
import qd.l;
import rd.o;
import v9.s;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceController$modeListener$1 extends o implements l<s, fd.o> {
    public final /* synthetic */ DeviceController this$0;

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$modeListener$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass1 extends o implements l<r, fd.o> {
        public final /* synthetic */ DeviceController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DeviceController deviceController) {
            super(1);
            this.this$0 = deviceController;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(r rVar) {
            invoke2(rVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            h.j(rVar, "$this$null");
            this.this$0.publish(new SnapshotListUpdated(this.this$0.controllerEventUUID, rVar.f6686i));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceController$modeListener$1(DeviceController deviceController) {
        super(1);
        this.this$0 = deviceController;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(s sVar) {
        invoke2(sVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(s sVar) {
        h.j(sVar, "$this$modeListener");
        sVar.f16811b = new AnonymousClass1(this.this$0);
    }
}
