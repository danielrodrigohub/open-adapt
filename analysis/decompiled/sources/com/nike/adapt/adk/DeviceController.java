package com.nike.adapt.adk;

import androidx.activity.k;
import androidx.lifecycle.b;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptFirmwareCheckStatuses;
import com.nike.adapt.adk.model.AdaptFirmwareStatus;
import com.nike.adapt.adk.model.AdaptFirmwareVersion;
import com.nike.adapt.adk.model.AdaptGestureConfigurationResponse;
import com.nike.adapt.adk.model.AdaptGestureStatistics;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.coroutine.MainCoroutineScope;
import de.n0;
import ea.m;
import fd.d;
import fd.o;
import java.util.UUID;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import ld.e;
import o7.x;
import p8.a0;
import p8.b0;
import p8.c0;
import p8.d0;
import p8.e0;
import p8.f0;
import p8.g0;
import p8.h0;
import p8.i0;
import p8.j0;
import p8.k0;
import p8.n;
import p8.t;
import p8.u;
import p8.v;
import p8.w;
import p8.z;
import qd.l;
import rd.h;
import s9.g;
import v7.c;
import v9.a;
import v9.a1;
import v9.a2;
import v9.a3;
import v9.a5;
import v9.b3;
import v9.b4;
import v9.b5;
import v9.c1;
import v9.c3;
import v9.c4;
import v9.d1;
import v9.d3;
import v9.e1;
import v9.e4;
import v9.f;
import v9.f3;
import v9.f4;
import v9.g3;
import v9.h4;
import v9.i;
import v9.i3;
import v9.i4;
import v9.j;
import v9.j2;
import v9.j3;
import v9.k2;
import v9.k3;
import v9.m5;
import v9.n3;
import v9.n4;
import v9.n5;
import v9.o4;
import v9.p;
import v9.p4;
import v9.q;
import v9.q3;
import v9.q4;
import v9.r;
import v9.s;
import v9.s4;
import v9.t4;
import v9.v0;
import v9.v3;
import v9.v4;
import v9.w0;
import v9.w2;
import v9.w3;
import v9.x0;
import v9.x1;
import v9.x2;
import v9.y;
import v9.y1;
import v9.y2;
import v9.y3;
import v9.z0;
import v9.z2;
import v9.z3;
import v9.z4;
import w9.u1;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
final class DeviceController implements b, IDeviceController {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "DeviceController";
    private final a adaptIdentifier;
    private final d adaptPreferenceHelper$delegate;
    private final i8.d controllerEventUUID;
    private final q fitListener;
    private boolean isFirmwareCallInProgress;
    private boolean isSubscribed;
    private AdaptDeviceColor leftAdaptDeviceColor;
    private AdaptDeviceColor leftGetLedAdaptDeviceColor;
    private final l<p, o> minimumFirmwareRequirementNotMet;
    private final s modeListener;
    private final l<j, o> notConnected;
    private final i pairListener;
    private v9.l requester;
    private AdaptDeviceColor rightAdaptDeviceColor;
    private AdaptDeviceColor rightGetLedAdaptDeviceColor;
    private final MainCoroutineScope uiScope;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final DeviceController create(androidx.lifecycle.i iVar, i8.d dVar) {
            p4.h.j(dVar, "eventUUID");
            return new DeviceController(iVar, dVar);
        }

        public final String getTAG() {
            return DeviceController.TAG;
        }
    }

    /* JADX INFO: compiled from: DeviceController.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$checkForFirmwareUpdates$1, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    @e(c = "com.nike.adapt.adk.DeviceController$checkForFirmwareUpdates$1", f = "DeviceController.kt", l = {395}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends ld.i implements qd.p<CoroutineScope, jd.d<? super o>, Object> {
        public int label;

        public AnonymousClass1(jd.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return DeviceController.this.new AnonymousClass1(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return ((AnonymousClass1) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0047  */
        /* JADX WARN: Code duplicated, block: B:22:0x004a  */
        /* JADX WARN: Code duplicated, block: B:24:0x0070  */
        /* JADX WARN: Code duplicated, block: B:26:0x0094  */
        /* JADX WARN: Code duplicated, block: B:27:0x0098  */
        /* JADX WARN: Code duplicated, block: B:30:0x009c  */
        /* JADX WARN: Code duplicated, block: B:31:0x00a1  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a6  */
        /* JADX WARN: Code duplicated, block: B:35:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:38:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:47:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:48:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:52:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:54:0x00dd  */
        /* JADX WARN: Code duplicated, block: B:58:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:61:0x00f8 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:63:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:64:0x00fd A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:65:0x00ff  */
        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            AdaptFirmwareCheckStatuses to;
            AdaptFirmwareStatus leftStatus;
            AdaptFirmwareStatus rightStatus;
            boolean z10;
            AdaptFirmwareStatus.UpdateAvailable updateAvailable;
            boolean readyForUpdate;
            boolean z11;
            AdaptFirmwareStatus.UpdateAvailable updateAvailable2;
            boolean readyForUpdate2;
            AdaptFirmwareStatus.UpdateAvailable updateAvailable3;
            String version;
            AdaptFirmwareStatus.UpdateAvailable updateAvailable4;
            String version2;
            g gVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.label;
            if (i10 == 0) {
                d3.e.p(obj);
                if (DeviceController.this.isFirmwareCallInProgress) {
                    return o.f7408a;
                }
                DeviceController.this.isFirmwareCallInProgress = true;
                v9.l lVar = DeviceController.this.requester;
                if (lVar != null) {
                    this.label = 1;
                    obj = lVar.c().u(this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    to = null;
                }
                if (to == null) {
                    AdaptFirmwareStatus.ErrorOccurred errorOccurred = new AdaptFirmwareStatus.ErrorOccurred(new AdaptFirmwareVersion(SafeJsonPrimitive.NULL_STRING), "Null returned");
                    DeviceController.this.publish(new GetFirmwareVersionResult(DeviceController.this.controllerEventUUID, new AdaptFirmwareCheckStatuses(errorOccurred, errorOccurred)));
                    return o.f7408a;
                }
                leftStatus = to.getLeftStatus();
                rightStatus = to.getRightStatus();
                InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                inMemoryCache.getLeftDevice().setAdaptFirmwareVersion(leftStatus.getCurrentVersion());
                inMemoryCache.getRightDevice().setAdaptFirmwareVersion(rightStatus.getCurrentVersion());
                z10 = leftStatus instanceof AdaptFirmwareStatus.UpdateAvailable;
                if (z10) {
                    updateAvailable = (AdaptFirmwareStatus.UpdateAvailable) leftStatus;
                } else {
                    updateAvailable = null;
                }
                if (updateAvailable != null) {
                    readyForUpdate = updateAvailable.getReadyForUpdate();
                } else {
                    readyForUpdate = false;
                }
                z11 = rightStatus instanceof AdaptFirmwareStatus.UpdateAvailable;
                if (z11) {
                    updateAvailable2 = (AdaptFirmwareStatus.UpdateAvailable) rightStatus;
                } else {
                    updateAvailable2 = null;
                }
                if (updateAvailable2 != null) {
                    readyForUpdate2 = updateAvailable2.getReadyForUpdate();
                } else {
                    readyForUpdate2 = false;
                }
                inMemoryCache.setHasShoeUpdates((!readyForUpdate || readyForUpdate2) && !g.f15195a.e());
                if (z10) {
                    updateAvailable3 = (AdaptFirmwareStatus.UpdateAvailable) leftStatus;
                } else {
                    updateAvailable3 = null;
                }
                if (updateAvailable3 != null || (version = updateAvailable3.getUpdatedVersion()) == null) {
                    version = leftStatus.getCurrentVersion().getVersion();
                }
                updateAvailable4 = z11 ? (AdaptFirmwareStatus.UpdateAvailable) rightStatus : null;
                if (updateAvailable4 != null || (version2 = updateAvailable4.getUpdatedVersion()) == null) {
                    version2 = rightStatus.getCurrentVersion().getVersion();
                }
                gVar = g.f15195a;
                if (gVar.g(version2, version)) {
                    if (version2 == null) {
                        version = "";
                    } else {
                        version = version2;
                    }
                } else if (version == null) {
                    version = "";
                }
                inMemoryCache.setUpdateToFirmwareVersion(version);
                inMemoryCache.setLowestFirmwareVersion(gVar.c(leftStatus.getCurrentVersion().getVersion(), rightStatus.getCurrentVersion().getVersion()));
                DeviceController.this.publish(new GetFirmwareVersionResult(DeviceController.this.controllerEventUUID, to));
                DeviceController.this.isFirmwareCallInProgress = false;
                return o.f7408a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
            fa.a aVar2 = (fa.a) obj;
            if (aVar2 != null) {
                to = AdaptMarshallerKt.parseTo(aVar2);
            } else {
                to = null;
            }
            if (to == null) {
                AdaptFirmwareStatus.ErrorOccurred errorOccurred2 = new AdaptFirmwareStatus.ErrorOccurred(new AdaptFirmwareVersion(SafeJsonPrimitive.NULL_STRING), "Null returned");
                DeviceController.this.publish(new GetFirmwareVersionResult(DeviceController.this.controllerEventUUID, new AdaptFirmwareCheckStatuses(errorOccurred2, errorOccurred2)));
                return o.f7408a;
            }
            leftStatus = to.getLeftStatus();
            rightStatus = to.getRightStatus();
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            inMemoryCache2.getLeftDevice().setAdaptFirmwareVersion(leftStatus.getCurrentVersion());
            inMemoryCache2.getRightDevice().setAdaptFirmwareVersion(rightStatus.getCurrentVersion());
            z10 = leftStatus instanceof AdaptFirmwareStatus.UpdateAvailable;
            if (z10) {
                updateAvailable = (AdaptFirmwareStatus.UpdateAvailable) leftStatus;
            } else {
                updateAvailable = null;
            }
            if (updateAvailable != null) {
                readyForUpdate = updateAvailable.getReadyForUpdate();
            } else {
                readyForUpdate = false;
            }
            z11 = rightStatus instanceof AdaptFirmwareStatus.UpdateAvailable;
            if (z11) {
                updateAvailable2 = (AdaptFirmwareStatus.UpdateAvailable) rightStatus;
            } else {
                updateAvailable2 = null;
            }
            if (updateAvailable2 != null) {
                readyForUpdate2 = updateAvailable2.getReadyForUpdate();
            } else {
                readyForUpdate2 = false;
            }
            inMemoryCache2.setHasShoeUpdates((!readyForUpdate || readyForUpdate2) && !g.f15195a.e());
            if (z10) {
                updateAvailable3 = (AdaptFirmwareStatus.UpdateAvailable) leftStatus;
            } else {
                updateAvailable3 = null;
            }
            if (updateAvailable3 != null) {
                version = leftStatus.getCurrentVersion().getVersion();
            } else {
                version = leftStatus.getCurrentVersion().getVersion();
            }
            if (z11) {
            }
            if (updateAvailable4 != null) {
                version2 = rightStatus.getCurrentVersion().getVersion();
            } else {
                version2 = rightStatus.getCurrentVersion().getVersion();
            }
            gVar = g.f15195a;
            if (gVar.g(version2, version)) {
                if (version2 == null) {
                    version = "";
                } else {
                    version = version2;
                }
            } else if (version == null) {
                version = "";
            }
            inMemoryCache2.setUpdateToFirmwareVersion(version);
            inMemoryCache2.setLowestFirmwareVersion(gVar.c(leftStatus.getCurrentVersion().getVersion(), rightStatus.getCurrentVersion().getVersion()));
            DeviceController.this.publish(new GetFirmwareVersionResult(DeviceController.this.controllerEventUUID, to));
            DeviceController.this.isFirmwareCallInProgress = false;
            return o.f7408a;
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestModeTo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class C03401 extends rd.o implements l<r, o> {
        public static final C03401 INSTANCE = new C03401();

        public C03401() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
            x.f12420a.a("ModeAddRequest : Invalid input");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestModeTo$2, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass2 extends rd.o implements l<y, o> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(y yVar) {
            invoke2(yVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(y yVar) {
            p4.h.j(yVar, "$this$$receiver");
            x.f12420a.a("ModeAddRequest : Already exists");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestModeTo$3, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass3 extends rd.o implements l<y, o> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(y yVar) {
            invoke2(yVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(y yVar) {
            p4.h.j(yVar, "$this$$receiver");
            x.f12420a.a("SelectModeRequest : Mode Does not exist");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestModeTo$4, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass4 extends rd.o implements l<y, o> {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        public AnonymousClass4() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(y yVar) {
            invoke2(yVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(y yVar) {
            p4.h.j(yVar, "$this$$receiver");
            x.f12420a.a("DeleteModeRequest : Mode Does not exist");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class C03411 extends rd.o implements l<r, o> {
        public static final C03411 INSTANCE = new C03411();

        public C03411() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$10, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass10 extends rd.o implements l<v9.b, o> {
        public static final AnonymousClass10 INSTANCE = new AnonymousClass10();

        public AnonymousClass10() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(v9.b bVar) {
            invoke2(bVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(v9.b bVar) {
            p4.h.j(bVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$11, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass11 extends rd.o implements l<r, o> {
        public static final AnonymousClass11 INSTANCE = new AnonymousClass11();

        public AnonymousClass11() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$12, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass12 extends rd.o implements l<r, o> {
        public static final AnonymousClass12 INSTANCE = new AnonymousClass12();

        public AnonymousClass12() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$13, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass13 extends rd.o implements l<r, o> {
        public static final AnonymousClass13 INSTANCE = new AnonymousClass13();

        public AnonymousClass13() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class C03422 extends rd.o implements l<r, o> {
        public static final C03422 INSTANCE = new C03422();

        public C03422() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class C03433 extends rd.o implements l<r, o> {
        public static final C03433 INSTANCE = new C03433();

        public C03433() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$4, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class C03444 extends rd.o implements l<r, o> {
        public static final C03444 INSTANCE = new C03444();

        public C03444() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$5, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass5 extends rd.o implements l<r, o> {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        public AnonymousClass5() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(r rVar) {
            invoke2(rVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(r rVar) {
            p4.h.j(rVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$8, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass8 extends rd.o implements l<v9.b, o> {
        public static final AnonymousClass8 INSTANCE = new AnonymousClass8();

        public AnonymousClass8() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(v9.b bVar) {
            invoke2(bVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(v9.b bVar) {
            p4.h.j(bVar, "$this$$receiver");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.DeviceController$requestTo$9, reason: invalid class name */
    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class AnonymousClass9 extends rd.o implements l<v9.b, o> {
        public static final AnonymousClass9 INSTANCE = new AnonymousClass9();

        public AnonymousClass9() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(v9.b bVar) {
            invoke2(bVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(v9.b bVar) {
            p4.h.j(bVar, "$this$$receiver");
        }
    }

    public DeviceController(androidx.lifecycle.i iVar, i8.d dVar) {
        p4.h.j(dVar, "eventUUID");
        this.adaptIdentifier = new a(dVar.f8823i);
        this.controllerEventUUID = dVar;
        this.uiScope = new MainCoroutineScope();
        this.adaptPreferenceHelper$delegate = androidx.lifecycle.o.w(3, DeviceController$adaptPreferenceHelper$2.INSTANCE);
        if (iVar != null) {
            iVar.a(this);
        }
        DeviceController$pairListener$1 deviceController$pairListener$1 = new DeviceController$pairListener$1(this);
        i iVar2 = new i(true);
        deviceController$pairListener$1.invoke(iVar2);
        this.pairListener = iVar2;
        DeviceController$modeListener$1 deviceController$modeListener$1 = new DeviceController$modeListener$1(this);
        s sVar = new s();
        deviceController$modeListener$1.invoke(sVar);
        this.modeListener = sVar;
        DeviceController$fitListener$1 deviceController$fitListener$1 = new DeviceController$fitListener$1(this);
        q qVar = new q();
        deviceController$fitListener$1.invoke(qVar);
        this.fitListener = qVar;
        this.notConnected = DeviceController$notConnected$1.INSTANCE;
        this.minimumFirmwareRequirementNotMet = DeviceController$minimumFirmwareRequirementNotMet$1.INSTANCE;
    }

    private final void checkForFirmwareUpdates() {
        BuildersKt__Builders_commonKt.launch$default(this.uiScope, Dispatchers.getIO(), null, new AnonymousClass1(null), 2, null);
    }

    private final h8.a getAdaptPreferenceHelper() {
        return (h8.a) this.adaptPreferenceHelper$delegate.getValue();
    }

    public static /* synthetic */ void getPairListener$app_prodRelease$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void mapAndPublishError(f fVar) {
        if (fVar instanceof b3) {
            publish(new ToggleAutoLaceError(this.controllerEventUUID, fVar.f16541l, true));
        } else if (fVar instanceof y2) {
            publish(new ToggleAutoLaceError(this.controllerEventUUID, fVar.f16541l, false));
        } else if (fVar instanceof o4) {
            publish(new SetAutoLaceError(this.controllerEventUUID, fVar.f16541l));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void mapAndUpdateDevice(u1 u1Var, v9.g gVar) {
        AdaptDeviceColor adaptDeviceColor;
        AdaptDeviceColor adaptDeviceColor2;
        Shoe shoeValueOf = Shoe.Companion.valueOf(u1Var);
        i8.d dVar = new i8.d(this.controllerEventUUID.f8822h, gVar.a().f16447h);
        if (gVar instanceof t4) {
            publish(new LaceTightenResult(dVar, shoeValueOf));
            return;
        }
        if (gVar instanceof y1) {
            Battery to = AdaptMarshallerKt.parseTo(((y1) gVar).f16928n);
            if (gVar.f6155i) {
                InMemoryCache.INSTANCE.getLeftDevice().setBattery(to);
            } else {
                InMemoryCache.INSTANCE.getRightDevice().setBattery(to);
            }
            publish(new GetBatteryPercentResult(this.controllerEventUUID, shoeValueOf, to));
            return;
        }
        if (gVar instanceof n5) {
            if (gVar.f6155i) {
                InMemoryCache.INSTANCE.getLeftDevice().setSerialNumber(((n5) gVar).f16737n);
            } else {
                InMemoryCache.INSTANCE.getRightDevice().setSerialNumber(((n5) gVar).f16737n);
            }
            publish(new GetSerialNumberResult(this.controllerEventUUID, shoeValueOf, ((n5) gVar).f16737n));
            return;
        }
        if (gVar instanceof f4) {
            f4 f4Var = (f4) gVar;
            updateTightnessCache(shoeValueOf, f4Var.f16552n);
            i8.d dVar2 = this.controllerEventUUID;
            ea.i iVar = f4Var.f16552n;
            publish(new GetLacingPercentResult(dVar2, shoeValueOf, iVar.f6648h.f6647j, iVar.f6649i.f6646j));
            return;
        }
        if (gVar instanceof w3) {
            ba.f fVar = ((w3) gVar).f16899n.f6626l;
            if (fVar != null) {
                AdaptDeviceColor adaptDeviceColor3 = new AdaptDeviceColor(AdaptMarshaller.AdaptPreset.Companion.parse(fVar), null, 2, null);
                if (shoeValueOf.isRight()) {
                    this.rightGetLedAdaptDeviceColor = adaptDeviceColor3;
                } else {
                    this.leftGetLedAdaptDeviceColor = adaptDeviceColor3;
                }
                AdaptDeviceColor adaptDeviceColor4 = this.leftGetLedAdaptDeviceColor;
                if (adaptDeviceColor4 == null || (adaptDeviceColor2 = this.rightGetLedAdaptDeviceColor) == null) {
                    return;
                }
                AdaptShoeColor adaptShoeColorCreate = AdaptShoeColor.Companion.create(adaptDeviceColor4, adaptDeviceColor2);
                getAdaptPreferenceHelper().b0(adaptShoeColorCreate);
                if (!adaptShoeColorCreate.isOff()) {
                    getAdaptPreferenceHelper().k0(adaptShoeColorCreate);
                }
                publish(new GetLedResult(this.controllerEventUUID, Shoe.LEFT, adaptDeviceColor4));
                publish(new GetLedResult(this.controllerEventUUID, Shoe.RIGHT, adaptDeviceColor2));
                this.leftGetLedAdaptDeviceColor = null;
                this.rightGetLedAdaptDeviceColor = null;
                return;
            }
            return;
        }
        if (gVar instanceof z3) {
            ba.f fVar2 = ((z3) gVar).f16954n.f6626l;
            if (fVar2 != null) {
                AdaptDeviceColor adaptDeviceColor5 = new AdaptDeviceColor(AdaptMarshaller.AdaptPreset.Companion.parse(fVar2), null, 2, null);
                if (shoeValueOf.isRight()) {
                    this.rightAdaptDeviceColor = adaptDeviceColor5;
                } else {
                    this.leftAdaptDeviceColor = adaptDeviceColor5;
                }
                AdaptDeviceColor adaptDeviceColor6 = this.leftAdaptDeviceColor;
                if (adaptDeviceColor6 == null || (adaptDeviceColor = this.rightAdaptDeviceColor) == null) {
                    return;
                }
                AdaptShoeColor adaptShoeColorCreate2 = AdaptShoeColor.Companion.create(adaptDeviceColor6, adaptDeviceColor);
                getAdaptPreferenceHelper().b0(adaptShoeColorCreate2);
                if (!adaptShoeColorCreate2.isOff()) {
                    getAdaptPreferenceHelper().k0(adaptShoeColorCreate2);
                }
                publish(new SetLedResult(this.controllerEventUUID, Shoe.LEFT, adaptDeviceColor6));
                publish(new SetLedResult(this.controllerEventUUID, Shoe.RIGHT, adaptDeviceColor));
                this.leftAdaptDeviceColor = null;
                this.rightAdaptDeviceColor = null;
                InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                if (p4.h.c(inMemoryCache.getActiveLightEffect(), c.d.f16370c)) {
                    return;
                }
                inMemoryCache.setPendingLightEffect(inMemoryCache.getActiveLightEffect());
                return;
            }
            return;
        }
        if (gVar instanceof a1) {
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            z8.a pendingLightPack = inMemoryCache2.getPendingLightPack();
            if (pendingLightPack != null) {
                inMemoryCache2.setActiveLightPack(pendingLightPack);
                inMemoryCache2.setPendingLightPack(null);
            }
            c pendingLightEffect = inMemoryCache2.getPendingLightEffect();
            if (pendingLightEffect != null) {
                inMemoryCache2.setActiveLightEffect(pendingLightEffect);
                inMemoryCache2.setPendingLightEffect(null);
            }
            publish(new StartAnimationResult(this.controllerEventUUID, shoeValueOf));
            return;
        }
        if (gVar instanceof e1) {
            InMemoryCache inMemoryCache3 = InMemoryCache.INSTANCE;
            inMemoryCache3.setActiveLightPack(z8.a.MY_LIGHTS);
            inMemoryCache3.setActiveLightEffect(c.d.f16370c);
            publish(new StopAnimationResult(this.controllerEventUUID, shoeValueOf));
            return;
        }
        if (gVar instanceof c1) {
            InMemoryCache inMemoryCache4 = InMemoryCache.INSTANCE;
            inMemoryCache4.setActiveLightPack(z8.a.MY_LIGHTS);
            inMemoryCache4.setActiveLightEffect(c.d.f16370c);
            i8.d dVar3 = this.controllerEventUUID;
            ba.g gVar2 = ((c1) gVar).f16490m;
            publish(new StopAnimationNotificationResult(dVar3, shoeValueOf, gVar2, AdaptMarshallerKt.parseTo(gVar2.f3661k)));
            return;
        }
        if (gVar instanceof w0) {
            w0 w0Var = (w0) gVar;
            boolean zIsRunning = AdaptMarshallerKt.parseTo(w0Var.f16892n).isRunning();
            InMemoryCache inMemoryCache5 = InMemoryCache.INSTANCE;
            inMemoryCache5.setActiveLightPack(zIsRunning ? z8.a.f19384l.a(w0Var.f16892n.f3658h) : z8.a.MY_LIGHTS);
            inMemoryCache5.setActiveLightEffect(zIsRunning ? c.f16365a.a(w0Var.f16892n.f3658h) : c.d.f16370c);
            publish(new GetAnimationResult(this.controllerEventUUID, shoeValueOf, AdaptMarshallerKt.parseTo(w0Var.f16892n)));
            return;
        }
        if (gVar instanceof a2) {
            Battery to2 = AdaptMarshallerKt.parseTo(((a2) gVar).f16453m);
            if (gVar.f6155i) {
                InMemoryCache.INSTANCE.getLeftDevice().setBattery(to2);
            } else {
                InMemoryCache.INSTANCE.getRightDevice().setBattery(to2);
            }
            publish(new BatteryUpdateBroadCastNotificationResult(this.controllerEventUUID, shoeValueOf, to2));
            return;
        }
        if (gVar instanceof n4) {
            n4 n4Var = (n4) gVar;
            updateTightnessCache(shoeValueOf, n4Var.f16734m);
            i8.d dVar4 = this.controllerEventUUID;
            ea.i iVar2 = n4Var.f16734m;
            publish(new ServoMoveCompleteBroadcastResult(dVar4, shoeValueOf, iVar2.f6648h.f6647j, iVar2.f6649i.f6646j));
            return;
        }
        if (gVar instanceof d3) {
            publish(new SetFootPresenceSensorResult(this.controllerEventUUID, shoeValueOf, true));
            return;
        }
        if (gVar instanceof a3) {
            publish(new SetFootPresenceSensorResult(this.controllerEventUUID, shoeValueOf, false));
            return;
        }
        if (gVar instanceof k2) {
            publish(new DeleteDevicesResult(this.controllerEventUUID, shoeValueOf));
            return;
        }
        if (gVar instanceof c4) {
            publish(new GetDeviceStatsResult(this.controllerEventUUID, shoeValueOf, AdaptMarshallerKt.parseTo(((c4) gVar).f16495n, gVar.f6155i, gVar.f6154h)));
            return;
        }
        if (gVar instanceof i4) {
            publish(new GetAutoLaceResult(this.controllerEventUUID, shoeValueOf, ((i4) gVar).f16642n.f6648h.f6647j));
            return;
        }
        if (gVar instanceof q4) {
            publish(new SetAutoLaceResult(this.controllerEventUUID, shoeValueOf));
            return;
        }
        if (gVar instanceof g3) {
            publish(new GetGestureConfigResult(this.controllerEventUUID, shoeValueOf, AdaptMarshallerKt.m3parseTo(((g3) gVar).f16566l)));
            return;
        }
        if (gVar instanceof j3) {
            publish(new SetGestureConfigResult(this.controllerEventUUID, shoeValueOf, AdaptGestureConfigurationResponse.Companion.from(((j3) gVar).f16654m)));
            return;
        }
        if (gVar instanceof n3) {
            ga.d dVar5 = ((n3) gVar).f16730l;
            publish(new GetGestureStatsResult(this.controllerEventUUID, shoeValueOf, new AdaptGestureStatistics(dVar5.f7928j, dVar5.f7926h, dVar5.f7927i)));
        } else if (gVar instanceof q3) {
            publish(new ResetGestureConfigResult(this.controllerEventUUID, shoeValueOf));
        } else if (gVar instanceof k3) {
            publish(new GestureStatsNotificationResult(this.controllerEventUUID, shoeValueOf, AdaptMarshallerKt.parseTo(((k3) gVar).f16672l)));
        } else {
            a1.d.d("Adk Result : ", gVar.b(), x.f12420a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void publish(i8.b bVar) {
        n0.b(bVar);
        s7.b.f15149a.a(bVar);
    }

    private final void updateTightnessCache(Shoe shoe, ea.i iVar) {
        int i10 = iVar.f6649i.f6646j;
        int i11 = iVar.f6648h.f6647j;
        int i12 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
        if (i12 == 1) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            inMemoryCache.getLeftDevice().setLastKnownAbsoluteTightness(i10);
            inMemoryCache.getLeftDevice().setLastKnownRelativeTightness(i11);
        } else if (i12 == 2) {
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            inMemoryCache2.getRightDevice().setLastKnownAbsoluteTightness(i10);
            inMemoryCache2.getRightDevice().setLastKnownRelativeTightness(i11);
        } else {
            if (i12 != 3) {
                return;
            }
            InMemoryCache inMemoryCache3 = InMemoryCache.INSTANCE;
            inMemoryCache3.getLeftDevice().setLastKnownAbsoluteTightness(i10);
            inMemoryCache3.getRightDevice().setLastKnownAbsoluteTightness(i10);
            inMemoryCache3.getLeftDevice().setLastKnownRelativeTightness(i11);
            inMemoryCache3.getRightDevice().setLastKnownRelativeTightness(i11);
        }
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void deleteDisconnectedShoes(m mVar) {
        if (mVar != null) {
            k.e(new v9.l(mVar), new j2(DeviceController$deleteDisconnectedShoes$1$1.INSTANCE));
        }
    }

    public final i getPairListener$app_prodRelease() {
        return this.pairListener;
    }

    public final MainCoroutineScope getUiScope() {
        return this.uiScope;
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onCreate(androidx.lifecycle.q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onDestroy(androidx.lifecycle.q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onPause(androidx.lifecycle.q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onResume(androidx.lifecycle.q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public void onStart(androidx.lifecycle.q qVar) {
        p4.h.j(qVar, "owner");
        v9.l lVar = this.requester;
        if (lVar != null) {
            lVar.f(this.pairListener);
        }
        v9.l lVar2 = this.requester;
        if (lVar2 != null) {
            lVar2.i(this.modeListener);
        }
        v9.l lVar3 = this.requester;
        if (lVar3 != null) {
            lVar3.h(this.fitListener);
        }
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public void onStop(androidx.lifecycle.q qVar) {
        p4.h.j(qVar, "owner");
        unsubscribe();
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void requestFitCalibrate(v vVar) {
        v9.l lVar;
        p4.h.j(vVar, "request");
        x.f12420a.a(vVar.getClass().getSimpleName() + "  " + vVar);
        if (vVar instanceof u) {
            v9.l lVar2 = this.requester;
            if (lVar2 != null) {
                l<j, o> lVar3 = this.notConnected;
                lVar2.e(u1.BOTH, new x2(lVar3, lVar3));
                return;
            }
            return;
        }
        if (!(vVar instanceof t) || (lVar = this.requester) == null) {
            return;
        }
        w2 w2Var = w2.f16896b;
        p4.h.j(w2Var, "adaptKitDeviceRequest");
        lVar.e(u1.BOTH, w2Var);
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void requestModeTo(p8.l lVar) {
        v9.l lVar2;
        p4.h.j(lVar, "request");
        x.f12420a.a(lVar.getClass().getSimpleName() + "  " + lVar);
        if (!(lVar instanceof p8.d)) {
            if (lVar instanceof e0) {
                v9.l lVar3 = this.requester;
                if (lVar3 != null) {
                    lVar3.e(u1.BOTH, new b5(((e0) lVar).f13324a, AnonymousClass3.INSTANCE));
                    return;
                }
                return;
            }
            if (!(lVar instanceof p8.p) || (lVar2 = this.requester) == null) {
                return;
            }
            lVar2.e(u1.BOTH, new a5(((p8.p) lVar).f13341a, AnonymousClass4.INSTANCE));
            return;
        }
        v9.l lVar4 = this.requester;
        if (lVar4 != null) {
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            p8.d dVar = (p8.d) lVar;
            String str = dVar.f13317a;
            boolean z10 = dVar.f13320d;
            ea.h.c cVar = new ea.h.c(dVar.f13318b.f6125j);
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            lVar4.e(u1.BOTH, new z4(new ea.e(uuidRandomUUID, str, z10, new ea.c(new ea.i(cVar, inMemoryCache.getLeftDevice().getMaxTightness()), new ea.d(dVar.f13318b.f6124i)), new ea.c(new ea.i(new ea.h.c(dVar.f13319c.f6125j), inMemoryCache.getRightDevice().getMaxTightness()), new ea.d(dVar.f13319c.f6124i)), (Integer) null), C03401.INSTANCE, AnonymousClass2.INSTANCE));
        }
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void requestTo(Shoe shoe, p8.l lVar) {
        p4.h.j(shoe, "shoe");
        p4.h.j(lVar, "request");
        x.f12420a.a(lVar.getClass().getSimpleName() + "  " + lVar);
        v9.l lVar2 = this.requester;
        if (lVar2 == null) {
            return;
        }
        if (lVar instanceof d0) {
            d0 d0Var = (d0) lVar;
            ea.h cVar = d0Var.f13322b == 1 ? new ea.h.c(d0Var.f13321a) : new ea.h.a(d0Var.f13321a);
            int i10 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i10 == 1) {
                k.f(lVar2, new v4(cVar, null, C03411.INSTANCE));
                return;
            } else if (i10 == 2) {
                k.g(lVar2, new v4(cVar, null, C03422.INSTANCE));
                return;
            } else {
                if (i10 != 3) {
                    return;
                }
                k.e(lVar2, new v4(cVar, null, C03433.INSTANCE));
                return;
            }
        }
        if (lVar instanceof c0) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            c0 c0Var = (c0) lVar;
            int lastKnownAbsoluteTightness = inMemoryCache.getRightDevice().getLastKnownAbsoluteTightness() + c0Var.f13315a;
            ea.h cVar2 = c0Var.f13316b == 1 ? new ea.h.c(lastKnownAbsoluteTightness) : new ea.h.a(lastKnownAbsoluteTightness);
            int lastKnownAbsoluteTightness2 = inMemoryCache.getLeftDevice().getLastKnownAbsoluteTightness() + c0Var.f13315a;
            ea.h cVar3 = c0Var.f13316b == 1 ? new ea.h.c(lastKnownAbsoluteTightness2) : new ea.h.a(lastKnownAbsoluteTightness2);
            int i11 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i11 == 1) {
                k.f(lVar2, new v4(cVar3, null, C03444.INSTANCE));
                return;
            } else {
                if (i11 != 2) {
                    return;
                }
                k.g(lVar2, new v4(cVar2, null, AnonymousClass5.INSTANCE));
                return;
            }
        }
        if (lVar instanceof k0) {
            int i12 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i12 == 1) {
                k.f(lVar2, new s4(null, 1, null));
                return;
            } else if (i12 == 2) {
                k.g(lVar2, new s4(null, 1, null));
                return;
            } else {
                if (i12 != 3) {
                    return;
                }
                k.e(lVar2, new s4(null, 1, null));
                return;
            }
        }
        if (lVar instanceof p8.g) {
            int i13 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i13 == 1) {
                k.f(lVar2, new x1(null, 1, null));
                return;
            } else if (i13 == 2) {
                k.g(lVar2, new x1(null, 1, null));
                return;
            } else {
                if (i13 != 3) {
                    return;
                }
                k.e(lVar2, new x1(null, 1, null));
                return;
            }
        }
        if (lVar instanceof n) {
            int i14 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i14 == 1) {
                k.f(lVar2, new e4(null, 1, null));
                return;
            } else if (i14 == 2) {
                k.g(lVar2, new e4(null, 1, null));
                return;
            } else {
                if (i14 != 3) {
                    return;
                }
                k.e(lVar2, new e4(null, 1, null));
                return;
            }
        }
        if (lVar instanceof p8.j) {
            AdaptMarshaller.AdaptPreset adaptColorPreset = ((p8.j) lVar).f13334a.getAdaptColorPreset();
            int i15 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i15 == 1) {
                k.f(lVar2, new y3(new ea.d(adaptColorPreset.getRed(), adaptColorPreset.getGreen(), adaptColorPreset.getBlue(), 5)));
                return;
            } else if (i15 == 2) {
                k.g(lVar2, new y3(new ea.d(adaptColorPreset.getRed(), adaptColorPreset.getGreen(), adaptColorPreset.getBlue(), 5)));
                return;
            } else {
                if (i15 != 3) {
                    return;
                }
                k.e(lVar2, new y3(new ea.d(adaptColorPreset.getRed(), adaptColorPreset.getGreen(), adaptColorPreset.getBlue(), 5)));
                return;
            }
        }
        if (lVar instanceof p8.x) {
            int i16 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i16 == 1) {
                k.f(lVar2, new v3(null, 1, null));
                return;
            } else if (i16 == 2) {
                k.g(lVar2, new v3(null, 1, null));
                return;
            } else {
                if (i16 != 3) {
                    return;
                }
                k.e(lVar2, new v3(null, 1, null));
                return;
            }
        }
        if (lVar instanceof h0) {
            InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
            inMemoryCache2.setPendingLightPack(z8.a.MY_LIGHTS);
            inMemoryCache2.setPendingLightEffect(c.e.f16371c);
            z0 z0Var = new z0(AdaptMarshallerKt.parseTo(((h0) lVar).f13331a), this.notConnected, this.minimumFirmwareRequirementNotMet);
            int i17 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i17 == 1) {
                k.f(lVar2, z0Var);
                return;
            } else if (i17 == 2) {
                k.g(lVar2, z0Var);
                return;
            } else {
                if (i17 != 3) {
                    return;
                }
                k.e(lVar2, z0Var);
                return;
            }
        }
        if (lVar instanceof i0) {
            InMemoryCache inMemoryCache3 = InMemoryCache.INSTANCE;
            i0 i0Var = (i0) lVar;
            inMemoryCache3.setPendingLightPack(z8.a.f19384l.a(i0Var.f13332a.getId()));
            inMemoryCache3.setPendingLightEffect(c.f16365a.a(i0Var.f13332a.getId()));
            x0 x0Var = new x0(AdaptMarshallerKt.parseTo(i0Var.f13332a, i0Var.f13333b), this.notConnected, this.minimumFirmwareRequirementNotMet);
            int i18 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i18 == 1) {
                k.f(lVar2, x0Var);
                return;
            } else if (i18 == 2) {
                k.g(lVar2, x0Var);
                return;
            } else {
                if (i18 != 3) {
                    return;
                }
                k.e(lVar2, x0Var);
                return;
            }
        }
        if (lVar instanceof j0) {
            k.e(lVar2, new d1(this.notConnected, this.minimumFirmwareRequirementNotMet));
            return;
        }
        if (lVar instanceof w) {
            l<p, o> lVar3 = ((w) lVar).f13348a;
            if (lVar3 == null) {
                lVar3 = this.minimumFirmwareRequirementNotMet;
            }
            int i19 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i19 == 1) {
                k.f(lVar2, new v0(this.notConnected, lVar3));
                return;
            } else if (i19 == 2) {
                k.g(lVar2, new v0(this.notConnected, lVar3));
                return;
            } else {
                if (i19 != 3) {
                    return;
                }
                k.e(lVar2, new v0(this.notConnected, lVar3));
                return;
            }
        }
        if (lVar instanceof p8.k) {
            checkForFirmwareUpdates();
            return;
        }
        if (lVar instanceof p8.y) {
            InMemoryCache inMemoryCache4 = InMemoryCache.INSTANCE;
            inMemoryCache4.getLeftDevice().setAdaptFirmwareVersion(AdaptMarshallerKt.parse(lVar2.b(Shoe.LEFT.parse())));
            inMemoryCache4.getRightDevice().setAdaptFirmwareVersion(AdaptMarshallerKt.parse(lVar2.b(Shoe.RIGHT.parse())));
            publish(new GetCurrentFirmwareVersionsResult(this.controllerEventUUID));
            return;
        }
        if (lVar instanceof b0) {
            int i20 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i20 == 1) {
                k.f(lVar2, new m5(null, 1, null));
                return;
            } else if (i20 == 2) {
                k.g(lVar2, new m5(null, 1, null));
                return;
            } else {
                if (i20 != 3) {
                    return;
                }
                k.e(lVar2, new m5(null, 1, null));
                return;
            }
        }
        if (lVar instanceof f0) {
            if (((f0) lVar).f13327a) {
                int i21 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
                if (i21 == 1) {
                    k.f(lVar2, new c3(null, 1, null));
                    return;
                } else if (i21 == 2) {
                    k.g(lVar2, new c3(null, 1, null));
                    return;
                } else {
                    if (i21 != 3) {
                        return;
                    }
                    k.e(lVar2, new c3(null, 1, null));
                    return;
                }
            }
            int i22 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i22 == 1) {
                k.f(lVar2, new z2(null, 1, null));
                return;
            } else if (i22 == 2) {
                k.g(lVar2, new z2(null, 1, null));
                return;
            } else {
                if (i22 != 3) {
                    return;
                }
                k.e(lVar2, new z2(null, 1, null));
                return;
            }
        }
        if (lVar instanceof p8.o) {
            int i23 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i23 == 1) {
                k.f(lVar2, new j2(AnonymousClass8.INSTANCE));
                return;
            } else if (i23 == 2) {
                k.g(lVar2, new j2(AnonymousClass9.INSTANCE));
                return;
            } else {
                if (i23 != 3) {
                    return;
                }
                k.e(lVar2, new j2(AnonymousClass10.INSTANCE));
                return;
            }
        }
        if (lVar instanceof z) {
            int i24 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i24 == 1) {
                k.f(lVar2, new b4(null, 1, null));
                return;
            } else if (i24 == 2) {
                k.g(lVar2, new b4(null, 1, null));
                return;
            } else {
                if (i24 != 3) {
                    return;
                }
                k.e(lVar2, new b4(null, 1, null));
                return;
            }
        }
        if (lVar instanceof p8.f) {
            p8.f fVar = (p8.f) lVar;
            ea.h cVar4 = fVar.f13326b == 1 ? new ea.h.c(fVar.f13325a) : new ea.h.a(fVar.f13325a);
            int i25 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i25 == 1) {
                k.f(lVar2, new p4(cVar4, AnonymousClass11.INSTANCE));
                return;
            } else if (i25 == 2) {
                k.g(lVar2, new p4(cVar4, AnonymousClass12.INSTANCE));
                return;
            } else {
                if (i25 != 3) {
                    return;
                }
                k.e(lVar2, new p4(cVar4, AnonymousClass13.INSTANCE));
                return;
            }
        }
        if (lVar instanceof p8.e) {
            int i26 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i26 == 1) {
                k.f(lVar2, new h4(null, 1, null));
                return;
            } else if (i26 == 2) {
                k.g(lVar2, new h4(null, 1, null));
                return;
            } else {
                if (i26 != 3) {
                    return;
                }
                k.e(lVar2, new h4(null, 1, null));
                return;
            }
        }
        if (lVar instanceof g0) {
            int i27 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i27 == 1) {
                k.f(lVar2, new i3(AdaptMarshallerKt.parseFrom(((g0) lVar).f13329a), this.notConnected, this.minimumFirmwareRequirementNotMet));
                return;
            } else if (i27 == 2) {
                k.g(lVar2, new i3(AdaptMarshallerKt.parseFrom(((g0) lVar).f13329a), this.notConnected, this.minimumFirmwareRequirementNotMet));
                return;
            } else {
                if (i27 != 3) {
                    return;
                }
                k.e(lVar2, new i3(AdaptMarshallerKt.parseFrom(((g0) lVar).f13329a), this.notConnected, this.minimumFirmwareRequirementNotMet));
                return;
            }
        }
        if (lVar instanceof a0) {
            int i28 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
            if (i28 == 1) {
                k.f(lVar2, new f3(this.notConnected, this.minimumFirmwareRequirementNotMet));
            } else if (i28 == 2) {
                k.g(lVar2, new f3(this.notConnected, this.minimumFirmwareRequirementNotMet));
            } else {
                if (i28 != 3) {
                    return;
                }
                k.e(lVar2, new f3(this.notConnected, this.minimumFirmwareRequirementNotMet));
            }
        }
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void subscribe(m mVar) {
        p4.h.j(mVar, "device");
        if (this.isSubscribed) {
            return;
        }
        v9.l lVar = new v9.l(mVar, this.adaptIdentifier);
        lVar.f(this.pairListener);
        lVar.i(this.modeListener);
        lVar.h(this.fitListener);
        this.isSubscribed = true;
        this.requester = lVar;
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void unsubscribe() {
        this.isSubscribed = false;
        v9.l lVar = this.requester;
        if (lVar != null) {
            lVar.d();
        }
        this.requester = null;
    }

    @Override // com.nike.adapt.adk.IDeviceController
    public void updatePair(m mVar) {
        if (mVar == null) {
            return;
        }
        x xVar = x.f12420a;
        String str = mVar.f6665i;
        String str2 = mVar.f6677u;
        String str3 = mVar.f6667k.f6612j;
        String str4 = mVar.f6668l.f6612j;
        StringBuilder sbA = k1.a.a("Update Pair Called : name = ", str, " id = ", str2, " left :");
        sbA.append(str3);
        sbA.append(" right : ");
        sbA.append(str4);
        sbA.append(" ");
        xVar.a(sbA.toString());
        v9.l lVar = this.requester;
        if (lVar != null) {
            lVar.k(mVar);
        }
    }

    private final void publish(i8.c cVar) {
        s7.b bVar = s7.b.f15149a;
        p4.h.j(cVar, "errorResult");
        try {
            s7.b.f15150b.e(cVar);
        } catch (Throwable th) {
            x.f12420a.c("EventBus", String.valueOf(th.getMessage()), th);
        }
    }
}
