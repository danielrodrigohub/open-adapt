package com.nike.adapt;

import androidx.activity.k;
import androidx.lifecycle.q;
import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.GlobalDeviceRequests;
import com.nike.adapt.adk.IDeviceCacheADK;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptFirmwareStage;
import ea.m;
import o7.x;
import p4.h;
import qd.l;
import rd.o;
import s9.g;
import v9.c2;
import v9.d1;
import v9.e;
import v9.j;
import v9.o2;
import v9.p;

/* JADX INFO: compiled from: PeripheralConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PeripheralConnectionManager implements androidx.lifecycle.b, GlobalDeviceRequests {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PeripheralConnectionManager f5666h = new PeripheralConnectionManager();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static m f5667i;

    /* JADX INFO: compiled from: PeripheralConnectionManager.kt */
    public static final class a extends o implements l<j, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5668h = new a();

        public a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(j jVar) {
            h.j(jVar, "$this$$receiver");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: PeripheralConnectionManager.kt */
    public static final class b extends o implements l<p, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5669h = new b();

        public b() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(p pVar) {
            h.j(pVar, "$this$$receiver");
            return fd.o.f7408a;
        }
    }

    private PeripheralConnectionManager() {
    }

    public final AdaptFirmwareStage b(m mVar) {
        return AdaptMarshallerKt.parseTo(new v9.l(mVar).c().t().f7140k);
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStart(q qVar) {
        m mVar = f5667i;
        if (mVar == null || (f5666h.b(mVar) instanceof AdaptFirmwareStage.InProgress)) {
            return;
        }
        Shoe shoe = Shoe.BOTH;
        String simpleName = c2.class.getSimpleName();
        h.j(shoe, "shoe");
        x.f12420a.a(shoe + " " + simpleName);
        k.e(new v9.l(mVar), new c2(null, 1, null));
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStop(q qVar) {
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        IDeviceCacheADK leftDevice = inMemoryCache.getLeftDevice();
        e eVar = e.NOT_INITIATED;
        leftDevice.setLastKnownConnectionState(eVar);
        inMemoryCache.getRightDevice().setLastKnownConnectionState(eVar);
        m mVar = f5667i;
        if (mVar != null) {
            g gVar = g.f15195a;
            AdaptFirmwareStage adaptFirmwareStageB = f5666h.b(mVar);
            if (((adaptFirmwareStageB instanceof AdaptFirmwareStage.InProgress) || (adaptFirmwareStageB instanceof AdaptFirmwareStage.FetchingData) || (adaptFirmwareStageB instanceof AdaptFirmwareStage.Reconnecting)) ? false : true) {
                Shoe shoe = Shoe.BOTH;
                String simpleName = o2.class.getSimpleName();
                h.j(shoe, "shoe");
                x.f12420a.a(shoe + " " + simpleName);
                k.e(new v9.l(mVar), o2.f16743b);
                f5667i = null;
            }
        }
    }

    @Override // com.nike.adapt.adk.GlobalDeviceRequests
    public final void stopAnimation() {
        m mVar = f5667i;
        if (mVar != null) {
            k.e(new v9.l(mVar), new d1(a.f5668h, b.f5669h));
        }
    }
}
