package com.nike.adapt.adk;

import androidx.activity.k;
import com.nike.adapt.BigfootApplication;
import i8.d;
import o7.x;
import p4.h;
import qd.l;
import rd.o;
import v9.e;
import v9.f2;
import v9.h2;
import v9.i;
import v9.s3;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptRequester$pairListener$1 extends o implements l<i, fd.o> {
    public final /* synthetic */ AdaptRequester this$0;

    /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$pairListener$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class AnonymousClass1 extends o implements l<h2<f2>, fd.o> {
        public final /* synthetic */ AdaptRequester this$0;

        /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$pairListener$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: AdaptRequester.kt */
        public static final class C00961 extends o implements l<f2, fd.o> {
            public final /* synthetic */ AdaptRequester this$0;

            /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$pairListener$1$1$1$WhenMappings */
            /* JADX INFO: compiled from: AdaptRequester.kt */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[e.values().length];
                    iArr[0] = 1;
                    iArr[1] = 2;
                    iArr[2] = 3;
                    iArr[3] = 4;
                    iArr[4] = 5;
                    iArr[5] = 6;
                    iArr[6] = 7;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00961(AdaptRequester adaptRequester) {
                super(1);
                this.this$0 = adaptRequester;
            }

            @Override // qd.l
            public /* bridge */ /* synthetic */ fd.o invoke(f2 f2Var) {
                invoke2(f2Var);
                return fd.o.f7408a;
            }

            /* JADX WARN: Code duplicated, block: B:20:0x005f  */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(f2 f2Var) {
                h.j(f2Var, "$this$null");
                this.this$0.leftDeviceCacheADK.setLastKnownConnectionState(f2Var.f16547m);
                x.f12420a.a("CONNECTION UPDATE LEFT : " + f2Var);
                int iOrdinal = f2Var.f16547m.ordinal();
                if (iOrdinal == 0) {
                    AdaptRequester adaptRequester = this.this$0;
                    d dVar = this.this$0.requesterEventUUID;
                    Shoe shoe = Shoe.LEFT;
                    adaptRequester.postResults(new Disconnected(dVar, shoe, this.this$0.myDevice));
                    this.this$0.connectTo(shoe);
                    return;
                }
                if (iOrdinal == 1) {
                    AdaptRequester adaptRequester2 = this.this$0;
                    d dVar2 = this.this$0.requesterEventUUID;
                    Shoe shoe2 = Shoe.LEFT;
                    adaptRequester2.postResults(new Disconnected(dVar2, shoe2, this.this$0.myDevice));
                    this.this$0.connectTo(shoe2);
                    return;
                }
                if (iOrdinal == 2) {
                    this.this$0.postResults(new ConnectingToPair(this.this$0.requesterEventUUID, Shoe.LEFT, this.this$0.myDevice));
                    return;
                }
                if (iOrdinal != 6) {
                    return;
                }
                if (this.this$0.canExecuteOnRequester()) {
                    BigfootApplication.e eVar = BigfootApplication.f5638p;
                    if (BigfootApplication.f5646x) {
                        v9.l lVar = this.this$0.requester;
                        if (lVar == null) {
                            h.C("requester");
                            throw null;
                        }
                        k.f(lVar, new s3(null, 1, null));
                    } else {
                        this.this$0.getNoDevices().invoke();
                    }
                } else {
                    this.this$0.getNoDevices().invoke();
                }
                this.this$0.postResults(new ConnectedAndAuthenticatedToPair(this.this$0.requesterEventUUID, Shoe.LEFT, this.this$0.myDevice));
            }
        }

        /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$pairListener$1$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: AdaptRequester.kt */
        public static final class AnonymousClass2 extends o implements l<f2, fd.o> {
            public final /* synthetic */ AdaptRequester this$0;

            /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$pairListener$1$1$2$WhenMappings */
            /* JADX INFO: compiled from: AdaptRequester.kt */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[e.values().length];
                    iArr[0] = 1;
                    iArr[1] = 2;
                    iArr[2] = 3;
                    iArr[3] = 4;
                    iArr[4] = 5;
                    iArr[5] = 6;
                    iArr[6] = 7;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(AdaptRequester adaptRequester) {
                super(1);
                this.this$0 = adaptRequester;
            }

            @Override // qd.l
            public /* bridge */ /* synthetic */ fd.o invoke(f2 f2Var) {
                invoke2(f2Var);
                return fd.o.f7408a;
            }

            /* JADX WARN: Code duplicated, block: B:20:0x005f  */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(f2 f2Var) {
                h.j(f2Var, "$this$null");
                this.this$0.rightDeviceCacheADK.setLastKnownConnectionState(f2Var.f16547m);
                x.f12420a.a("CONNECTION UPDATE RIGHT : " + f2Var);
                int iOrdinal = f2Var.f16547m.ordinal();
                if (iOrdinal == 0) {
                    AdaptRequester adaptRequester = this.this$0;
                    d dVar = this.this$0.requesterEventUUID;
                    Shoe shoe = Shoe.RIGHT;
                    adaptRequester.postResults(new Disconnected(dVar, shoe, this.this$0.myDevice));
                    this.this$0.connectTo(shoe);
                    return;
                }
                if (iOrdinal == 1) {
                    AdaptRequester adaptRequester2 = this.this$0;
                    d dVar2 = this.this$0.requesterEventUUID;
                    Shoe shoe2 = Shoe.RIGHT;
                    adaptRequester2.postResults(new Disconnected(dVar2, shoe2, this.this$0.myDevice));
                    this.this$0.connectTo(shoe2);
                    return;
                }
                if (iOrdinal == 2) {
                    this.this$0.postResults(new ConnectingToPair(this.this$0.requesterEventUUID, Shoe.RIGHT, this.this$0.myDevice));
                    return;
                }
                if (iOrdinal != 6) {
                    return;
                }
                if (this.this$0.canExecuteOnRequester()) {
                    BigfootApplication.e eVar = BigfootApplication.f5638p;
                    if (BigfootApplication.f5646x) {
                        v9.l lVar = this.this$0.requester;
                        if (lVar == null) {
                            h.C("requester");
                            throw null;
                        }
                        k.g(lVar, new s3(null, 1, null));
                    } else {
                        this.this$0.getNoDevices();
                    }
                } else {
                    this.this$0.getNoDevices();
                }
                this.this$0.postResults(new ConnectedAndAuthenticatedToPair(this.this$0.requesterEventUUID, Shoe.RIGHT, this.this$0.myDevice));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AdaptRequester adaptRequester) {
            super(1);
            this.this$0 = adaptRequester;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(h2<f2> h2Var) {
            invoke2(h2Var);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(h2<f2> h2Var) {
            h.j(h2Var, "$this$null");
            h2Var.f16581a = new C00961(this.this$0);
            h2Var.f16582b = new AnonymousClass2(this.this$0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptRequester$pairListener$1(AdaptRequester adaptRequester) {
        super(1);
        this.this$0 = adaptRequester;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(i iVar) {
        invoke2(iVar);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(i iVar) {
        h.j(iVar, "$this$deviceControllerListener");
        iVar.f16596c = new AnonymousClass1(this.this$0);
    }
}
