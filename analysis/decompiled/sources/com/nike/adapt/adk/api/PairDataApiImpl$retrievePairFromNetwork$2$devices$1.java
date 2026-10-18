package com.nike.adapt.adk.api;

import com.nike.adapt.adk.InMemoryCache;
import ea.m;
import ea.x;
import java.util.ArrayList;
import java.util.List;
import jd.d;
import p4.h;
import qd.l;
import rd.o;
import rd.u;
import v9.d0;

/* JADX INFO: compiled from: PairDataApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PairDataApiImpl$retrievePairFromNetwork$2$devices$1 extends o implements l<d0, fd.o> {
    public final /* synthetic */ d<List<m>> $it;
    public final /* synthetic */ u $returnedDevices;

    /* JADX INFO: renamed from: com.nike.adapt.adk.api.PairDataApiImpl$retrievePairFromNetwork$2$devices$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: PairDataApi.kt */
    public static final class AnonymousClass1 extends o implements l<x, fd.o> {
        public final /* synthetic */ d<List<m>> $it;
        public final /* synthetic */ u $returnedDevices;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(u uVar, d<? super List<m>> dVar) {
            super(1);
            this.$returnedDevices = uVar;
            this.$it = dVar;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(x xVar) {
            invoke2(xVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(x xVar) {
            h.j(xVar, "$this$null");
            InMemoryCache.INSTANCE.setUseInternetPerSession(false);
            u uVar = this.$returnedDevices;
            if (uVar.f14793h) {
                return;
            }
            uVar.f14793h = true;
            this.$it.resumeWith(xVar.f6704k);
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.api.PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: PairDataApi.kt */
    public static final class AnonymousClass2 extends o implements l<ea.o, fd.o> {
        public final /* synthetic */ d<List<m>> $it;
        public final /* synthetic */ u $returnedDevices;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(u uVar, d<? super List<m>> dVar) {
            super(1);
            this.$returnedDevices = uVar;
            this.$it = dVar;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(ea.o oVar) {
            invoke2(oVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ea.o oVar) {
            h.j(oVar, "$this$null");
            u uVar = this.$returnedDevices;
            if (!uVar.f14793h) {
                uVar.f14793h = true;
                this.$it.resumeWith(new ArrayList());
            }
            a1.d.d("Paired Device Error Network retrieval. Message: ", oVar.f6681k, o7.x.f12420a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PairDataApiImpl$retrievePairFromNetwork$2$devices$1(u uVar, d<? super List<m>> dVar) {
        super(1);
        this.$returnedDevices = uVar;
        this.$it = dVar;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(d0 d0Var) {
        invoke2(d0Var);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(d0 d0Var) {
        h.j(d0Var, "$this$pairedDevicesListener");
        d0Var.f16502b = new AnonymousClass1(this.$returnedDevices, this.$it);
        d0Var.f16503c = new AnonymousClass2(this.$returnedDevices, this.$it);
    }
}
