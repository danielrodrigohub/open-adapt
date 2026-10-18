package ad;

import android.content.Context;
import bd.g;
import gd.n;
import java.util.List;
import java.util.Objects;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: PersistenceProviderImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements yc.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f615b;

    /* JADX INFO: compiled from: PersistenceProviderImpl.kt */
    public static final class a extends o implements l<List<? extends yc.a.b>, zc.c> {
        public a() {
            super(1);
        }

        @Override // qd.l
        public final zc.c invoke(List<? extends yc.a.b> list) {
            List<? extends yc.a.b> list2 = list;
            h.j(list2, "options");
            d dVar = d.this;
            return new bd.f(dVar.f614a, dVar.f615b, new cd.a(dVar.f615b.a(), n.h0(d.b(dVar, list2), new bd.e(dVar.f615b.c()))), d.b(d.this, list2));
        }
    }

    public d(Context context, e eVar) {
        this.f614a = context;
        this.f615b = eVar;
    }

    public static final List b(d dVar, List list) {
        Objects.requireNonNull(dVar);
        return list.contains(dd.a.Session) ? n.h0(list, dVar.f615b.e()) : list;
    }

    @Override // yc.c
    public final yc.a.d<zc.c> a() {
        return new g(new a());
    }
}
