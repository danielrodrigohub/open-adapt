package ad;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: DefaultProviderHost.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ed.e f601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<yc.a.c> f602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CompletableJob f603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final jd.f f604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f f605f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final cd.e.a<String> f606g;

    public a(Context context, ed.e eVar) {
        h.j(context, "context");
        this.f600a = "adapt-app";
        this.f601b = eVar;
        this.f602c = new ArrayList();
        CompletableJob completableJobSupervisorJob$default = SupervisorKt.SupervisorJob$default(null, 1, null);
        this.f603d = completableJobSupervisorJob$default;
        this.f604e = completableJobSupervisorJob$default.plus(Dispatchers.getIO());
        this.f605f = new f(null, 1, null);
        new LinkedHashMap();
        this.f606g = new cd.a.b(context);
    }

    @Override // ad.e
    public final cd.e.a<String> a() {
        return this.f606g;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.ArrayList, java.util.List<yc.a$c>] */
    @Override // bd.a
    public final boolean b(List<? extends yc.a.b> list) {
        h.j(list, "options");
        if (!list.isEmpty()) {
            for (yc.a.b bVar : list) {
                ?? r10 = this.f602c;
                h.j(r10, "<this>");
                if (r10.contains(bVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // ad.e
    public final String c() {
        return this.f600a;
    }

    @Override // bd.a
    public final <R> Object d(List<? extends yc.a.b> list, l<? super jd.d<? super R>, ? extends Object> lVar, jd.d<? super R> dVar) {
        return bd.a.C0065a.a(this, list, lVar, dVar);
    }

    @Override // ad.e
    public final f e() {
        return this.f605f;
    }
}
