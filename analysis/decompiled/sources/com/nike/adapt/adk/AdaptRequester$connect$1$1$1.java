package com.nike.adapt.adk;

import ea.m;
import o7.x;
import qd.l;
import rd.o;
import v9.e0;
import v9.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptRequester$connect$1$1$1 extends o implements l<e0, fd.o> {
    public final /* synthetic */ m $it;
    public final /* synthetic */ v9.l $this_apply;
    public final /* synthetic */ AdaptRequester this$0;

    /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$connect$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class AnonymousClass1 extends o implements l<h, fd.o> {
        public final /* synthetic */ AdaptRequester this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AdaptRequester adaptRequester) {
            super(1);
            this.this$0 = adaptRequester;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(h hVar) {
            invoke2(hVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(h hVar) {
            p4.h.j(hVar, "$this$connectOrReportPermissionMissing");
            this.this$0.postResults(new ConnectedAndAuthenticatedToPair(this.this$0.requesterEventUUID, Shoe.LEFT, this.this$0.myDevice));
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$connect$1$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class AnonymousClass2 extends o implements l<h, fd.o> {
        public final /* synthetic */ AdaptRequester this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AdaptRequester adaptRequester) {
            super(1);
            this.this$0 = adaptRequester;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(h hVar) {
            invoke2(hVar);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(h hVar) {
            p4.h.j(hVar, "$this$connectOrReportPermissionMissing");
            this.this$0.postResults(new ConnectedAndAuthenticatedToPair(this.this$0.requesterEventUUID, Shoe.RIGHT, this.this$0.myDevice));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptRequester$connect$1$1$1(m mVar, AdaptRequester adaptRequester, v9.l lVar) {
        super(1);
        this.$it = mVar;
        this.this$0 = adaptRequester;
        this.$this_apply = lVar;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(e0 e0Var) {
        invoke2(e0Var);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(e0 e0Var) {
        p4.h.j(e0Var, "$this$pairedDevicesUpdatedListener");
        Shoe shoe = Shoe.BOTH;
        p4.h.j(shoe, "shoe");
        x.f12420a.a(shoe + " ConnectRequest");
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        inMemoryCache.getLeftDevice().setMaxTightness(this.$it.f6667k.f6615m);
        inMemoryCache.getRightDevice().setMaxTightness(this.$it.f6668l.f6615m);
        AdaptRequester adaptRequester = this.this$0;
        adaptRequester.connectOrReportPermissionMissing(this.$this_apply, Shoe.LEFT, new AnonymousClass1(adaptRequester));
        AdaptRequester adaptRequester2 = this.this$0;
        adaptRequester2.connectOrReportPermissionMissing(this.$this_apply, Shoe.RIGHT, new AnonymousClass2(adaptRequester2));
        this.$this_apply.j(null);
    }
}
