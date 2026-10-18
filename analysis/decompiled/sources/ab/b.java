package ab;

import androidx.lifecycle.o;
import ea.m;
import ea.p;
import ea.y;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ab.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f555b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fd.h f556c = (fd.h) o.x(a.f558h);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final fd.d f557d = o.w(1, new c());

    /* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
    public static final class a extends rd.o implements qd.a<pa.e> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f558h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final pa.e invoke() {
            int i10 = pa.e.f13397a;
            return pa.f.f13398b;
        }
    }

    /* JADX INFO: renamed from: ab.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
    public static final class C0013b extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ List<m> f559h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v9.a f560i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ p0<p, ea.o> f561j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0013b(List<m> list, v9.a aVar, p0<p, ea.o> p0Var) {
            super(0);
            this.f559h = list;
            this.f560i = aVar;
            this.f561j = p0Var;
        }

        @Override // qd.a
        public final fd.o invoke() {
            b.f555b.g().c(o.c(this.f559h), new f(this.f559h, this.f560i, this.f561j));
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class c extends rd.o implements qd.a<db.a> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final db.a invoke() {
            int i10 = db.a.f6160a;
            return db.b.f6161b;
        }
    }

    /* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
    public static final class d implements ta.a<Map<String, ? extends pa.g>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<m> f562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ v9.a f563b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ p0<p, ea.o> f564c;

        public d(List<m> list, v9.a aVar, p0<p, ea.o> p0Var) {
            this.f562a = list;
            this.f563b = aVar;
            this.f564c = p0Var;
        }

        @Override // ta.a
        public final void a(Map<String, ? extends pa.g> map) {
            Map<String, ? extends pa.g> map2 = map;
            pa.g gVar = pa.g.DELETED;
            p4.h.j(map2, "response");
            List<m> listN0 = n.n0(this.f562a);
            for (m mVar : this.f562a) {
                String lowerCase = mVar.f6664h.toLowerCase(Locale.ROOT);
                p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                if (map2.get(lowerCase) == gVar) {
                    ((ArrayList) listN0).remove(mVar);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<Map.Entry<String, ? extends pa.g>> it = map2.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ? extends pa.g> next = it.next();
                if (next.getValue() == gVar) {
                    linkedHashMap.put(next.getKey(), next.getValue());
                }
            }
            List<String> listL0 = n.l0(linkedHashMap.keySet());
            if (!listL0.isEmpty()) {
                b.f555b.h().a(listL0);
            }
            b.f555b.g().d(listN0, new h(this.f564c, this.f563b));
        }

        @Override // ta.a
        public final void b(Throwable th) {
            this.f564c.b(new ea.o(this.f563b, th));
        }
    }

    public static final void f(Map map, v9.a aVar, p0 p0Var) {
        b bVar = f555b;
        List<m> list = (List) map.get(ua.a.UPDATE_REQUIRED);
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        bVar.i(aVar, list, new k(p0Var, aVar));
    }

    @Override // ab.a
    public final List<m> a(v9.a aVar, p0<p, ea.o> p0Var) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(p0Var, "adaptKitResultListener");
        List<m> listC = h().c(true);
        z9.a.IO.b(new C0013b(listC, aVar, p0Var));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC) {
            if (!((m) obj).f6676t) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // ab.a
    public final void b(v9.a aVar, List<m> list, p0<p, ea.o> p0Var) {
        Object next;
        p4.h.j(aVar, "adaptIdentifier");
        List<m> listC = h().c(true);
        ArrayList arrayList = new ArrayList(gd.j.T(listC, 10));
        for (m mVar : listC) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!p4.h.c(mVar.f6664h, ((m) next).f6664h));
            arrayList.add(m.a(mVar, null, false, null, null, null, null, null, System.currentTimeMillis(), next != null, 2047));
        }
        h().b(false, arrayList);
        pa.e eVarG = g();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((m) obj).f6676t) {
                arrayList2.add(obj);
            }
        }
        eVarG.a(arrayList2, new h(p0Var, aVar));
    }

    @Override // ab.a
    public final List<m> c() {
        List<m> listC = h().c(true);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC) {
            if (!((m) obj).f6676t) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // ab.a
    public final void d(v9.a aVar, m mVar, p0<p, ea.o> p0Var) {
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(mVar, "device");
        i(aVar, o.e(mVar), p0Var);
    }

    @Override // ab.a
    public final void e(List<m> list) {
        h().b(false, list);
    }

    public final pa.e g() {
        return (pa.e) f556c.getValue();
    }

    public final db.a h() {
        return (db.a) f557d.getValue();
    }

    public final void i(v9.a aVar, List<m> list, p0<p, ea.o> p0Var) {
        Set setO0 = n.o0(list);
        setO0.addAll(f555b.h().c(true));
        List listN0 = n.n0(p4.h.y(n.l0(setO0)));
        ArrayList arrayList = new ArrayList(gd.j.T(listN0, 10));
        int i10 = 0;
        for (Object obj : (ArrayList) listN0) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            m mVarA = (m) obj;
            if (i10 > 0 && mVarA.f6666j) {
                mVarA = m.a(mVarA, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6139);
            } else if (i10 == 0 && mVarA.f6666j && mVarA.f6676t) {
                mVarA = m.a(mVarA, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6139);
            } else if (i10 == 0 && !mVarA.f6666j) {
                mVarA = m.a(mVarA, null, true, null, null, null, null, null, System.currentTimeMillis(), false, 6139);
            }
            arrayList.add(mVarA);
            i10 = i11;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            m mVar = (m) obj2;
            if (mVar.f6675s > mVar.f6673q) {
                arrayList2.add(obj2);
            }
        }
        h().b(false, arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList2) {
            if (!((m) obj3).f6676t) {
                arrayList3.add(obj3);
            }
        }
        p0Var.a(new y(aVar, p4.h.y(arrayList3)));
        g().c(o.c(arrayList2), new d(arrayList2, aVar, p0Var));
    }
}
