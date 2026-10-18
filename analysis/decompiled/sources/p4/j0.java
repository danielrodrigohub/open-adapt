package p4;

import android.net.Uri;
import android.os.Looper;
import java.util.Objects;
import n3.b2;
import n3.y0;

/* JADX INFO: compiled from: ProgressiveMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends p4.a implements i0.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final y0 f13060o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final y0.h f13061p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final l5.j.a f13062q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final h0.a f13063r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final r3.l f13064s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final l5.c0 f13065t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f13066u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f13067v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f13068w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f13069x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f13070y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public l5.j0 f13071z;

    /* JADX INFO: compiled from: ProgressiveMediaSource.java */
    public class a extends p {
        public a(b2 b2Var) {
            super(b2Var);
        }

        @Override // p4.p, n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            super.i(i10, bVar, z10);
            bVar.f11300m = true;
            return bVar;
        }

        @Override // p4.p, n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            super.q(i10, dVar, j10);
            dVar.f11319s = true;
            return dVar;
        }
    }

    /* JADX INFO: compiled from: ProgressiveMediaSource.java */
    public static final class b implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l5.j.a f13072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public h0.a f13073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public r3.m f13074c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public l5.c0 f13075d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13076e;

        public b(l5.j.a aVar, s3.l lVar) {
            n3.z zVar = new n3.z(lVar, 4);
            r3.c cVar = new r3.c();
            l5.u uVar = new l5.u();
            this.f13072a = aVar;
            this.f13073b = zVar;
            this.f13074c = cVar;
            this.f13075d = uVar;
            this.f13076e = 1048576;
        }

        @Override // p4.x.a
        public final x.a a(r3.m mVar) {
            m5.a.d(mVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f13074c = mVar;
            return this;
        }

        @Override // p4.x.a
        public final x.a b(l5.c0 c0Var) {
            m5.a.d(c0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f13075d = c0Var;
            return this;
        }

        @Override // p4.x.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final j0 c(y0 y0Var) {
            Objects.requireNonNull(y0Var.f11748i);
            Object obj = y0Var.f11748i.f11811g;
            return new j0(y0Var, this.f13072a, this.f13073b, this.f13074c.a(y0Var), this.f13075d, this.f13076e);
        }
    }

    public j0(y0 y0Var, l5.j.a aVar, h0.a aVar2, r3.l lVar, l5.c0 c0Var, int i10) {
        y0.h hVar = y0Var.f11748i;
        Objects.requireNonNull(hVar);
        this.f13061p = hVar;
        this.f13060o = y0Var;
        this.f13062q = aVar;
        this.f13063r = aVar2;
        this.f13064s = lVar;
        this.f13065t = c0Var;
        this.f13066u = i10;
        this.f13067v = true;
        this.f13068w = -9223372036854775807L;
    }

    @Override // p4.x
    public final y0 a() {
        return this.f13060o;
    }

    @Override // p4.x
    public final void b() {
    }

    @Override // p4.x
    public final void d(v vVar) {
        i0 i0Var = (i0) vVar;
        if (i0Var.C) {
            for (l0 l0Var : i0Var.f13035z) {
                l0Var.z();
            }
        }
        i0Var.f13027r.f(i0Var);
        i0Var.f13032w.removeCallbacksAndMessages(null);
        i0Var.f13033x = null;
        i0Var.S = true;
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        l5.j jVarA = this.f13062q.a();
        l5.j0 j0Var = this.f13071z;
        if (j0Var != null) {
            jVarA.j(j0Var);
        }
        Uri uri = this.f13061p.f11805a;
        h0.a aVar = this.f13063r;
        m5.a.f(this.f12922n);
        return new i0(uri, jVarA, new c((s3.l) ((n3.z) aVar).f11838c), this.f13064s, r(bVar), this.f13065t, s(bVar), this, bVar2, this.f13061p.f11809e, this.f13066u);
    }

    @Override // p4.a
    public final void v(l5.j0 j0Var) {
        this.f13071z = j0Var;
        this.f13064s.b();
        r3.l lVar = this.f13064s;
        Looper looperMyLooper = Looper.myLooper();
        Objects.requireNonNull(looperMyLooper);
        o3.v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        lVar.f(looperMyLooper, v0Var);
        y();
    }

    @Override // p4.a
    public final void x() {
        this.f13064s.a();
    }

    public final void y() {
        b2 p0Var = new p0(this.f13068w, this.f13069x, this.f13070y, this.f13060o);
        if (this.f13067v) {
            p0Var = new a(p0Var);
        }
        w(p0Var);
    }

    public final void z(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f13068w;
        }
        if (!this.f13067v && this.f13068w == j10 && this.f13069x == z10 && this.f13070y == z11) {
            return;
        }
        this.f13068w = j10;
        this.f13069x = z10;
        this.f13070y = z11;
        this.f13067v = false;
        y();
    }
}
