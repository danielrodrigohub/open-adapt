package com.nike.adapt.adk;

import o7.x;
import p4.h;
import qd.l;
import qd.p;
import rd.o;
import v9.f;
import v9.g;
import v9.g2;
import v9.h2;
import v9.i;
import w9.u1;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceController$pairListener$1 extends o implements l<i, fd.o> {
    public final /* synthetic */ DeviceController this$0;

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$pairListener$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass1 extends o implements l<h2<g>, fd.o> {
        public final /* synthetic */ DeviceController this$0;

        /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$pairListener$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DeviceController.kt */
        public static final class C00971 extends o implements p<g, u1, fd.o> {
            public final /* synthetic */ DeviceController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00971(DeviceController deviceController) {
                super(2);
                this.this$0 = deviceController;
            }

            @Override // qd.p
            public /* bridge */ /* synthetic */ fd.o invoke(g gVar, u1 u1Var) {
                invoke2(gVar, u1Var);
                return fd.o.f7408a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(g gVar, u1 u1Var) {
                h.j(gVar, "adaptKitControllerResult");
                h.j(u1Var, "adaptKitShoe");
                this.this$0.mapAndUpdateDevice(u1Var, gVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DeviceController deviceController) {
            super(1);
            this.this$0 = deviceController;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(h2<g> h2Var) {
            invoke2(h2Var);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(h2<g> h2Var) {
            h.j(h2Var, "$this$null");
            h2Var.f16583c = new C00971(this.this$0);
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$pairListener$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass2 extends o implements l<g2<f>, fd.o> {
        public final /* synthetic */ DeviceController this$0;

        /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$pairListener$1$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: DeviceController.kt */
        public static final class AnonymousClass1 extends o implements l<f, fd.o> {
            public final /* synthetic */ DeviceController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(DeviceController deviceController) {
                super(1);
                this.this$0 = deviceController;
            }

            @Override // qd.l
            public /* bridge */ /* synthetic */ fd.o invoke(f fVar) {
                invoke2(fVar);
                return fd.o.f7408a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(f fVar) {
                h.j(fVar, "$this$null");
                this.this$0.mapAndPublishError(fVar);
                x.f12420a.a("DeviceController : allError : " + fVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(DeviceController deviceController) {
            super(1);
            this.this$0 = deviceController;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(g2<f> g2Var) {
            invoke2(g2Var);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(g2<f> g2Var) {
            h.j(g2Var, "$this$null");
            g2Var.f16565b = new AnonymousClass1(this.this$0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceController$pairListener$1(DeviceController deviceController) {
        super(1);
        this.this$0 = deviceController;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(i iVar) {
        invoke2(iVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(i iVar) {
        h.j(iVar, "$this$deviceControllerListener");
        iVar.f16598e = new AnonymousClass1(this.this$0);
        iVar.f16599f = new AnonymousClass2(this.this$0);
    }
}
