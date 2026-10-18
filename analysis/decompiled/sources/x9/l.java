package x9;

import fd.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import v9.l0;
import v9.t;

/* JADX INFO: compiled from: PermissionConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends b<l0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w9.a f18105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<l0, o> f18106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f18107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l0 f18108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f18109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f18110f;

    /* JADX WARN: Multi-variable type inference failed */
    public l(List<String> list, w9.a aVar, qd.l<? super l0, o> lVar) {
        p4.h.j(lVar, "publishConditionError");
        this.f18105a = aVar;
        this.f18106b = lVar;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                this.f18107c = arrayList;
                this.f18108d = new l0(this.f18105a, arrayList);
                this.f18109e = !arrayList.isEmpty();
                this.f18110f = "PermissionConditionalCheck";
                return;
            }
            Object next = it.next();
            if (t.f16822a.d().checkSelfPermission((String) next) == -1) {
                arrayList.add(next);
            }
        }
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18105a;
    }

    @Override // x9.b
    public final v9.m b() {
        return this.f18108d;
    }

    @Override // x9.b
    public final String c() {
        return this.f18110f;
    }

    @Override // x9.b
    public final boolean d() {
        return this.f18109e;
    }

    @Override // x9.b
    public final qd.l<l0, o> e() {
        return this.f18106b;
    }
}
