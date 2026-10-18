package p4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import n3.y0;

/* JADX INFO: compiled from: SingleSampleMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final l5.m f13186o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final l5.j.a f13187p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final n3.s0 f13188q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f13189r = -9223372036854775807L;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final l5.c0 f13190s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f13191t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final p0 f13192u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final y0 f13193v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public l5.j0 f13194w;

    public r0(y0.k kVar, l5.j.a aVar, l5.c0 c0Var, boolean z10) {
        this.f13187p = aVar;
        this.f13190s = c0Var;
        this.f13191t = z10;
        y0.b bVar = new y0.b();
        bVar.f11754b = Uri.EMPTY;
        String string = kVar.f11820a.toString();
        Objects.requireNonNull(string);
        bVar.f11753a = string;
        bVar.f11760h = u6.v.s(u6.v.v(kVar));
        bVar.f11761i = null;
        y0 y0VarA = bVar.a();
        this.f13193v = y0VarA;
        n3.s0.a aVar2 = new n3.s0.a();
        String str = kVar.f11821b;
        aVar2.f11705k = str == null ? "text/x-unknown" : str;
        aVar2.f11697c = kVar.f11822c;
        aVar2.f11698d = kVar.f11823d;
        aVar2.f11699e = kVar.f11824e;
        aVar2.f11696b = kVar.f11825f;
        String str2 = kVar.f11826g;
        aVar2.f11695a = str2 != null ? str2 : null;
        this.f13188q = new n3.s0(aVar2);
        Map mapEmptyMap = Collections.emptyMap();
        Uri uri = kVar.f11820a;
        m5.a.g(uri, "The uri must be set.");
        this.f13186o = new l5.m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null);
        this.f13192u = new p0(-9223372036854775807L, true, false, y0VarA);
    }

    @Override // p4.x
    public final y0 a() {
        return this.f13193v;
    }

    @Override // p4.x
    public final void b() {
    }

    @Override // p4.x
    public final void d(v vVar) {
        ((q0) vVar).f13171p.f(null);
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        return new q0(this.f13186o, this.f13187p, this.f13194w, this.f13188q, this.f13189r, this.f13190s, s(bVar), this.f13191t);
    }

    @Override // p4.a
    public final void v(l5.j0 j0Var) {
        this.f13194w = j0Var;
        w(this.f13192u);
    }

    @Override // p4.a
    public final void x() {
    }
}
