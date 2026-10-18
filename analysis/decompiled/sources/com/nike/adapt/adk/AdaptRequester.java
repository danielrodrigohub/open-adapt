package com.nike.adapt.adk;

import androidx.lifecycle.b;
import androidx.lifecycle.i;
import androidx.lifecycle.q;
import com.nike.adapt.PeripheralConnectionManager;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.adk.model.AdaptDeviceMode;
import com.nike.adapt.coroutine.MainCoroutineScope;
import da.f;
import de.n0;
import ea.m;
import fd.d;
import fd.o;
import gd.n;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import o7.x;
import qd.l;
import rd.h;
import s9.p;
import v9.a;
import v9.c2;
import v9.d2;
import v9.e;
import v9.e0;
import v9.k;
import v9.o2;
import v9.t;
import w9.u1;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
final class AdaptRequester implements b, IAdaptRequester {
    public static final Companion Companion = new Companion(null);
    private final a adaptIdentifier;
    private final d adaptPreferenceHelper$delegate;
    private final qd.a<o> isReady;
    private final IDeviceCacheADK leftDeviceCacheADK;
    private final i lifecycle;
    private m myDevice;
    private final qd.a<o> noDevices;
    private String pairId;
    private final v9.i pairListener;
    private final l<String[], o> permissionsRequired;
    private v9.l requester;
    private final i8.d requesterEventUUID;
    private final IDeviceCacheADK rightDeviceCacheADK;
    private final MainCoroutineScope uiScope;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AdaptRequester create$default(Companion companion, i iVar, i8.d dVar, String str, qd.a aVar, qd.a aVar2, l lVar, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i10 & 8) != 0) {
                aVar = AdaptRequester$Companion$create$1.INSTANCE;
            }
            qd.a aVar3 = aVar;
            if ((i10 & 16) != 0) {
                aVar2 = AdaptRequester$Companion$create$2.INSTANCE;
            }
            return companion.create(iVar, dVar, str2, aVar3, aVar2, lVar);
        }

        public final AdaptRequester create(i iVar, i8.d dVar, String str, qd.a<o> aVar, qd.a<o> aVar2, l<? super String[], o> lVar) {
            p4.h.j(dVar, "eventUUID");
            p4.h.j(str, "pairId");
            p4.h.j(aVar, "isReady");
            p4.h.j(aVar2, "noDevices");
            p4.h.j(lVar, "permissionRequired");
            return new AdaptRequester(dVar, iVar, str, aVar, aVar2, lVar);
        }
    }

    /* JADX INFO: compiled from: AdaptRequester.kt */
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

    /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$connectOrReportPermissionMissing$1, reason: invalid class name */
    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class AnonymousClass1 extends rd.o implements l<v9.h, o> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(v9.h hVar) {
            invoke2(hVar);
            return o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(v9.h hVar) {
            p4.h.j(hVar, "$this$null");
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.AdaptRequester$initialiseAdaptKitRequester$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class C03391 extends rd.o implements l<m, CharSequence> {
        public static final C03391 INSTANCE = new C03391();

        public C03391() {
            super(1);
        }

        @Override // qd.l
        public final CharSequence invoke(m mVar) {
            p4.h.j(mVar, "it");
            String str = mVar.f6665i;
            String str2 = mVar.f6677u;
            boolean z10 = mVar.f6666j;
            String str3 = mVar.f6667k.f6612j;
            String str4 = mVar.f6668l.f6612j;
            List listW = p4.h.w(mVar);
            String str5 = mVar.f6670n;
            long j10 = mVar.f6672p;
            long j11 = mVar.f6673q;
            long j12 = mVar.f6675s;
            StringBuilder sbA = k1.a.a("pairName = ", str, ", pairId = ", str2, ", isDefault = ");
            sbA.append(z10);
            sbA.append(", leftDevice = ");
            sbA.append(str3);
            sbA.append(", rightDevice = ");
            sbA.append(str4);
            sbA.append(", snapshots = ");
            sbA.append(listW);
            sbA.append(", colorWay = ");
            sbA.append(str5);
            sbA.append(", createdMillis = ");
            sbA.append(j10);
            sbA.append(", updatedMillis = ");
            sbA.append(j11);
            sbA.append(", localUpdatedMillis = ");
            sbA.append(j12);
            return sbA.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AdaptRequester(i8.d dVar, i iVar, String str, qd.a<o> aVar, qd.a<o> aVar2, l<? super String[], o> lVar) {
        p4.h.j(dVar, "eventUUID");
        p4.h.j(str, "pairId");
        p4.h.j(aVar, "isReady");
        p4.h.j(aVar2, "noDevices");
        p4.h.j(lVar, "permissionsRequired");
        this.lifecycle = iVar;
        this.pairId = str;
        this.isReady = aVar;
        this.noDevices = aVar2;
        this.permissionsRequired = lVar;
        this.adaptIdentifier = new a(dVar.f8823i);
        this.requesterEventUUID = dVar;
        MainCoroutineScope mainCoroutineScope = new MainCoroutineScope();
        this.uiScope = mainCoroutineScope;
        if (iVar != null) {
            iVar.a(this);
        }
        if (iVar != null) {
            iVar.a(mainCoroutineScope);
        }
        this.adaptPreferenceHelper$delegate = androidx.lifecycle.o.w(3, AdaptRequester$adaptPreferenceHelper$2.INSTANCE);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        this.rightDeviceCacheADK = inMemoryCache.getRightDevice();
        this.leftDeviceCacheADK = inMemoryCache.getLeftDevice();
        AdaptRequester$pairListener$1 adaptRequester$pairListener$1 = new AdaptRequester$pairListener$1(this);
        v9.i iVar2 = new v9.i(true);
        adaptRequester$pairListener$1.invoke(iVar2);
        this.pairListener = iVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canExecuteOnRequester() {
        return this.requester != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connectOrReportPermissionMissing(v9.l lVar, Shoe shoe, l<? super v9.h, o> lVar2) {
        k d2Var = aa.a.a() ? new d2(lVar2, new AdaptRequester$connectOrReportPermissionMissing$request$1(this)) : new c2(lVar2);
        int i10 = WhenMappings.$EnumSwitchMapping$0[shoe.ordinal()];
        if (i10 == 1) {
            androidx.activity.k.h(lVar, u1.LEFT, d2Var);
        } else if (i10 == 2) {
            androidx.activity.k.h(lVar, u1.RIGHT, d2Var);
        } else {
            if (i10 != 3) {
                return;
            }
            androidx.activity.k.h(lVar, u1.BOTH, d2Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void connectOrReportPermissionMissing$default(AdaptRequester adaptRequester, v9.l lVar, Shoe shoe, l lVar2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            lVar2 = AnonymousClass1.INSTANCE;
        }
        adaptRequester.connectOrReportPermissionMissing(lVar, shoe, lVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connectTo(Shoe shoe) {
        String simpleName = c2.class.getSimpleName();
        p4.h.j(shoe, "shoe");
        x.f12420a.a(shoe + " " + simpleName);
        if (!canExecuteOnRequester()) {
            this.noDevices.invoke();
            return;
        }
        v9.l lVar = this.requester;
        if (lVar != null) {
            connectOrReportPermissionMissing$default(this, lVar, shoe, null, 4, null);
        } else {
            p4.h.C("requester");
            throw null;
        }
    }

    private final h8.a getAdaptPreferenceHelper() {
        return (h8.a) this.adaptPreferenceHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initialiseAdaptKitRequester(List<m> list) {
        String str;
        Object next;
        a1.d.d("Paired Devices: ", n.d0(list, " ", null, null, C03391.INSTANCE, 30), x.f12420a);
        if ((this.pairId.length() > 0) && onManageDeepLinkConnection(list)) {
            return;
        }
        m mVarFindOrSetDefaultDevice = findOrSetDefaultDevice(list);
        this.myDevice = mVarFindOrSetDefaultDevice;
        o oVar = null;
        if (mVarFindOrSetDefaultDevice == null) {
            String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!p4.h.c(((m) next).f6677u, defaultAndConnectedId$default));
            m mVar = (m) next;
            this.myDevice = mVar;
            m mVarA = mVar != null ? m.a(mVar, null, true, null, null, null, null, null, 0L, false, 8187) : null;
            this.myDevice = mVarA;
            updatePair(mVarA);
        }
        m mVar2 = this.myDevice;
        if (mVar2 != null && (str = mVar2.f6670n) != null) {
            getAdaptPreferenceHelper().setShoeType(p.f15222a.k(str));
            setFirmwareUpgradeTechnique();
        }
        m mVar3 = this.myDevice;
        if (mVar3 != null) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            inMemoryCache.getLeftDevice().setMaxTightness(mVar3.f6667k.f6615m);
            inMemoryCache.getRightDevice().setMaxTightness(mVar3.f6668l.f6615m);
        }
        m mVar4 = this.myDevice;
        if (mVar4 != null) {
            x xVar = x.f12420a;
            String str2 = mVar4.f6665i;
            String str3 = mVar4.f6677u;
            String str4 = mVar4.f6667k.f6612j;
            String str5 = mVar4.f6668l.f6612j;
            StringBuilder sbA = k1.a.a("Current Device : name = ", str2, "\tpairId = ", str3, "\tleftDevice = ");
            sbA.append(str4);
            sbA.append("\trightDevice = ");
            sbA.append(str5);
            sbA.append(" ");
            xVar.a(sbA.toString());
            i8.d dVar = this.requesterEventUUID;
            Shoe shoe = Shoe.BOTH;
            m mVar5 = this.myDevice;
            p4.h.h(mVar5, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices");
            postResults(new DeviceFoundAndReadyToConnect(dVar, shoe, mVar5));
            PeripheralConnectionManager peripheralConnectionManager = PeripheralConnectionManager.f5666h;
            m mVar6 = this.myDevice;
            Objects.requireNonNull(peripheralConnectionManager);
            PeripheralConnectionManager.f5667i = mVar6;
            v9.l lVar = new v9.l(mVar4, this.adaptIdentifier);
            this.isReady.invoke();
            this.requester = lVar;
            if (canExecuteOnRequester()) {
                v9.l lVar2 = this.requester;
                if (lVar2 == null) {
                    p4.h.C("requester");
                    throw null;
                }
                lVar2.f(this.pairListener);
                v9.l lVar3 = this.requester;
                if (lVar3 == null) {
                    p4.h.C("requester");
                    throw null;
                }
                AdaptRequester$initialiseAdaptKitRequester$2$4$2 adaptRequester$initialiseAdaptKitRequester$2$4$2 = new AdaptRequester$initialiseAdaptKitRequester$2$4$2(mVar4);
                e0 e0Var = new e0(false);
                adaptRequester$initialiseAdaptKitRequester$2$4$2.invoke(e0Var);
                lVar3.j(e0Var);
                v9.l lVar4 = this.requester;
                if (lVar4 == null) {
                    p4.h.C("requester");
                    throw null;
                }
                f fVarA = lVar4.a();
                this.rightDeviceCacheADK.setLastKnownConnectionState(fVarA.f6153i.f6135h);
                this.leftDeviceCacheADK.setLastKnownConnectionState(fVarA.f6152h.f6135h);
                e eVar = fVarA.f6152h.f6135h;
                e eVar2 = e.CONNECTED_AND_AUTHENTICATED;
                if (eVar == eVar2) {
                    i8.d dVar2 = this.requesterEventUUID;
                    Shoe shoe2 = Shoe.LEFT;
                    m mVar7 = this.myDevice;
                    p4.h.h(mVar7, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices");
                    postResults(new ConnectedAndAuthenticatedToPair(dVar2, shoe2, mVar7));
                } else {
                    connectTo(Shoe.LEFT);
                }
                if (fVarA.f6153i.f6135h == eVar2) {
                    i8.d dVar3 = this.requesterEventUUID;
                    Shoe shoe3 = Shoe.RIGHT;
                    m mVar8 = this.myDevice;
                    p4.h.h(mVar8, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices");
                    postResults(new ConnectedAndAuthenticatedToPair(dVar3, shoe3, mVar8));
                } else {
                    connectTo(Shoe.RIGHT);
                }
            } else {
                this.noDevices.invoke();
            }
            oVar = o.f7408a;
        }
        if (oVar == null) {
            this.noDevices.invoke();
        }
    }

    private final boolean onManageDeepLinkConnection(List<m> list) {
        Object next;
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!p4.h.c(((m) next).f6677u, this.pairId));
        m mVar = (m) next;
        if (mVar == null) {
            return false;
        }
        connect(mVar);
        this.pairId = "";
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void postResults(i8.b bVar) {
        n0.b(bVar);
        s7.b.f15149a.a(bVar);
    }

    private final List<m> retrieveLocalDevicesSynchronous() {
        return DeviceListRepository.getLocalDevices$default(DeviceListRepository.INSTANCE, null, 1, null);
    }

    private final void setFirmwareUpgradeTechnique() {
        int i10 = o7.n.f12404a;
    }

    private final void updatePair(m mVar) {
        if (mVar == null || !canExecuteOnRequester()) {
            return;
        }
        x xVar = x.f12420a;
        String str = mVar.f6665i;
        String str2 = mVar.f6677u;
        String str3 = mVar.f6667k.f6612j;
        String str4 = mVar.f6668l.f6612j;
        StringBuilder sbA = k1.a.a("Default Not Found - Pair Updated : name = ", str, " id = ", str2, " left :");
        sbA.append(str3);
        sbA.append(" right : ");
        sbA.append(str4);
        sbA.append(" ");
        xVar.a(sbA.toString());
        v9.l lVar = this.requester;
        if (lVar != null) {
            lVar.k(mVar);
        } else {
            p4.h.C("requester");
            throw null;
        }
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public void connect(m mVar) {
        p4.h.j(mVar, "pair");
        PairDataRepository.setIsDefaultAndConnected$default(PairDataRepository.INSTANCE, mVar.f6677u, null, 2, null);
        t.f16822a.a();
        if (canExecuteOnRequester()) {
            v9.l lVar = this.requester;
            if (lVar == null) {
                p4.h.C("requester");
                throw null;
            }
            lVar.d();
        } else {
            this.noDevices.invoke();
        }
        v9.l lVar2 = new v9.l(mVar, this.adaptIdentifier);
        this.isReady.invoke();
        lVar2.f(this.pairListener);
        m mVarA = m.a(mVar, null, true, null, null, null, null, null, System.currentTimeMillis(), false, 6139);
        getAdaptPreferenceHelper().setShoeType(p.f15222a.k(mVarA.f6670n));
        this.myDevice = mVarA;
        x xVar = x.f12420a;
        String str = mVarA.f6665i;
        String str2 = mVarA.f6677u;
        String str3 = mVarA.f6667k.f6612j;
        String str4 = mVarA.f6668l.f6612j;
        StringBuilder sbA = k1.a.a("Connecting New Pair : name = ", str, " id = ", str2, " left :");
        sbA.append(str3);
        sbA.append(" right : ");
        sbA.append(str4);
        sbA.append(" ");
        xVar.a(sbA.toString());
        AdaptRequester$connect$1$1$1 adaptRequester$connect$1$1$1 = new AdaptRequester$connect$1$1$1(mVarA, this, lVar2);
        e0 e0Var = new e0(false);
        adaptRequester$connect$1$1$1.invoke(e0Var);
        lVar2.j(e0Var);
        lVar2.k(mVarA);
        this.requester = lVar2;
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public boolean connectIfNotConnected() {
        if (!canExecuteOnRequester()) {
            return false;
        }
        v9.l lVar = this.requester;
        if (lVar == null) {
            p4.h.C("requester");
            throw null;
        }
        f fVarA = lVar.a();
        boolean zB = fVarA.f6152h.f6135h.b();
        boolean zB2 = fVarA.f6153i.f6135h.b();
        if (!zB) {
            connectTo(Shoe.LEFT);
        }
        if (!zB2) {
            connectTo(Shoe.RIGHT);
        }
        return (zB && zB2) ? false : true;
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public m currentDevice() {
        return this.myDevice;
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public void disconnect() {
        Shoe shoe = Shoe.BOTH;
        p4.h.j(shoe, "shoe");
        x.f12420a.a(shoe + " DisconnectRequest");
        if (canExecuteOnRequester()) {
            v9.l lVar = this.requester;
            if (lVar == null) {
                p4.h.C("requester");
                throw null;
            }
            androidx.activity.k.f(lVar, o2.f16743b);
        } else {
            this.noDevices.invoke();
        }
        if (!canExecuteOnRequester()) {
            this.noDevices.invoke();
            return;
        }
        v9.l lVar2 = this.requester;
        if (lVar2 != null) {
            androidx.activity.k.g(lVar2, o2.f16743b);
        } else {
            p4.h.C("requester");
            throw null;
        }
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public m findOrSetDefaultDevice(List<m> list) {
        p4.h.j(list, "devices");
        n.i0(list, new Comparator() { // from class: com.nike.adapt.adk.AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return hd.a.b(Long.valueOf(((m) t11).f6675s), Long.valueOf(((m) t10).f6675s));
            }
        });
        n.i0(list, new Comparator() { // from class: com.nike.adapt.adk.AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return hd.a.b(Boolean.valueOf(((m) t11).f6666j), Boolean.valueOf(((m) t10).f6666j));
            }
        });
        return (m) n.a0(list);
    }

    public final qd.a<o> getNoDevices() {
        return this.noDevices;
    }

    public final l<String[], o> getPermissionsRequired() {
        return this.permissionsRequired;
    }

    public final qd.a<o> isReady() {
        return this.isReady;
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public List<AdaptDeviceMode> modes() {
        v9.l lVar = this.requester;
        if (lVar == null) {
            return gd.p.f8070h;
        }
        if (lVar != null) {
            return AdaptMarshallerKt.parseModes(lVar.c().e0());
        }
        p4.h.C("requester");
        throw null;
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onCreate(q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onDestroy(q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onPause(q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public /* bridge */ /* synthetic */ void onResume(q qVar) {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public void onStart(q qVar) {
        p4.h.j(qVar, "owner");
        subscribe();
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public void onStop(q qVar) {
        p4.h.j(qVar, "owner");
        unsubscribe();
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public void subscribe() {
        List<m> listRetrieveLocalDevicesSynchronous = retrieveLocalDevicesSynchronous();
        if (!InMemoryCache.INSTANCE.getUseInternetPerSession()) {
            if (!(listRetrieveLocalDevicesSynchronous == null || listRetrieveLocalDevicesSynchronous.isEmpty())) {
                x.f12420a.a("FROM SYNC call retrieveLocalDevicesSynchronous");
                initialiseAdaptKitRequester(listRetrieveLocalDevicesSynchronous);
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(this.uiScope, null, null, new AdaptRequester$subscribe$1$1(this, null), 3, null);
    }

    @Override // com.nike.adapt.adk.IAdaptRequester
    public void unsubscribe() {
        if (!canExecuteOnRequester()) {
            this.noDevices.invoke();
            return;
        }
        v9.l lVar = this.requester;
        if (lVar != null) {
            lVar.d();
        } else {
            p4.h.C("requester");
            throw null;
        }
    }

    public /* synthetic */ AdaptRequester(i8.d dVar, i iVar, String str, qd.a aVar, qd.a aVar2, l lVar, int i10, h hVar) {
        this(dVar, iVar, (i10 & 4) != 0 ? "" : str, aVar, aVar2, lVar);
    }
}
