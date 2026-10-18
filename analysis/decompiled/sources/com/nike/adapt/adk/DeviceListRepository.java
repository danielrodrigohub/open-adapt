package com.nike.adapt.adk;

import ab.a;
import ea.f;
import ea.m;
import java.util.ArrayList;
import java.util.List;
import p4.h;
import v9.d0;
import v9.t;

/* JADX INFO: compiled from: DeviceListRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceListRepository {
    public static final DeviceListRepository INSTANCE = new DeviceListRepository();

    private DeviceListRepository() {
    }

    public static /* synthetic */ List getDevices$default(DeviceListRepository deviceListRepository, d0 d0Var, t tVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            tVar = t.f16822a;
        }
        return deviceListRepository.getDevices(d0Var, tVar);
    }

    public static /* synthetic */ List getLocalDevices$default(DeviceListRepository deviceListRepository, t tVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            tVar = t.f16822a;
        }
        return deviceListRepository.getLocalDevices(tVar);
    }

    public final List<m> getDevices(d0 d0Var, t tVar) {
        h.j(d0Var, "devicesListener");
        h.j(tVar, "adaptKitModule");
        a aVarE = tVar.e();
        v9.a.C0295a c0295a = v9.a.f16441i;
        List<m> listA = aVarE.a(v9.a.f16445m, d0Var);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            if (((m) obj).f6674r == f.BIGFOOT) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<m> getLocalDevices(t tVar) {
        h.j(tVar, "adaptKitModule");
        List<m> listF = tVar.f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (((m) obj).f6674r == f.BIGFOOT) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
