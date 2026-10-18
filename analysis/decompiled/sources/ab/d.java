package ab;

import ea.m;
import ea.p;
import ea.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import qd.l;
import rd.o;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends o implements l<List<? extends va.d>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ List<m> f568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f569i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ p0<p, ea.o> f570j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(List<m> list, v9.a aVar, p0<p, ea.o> p0Var) {
        super(1);
        this.f568h = list;
        this.f569i = aVar;
        this.f570j = p0Var;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x010e A[EDGE_INSN: B:108:0x010e->B:43:0x010e BREAK  A[LOOP:5: B:30:0x00df->B:41:0x0108], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0108 A[LOOP:5: B:30:0x00df->B:41:0x0108, LOOP_END] */
    @Override // qd.l
    public final fd.o invoke(List<? extends va.d> list) {
        Object next;
        Object next2;
        Iterator it;
        Object next3;
        boolean z10;
        Object next4;
        Object obj;
        List<? extends va.d> list2 = list;
        p4.h.j(list2, "networkDevices");
        v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "getPairedDevices local devices before merge " + this.f568h, null, 4, null);
        v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "network devices before merge " + list2, null, 4, null);
        List<m> list3 = this.f568h;
        p4.h.j(list3, "<this>");
        ArrayList arrayList = new ArrayList();
        for (m mVar : list3) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                Object next5 = it2.next();
                if (p4.h.c(mVar.f6664h, ((va.d) next5).f16988q)) {
                    obj = next5;
                    break;
                }
            }
            if (obj == null) {
                arrayList.add(mVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (va.d dVar : list2) {
            Iterator<T> it3 = list3.iterator();
            do {
                if (!it3.hasNext()) {
                    next4 = null;
                    break;
                }
                next4 = it3.next();
            } while (!p4.h.c(dVar.f16988q, ((m) next4).f6664h));
            if (next4 == null) {
                arrayList2.add(dVar);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Iterator it4 = list3.iterator();
        while (it4.hasNext()) {
            m mVar2 = (m) it4.next();
            Iterator<T> it5 = list2.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    it = it4;
                    next3 = null;
                    break;
                }
                next3 = it5.next();
                va.d dVar2 = (va.d) next3;
                if (p4.h.c(mVar2.f6664h, dVar2.f16988q)) {
                    it = it4;
                    z10 = mVar2.f6675s > dVar2.f16995x;
                    if (z10) {
                        break;
                    }
                    it4 = it;
                } else {
                    it = it4;
                }
                if (z10) {
                    break;
                    break;
                }
                it4 = it;
            }
            if (next3 != null) {
                if (mVar2.f6676t) {
                    arrayList4.add(mVar2);
                } else {
                    arrayList3.add(mVar2);
                }
            }
            it4 = it;
        }
        ArrayList arrayList5 = new ArrayList();
        for (m mVar3 : list3) {
            if (mVar3.f6676t) {
                Iterator it6 = arrayList4.iterator();
                do {
                    if (!it6.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it6.next();
                } while (!p4.h.c(((m) next).f6664h, mVar3.f6664h));
                if (next == null) {
                    arrayList4.add(mVar3);
                }
            } else {
                Iterator it7 = arrayList5.iterator();
                do {
                    if (!it7.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it7.next();
                } while (!p4.h.c(((m) next2).f6664h, mVar3.f6664h));
                if (next2 == null) {
                    arrayList5.add(mVar3);
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ua.a aVar = ua.a.NOT_FOUND_LOCALLY;
        ArrayList arrayList6 = new ArrayList(gd.j.T(arrayList2, 10));
        Iterator it8 = arrayList2.iterator();
        while (it8.hasNext()) {
            arrayList6.add(androidx.lifecycle.o.A((va.d) it8.next()));
        }
        linkedHashMap.put(aVar, arrayList6);
        ua.a aVar2 = ua.a.UPDATE_REQUIRED;
        linkedHashMap.put(aVar2, arrayList3);
        linkedHashMap.put(ua.a.NO_CHANGES, arrayList5);
        ua.a aVar3 = ua.a.SCHEDULED_FOR_DELETION;
        linkedHashMap.put(aVar3, arrayList4);
        v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "all devices after merge " + linkedHashMap, null, 4, null);
        List<m> list4 = (List) linkedHashMap.get(aVar3);
        if (list4 != null) {
            v9.a aVar4 = this.f569i;
            p0<p, ea.o> p0Var = this.f570j;
            if (!list4.isEmpty()) {
                v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "getPairedDevices about to delete " + list4 + " from service", null, 4, null);
                b.f555b.b(aVar4, list4, new c(linkedHashMap, aVar4, p0Var));
            } else {
                b bVar = b.f555b;
                b.f(linkedHashMap, aVar4, p0Var);
                List list5 = (List) linkedHashMap.get(aVar2);
                if (list5 != null && list5.isEmpty()) {
                    v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "getPairedDevices about to send onResult pushedChanges=false", null, 4, null);
                    p0Var.a(new x(aVar4, p4.h.y(bVar.h().c(false))));
                }
            }
        }
        return fd.o.f7408a;
    }
}
