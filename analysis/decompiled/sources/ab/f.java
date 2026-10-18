package ab;

import ea.m;
import ea.o;
import ea.p;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements ta.a<Map<String, ? extends pa.g>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<m> f573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v9.a f574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p0<p, o> f575c;

    public f(List<m> list, v9.a aVar, p0<p, o> p0Var) {
        this.f573a = list;
        this.f574b = aVar;
        this.f575c = p0Var;
    }

    @Override // ta.a
    public final void a(Map<String, ? extends pa.g> map) {
        Map<String, ? extends pa.g> map2 = map;
        pa.g gVar = pa.g.DELETED;
        p4.h.j(map2, "response");
        List listN0 = n.n0(this.f573a);
        for (m mVar : this.f573a) {
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
        b.f555b.g().b(new g(new d(listN0, this.f574b, this.f575c), new e(this.f575c, this.f574b)));
    }

    @Override // ta.a
    public final void b(Throwable th) {
        this.f575c.b(new o(this.f574b, th));
    }
}
