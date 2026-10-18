package o7;

import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.DeviceListRepository;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.model.AdaptFirmwareStage;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f12375a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final qd.l<String[], fd.o> f12376b = c.f12377h;

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(Long.valueOf(((ea.m) t11).f6675s), Long.valueOf(((ea.m) t10).f6675s));
        }
    }

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(Boolean.valueOf(((ea.m) t11).f6666j), Boolean.valueOf(((ea.m) t10).f6666j));
        }
    }

    /* JADX INFO: compiled from: AdaptKitFactory.kt */
    public static final class c extends rd.o implements qd.l<String[], fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f12377h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(String[] strArr) {
            p4.h.j(strArr, "it");
            return fd.o.f7408a;
        }
    }

    public final IAdaptRequester a(androidx.lifecycle.q qVar, i8.d dVar, qd.a<fd.o> aVar, qd.a<fd.o> aVar2) {
        p4.h.j(dVar, "eventUUID");
        p4.h.j(aVar, "isReady");
        p4.h.j(aVar2, "noDevices");
        return c(qVar, dVar, "", aVar, aVar2);
    }

    public final IDeviceController b(androidx.lifecycle.q qVar, i8.d dVar) {
        p4.h.j(dVar, "eventUUID");
        return IDeviceController.Companion.create(qVar != null ? qVar.a() : null, dVar);
    }

    public final IAdaptRequester c(androidx.lifecycle.q qVar, i8.d dVar, String str, qd.a<fd.o> aVar, qd.a<fd.o> aVar2) {
        qd.l<String[], fd.o> lVar;
        p4.h.j(dVar, "eventUUID");
        p4.h.j(aVar, "isReady");
        p4.h.j(aVar2, "noDevices");
        if (qVar instanceof p8.a) {
            lVar = ((p8.a) qVar).H;
        } else {
            lVar = qVar instanceof p8.b ? ((p8.b) qVar).f13311g0 : f12376b;
        }
        return IAdaptRequester.Companion.create(dVar, qVar != null ? qVar.a() : null, str, aVar, aVar2, lVar);
    }

    public final AdaptFirmwareStage d() {
        List localDevices$default = DeviceListRepository.getLocalDevices$default(DeviceListRepository.INSTANCE, null, 1, null);
        gd.n.i0(localDevices$default, new a());
        gd.n.i0(localDevices$default, new b());
        ea.m mVar = (ea.m) gd.n.a0(localDevices$default);
        if (mVar == null) {
            return null;
        }
        return AdaptMarshallerKt.parseTo(new v9.l(mVar).c().t().f7140k);
    }
}
