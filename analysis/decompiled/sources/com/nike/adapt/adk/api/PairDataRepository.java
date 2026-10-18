package com.nike.adapt.adk.api;

import ea.m;
import gd.j;
import gd.w;
import h8.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jd.d;
import ld.c;
import ld.e;
import p4.h;
import qd.l;
import rd.o;
import v7.b;
import v7.k;

/* JADX INFO: compiled from: PairDataRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PairDataRepository {
    public static final PairDataRepository INSTANCE = new PairDataRepository();

    /* JADX INFO: renamed from: com.nike.adapt.adk.api.PairDataRepository$syncPairData$1, reason: invalid class name */
    /* JADX INFO: compiled from: PairDataRepository.kt */
    @e(c = "com.nike.adapt.adk.api.PairDataRepository", f = "PairDataRepository.kt", l = {10}, m = "syncPairData")
    public static final class AnonymousClass1 extends c {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PairDataRepository.this.syncPairData(this);
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.api.PairDataRepository$syncPairData$6, reason: invalid class name */
    /* JADX INFO: compiled from: PairDataRepository.kt */
    public static final class AnonymousClass6 extends o implements l<k, Boolean> {
        public final /* synthetic */ List<String> $staticPairIdList;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(List<String> list) {
            super(1);
            this.$staticPairIdList = list;
        }

        @Override // qd.l
        public final Boolean invoke(k kVar) {
            h.j(kVar, "it");
            return Boolean.valueOf(!this.$staticPairIdList.contains(kVar.f16419a));
        }
    }

    private PairDataRepository() {
    }

    public static String getDefaultAndConnectedId$default(PairDataRepository pairDataRepository, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            int i11 = a.f8296a;
            aVar = h8.c.f8298b;
        }
        return pairDataRepository.getDefaultAndConnectedId(aVar);
    }

    public static void setIsDefaultAndConnected$default(PairDataRepository pairDataRepository, String str, a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            int i11 = a.f8296a;
            aVar = h8.c.f8298b;
        }
        pairDataRepository.setIsDefaultAndConnected(str, aVar);
    }

    /* JADX INFO: renamed from: syncPairData$lambda-5, reason: not valid java name */
    private static final boolean m4syncPairData$lambda5(ArrayList arrayList, String str) {
        b bVar = new b(50, 50);
        h.j(str, "staticPairId");
        return arrayList.add(new k(str, false, false, true, bVar, true, false, false));
    }

    public final String getDefaultAndConnectedId(a aVar) {
        Object next;
        h.j(aVar, "preferenceHelper");
        ArrayList<k> arrayListO = aVar.O();
        if (arrayListO == null) {
            return null;
        }
        Iterator<T> it = arrayListO.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((k) next).f16420b);
        k kVar = (k) next;
        if (kVar != null) {
            return kVar.f16419a;
        }
        return null;
    }

    public final void setIsDefaultAndConnected(String str, a aVar) {
        h.j(str, "staticPairId");
        h.j(aVar, "preferenceHelper");
        ArrayList<k> arrayListO = aVar.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        for (k kVar : arrayListO) {
            kVar.f16420b = h.c(kVar.f16419a, str);
        }
        aVar.a(arrayListO);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object syncPairData(d<? super fd.o> dVar) throws Throwable {
        AnonymousClass1 anonymousClass1;
        PairDataRepository pairDataRepository;
        Object next;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object objRetrievePairFromNetwork = anonymousClass1.result;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = anonymousClass1.label;
        if (i11 == 0) {
            d3.e.p(objRetrievePairFromNetwork);
            PairDataApi pairDataApi = PairDataApi.Companion.get();
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            objRetrievePairFromNetwork = pairDataApi.retrievePairFromNetwork(anonymousClass1);
            if (objRetrievePairFromNetwork == aVar) {
                return aVar;
            }
            pairDataRepository = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pairDataRepository = (PairDataRepository) anonymousClass1.L$0;
            d3.e.p(objRetrievePairFromNetwork);
        }
        List list = (List) objRetrievePairFromNetwork;
        ArrayList arrayList = new ArrayList(j.T(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((m) it.next()).f6677u);
        }
        Iterator it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!((m) next).f6666j);
        m mVar = (m) next;
        pairDataRepository.syncPairData(arrayList, mVar != null ? mVar.f6677u : null);
        return fd.o.f7408a;
    }

    public final void syncPairData(List<String> list, String str) {
        Object next;
        int iP;
        h.j(list, "staticPairIdList");
        int i10 = a.f8296a;
        h8.c cVar = h8.c.f8298b;
        ArrayList<k> arrayListO = cVar.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        AnonymousClass6 anonymousClass6 = new AnonymousClass6(list);
        w it = new vd.e(0, androidx.lifecycle.o.p(arrayListO)).iterator();
        int i11 = 0;
        while (((vd.d) it).f17026j) {
            int iA = it.a();
            k kVar = arrayListO.get(iA);
            if (!anonymousClass6.invoke(kVar).booleanValue()) {
                if (i11 != iA) {
                    arrayListO.set(i11, kVar);
                }
                i11++;
            }
        }
        if (i11 < arrayListO.size() && i11 <= (iP = androidx.lifecycle.o.p(arrayListO))) {
            while (true) {
                arrayListO.remove(iP);
                if (iP == i11) {
                    break;
                } else {
                    iP--;
                }
            }
        }
        for (String str2 : list) {
            Iterator<T> it2 = arrayListO.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!h.c(((k) next).f16419a, str2));
            if (((k) next) == null) {
                m4syncPairData$lambda5(arrayListO, str2);
            }
        }
        if (arrayListO.size() == 1) {
            arrayListO.get(0).f16420b = true;
        } else {
            for (k kVar2 : arrayListO) {
                kVar2.f16420b = h.c(kVar2.f16419a, str);
            }
        }
        cVar.a(arrayListO);
    }

    public final void syncPairData(List<m> list) {
        Object next;
        h.j(list, "devices");
        ArrayList arrayList = new ArrayList(j.T(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((m) it.next()).f6677u);
        }
        Iterator<T> it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!((m) next).f6666j);
        m mVar = (m) next;
        syncPairData(arrayList, mVar != null ? mVar.f6677u : null);
    }
}
