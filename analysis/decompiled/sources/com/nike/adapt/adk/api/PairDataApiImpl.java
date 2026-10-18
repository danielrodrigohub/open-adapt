package com.nike.adapt.adk.api;

import androidx.lifecycle.o;
import com.nike.adapt.adk.DeviceListRepository;
import ea.m;
import java.util.List;
import jd.d;
import jd.i;
import rd.u;
import v9.d0;

/* JADX INFO: compiled from: PairDataApi.kt */
/* JADX INFO: loaded from: classes.dex */
final class PairDataApiImpl implements PairDataApi {
    public static final PairDataApiImpl INSTANCE = new PairDataApiImpl();

    private PairDataApiImpl() {
    }

    @Override // com.nike.adapt.adk.api.PairDataApi
    public Object retrievePairFromNetwork(d<? super List<m>> dVar) {
        i iVar = new i(o.t(dVar));
        u uVar = new u();
        DeviceListRepository deviceListRepository = DeviceListRepository.INSTANCE;
        PairDataApiImpl$retrievePairFromNetwork$2$devices$1 pairDataApiImpl$retrievePairFromNetwork$2$devices$1 = new PairDataApiImpl$retrievePairFromNetwork$2$devices$1(uVar, iVar);
        d0 d0Var = new d0(true);
        pairDataApiImpl$retrievePairFromNetwork$2$devices$1.invoke(d0Var);
        List devices$default = DeviceListRepository.getDevices$default(deviceListRepository, d0Var, null, 2, null);
        if ((!devices$default.isEmpty()) && !uVar.f14793h) {
            uVar.f14793h = true;
            iVar.resumeWith(devices$default);
        }
        return iVar.a();
    }
}
