package fb;

import android.os.Parcelable;
import androidx.appcompat.widget.e0;
import ba.j0;
import ba.l0;
import ba.m0;
import ba.n0;
import java.util.Objects;
import java.util.Timer;
import v9.a3;
import v9.d3;
import v9.f2;
import v9.f4;
import v9.n4;
import v9.p0;

/* JADX INFO: compiled from: FitCalibrateUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v9.a f7277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ya.b f7278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ya.b f7279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f7280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ba.v f7281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ba.v f7282f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p0<v9.g, v9.f> f7283g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p0<v9.g, v9.f> f7284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f7285i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Timer f7286j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7287k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7288l;

    /* JADX INFO: compiled from: FitCalibrateUtil.kt */
    public static final class a implements p0<v9.g, v9.f> {
        public a() {
        }

        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            v9.g gVar = (v9.g) parcelable;
            p4.h.j(gVar, "result");
            o.a(o.this, gVar);
        }

        @Override // v9.p0
        public final void b(v9.m mVar) {
            p4.h.j((v9.f) mVar, "error");
            o.this.f7281e = new ba.p(1);
            o.this.d();
        }
    }

    /* JADX INFO: compiled from: FitCalibrateUtil.kt */
    public static final class b implements p0<v9.g, v9.f> {
        public b() {
        }

        @Override // v9.p0
        public final void a(Parcelable parcelable) {
            v9.g gVar = (v9.g) parcelable;
            p4.h.j(gVar, "result");
            o.a(o.this, gVar);
        }

        @Override // v9.p0
        public final void b(v9.m mVar) {
            p4.h.j((v9.f) mVar, "error");
            o.this.f7282f = new ba.p(2);
            o.this.d();
        }
    }

    public o(v9.a aVar, ya.b bVar, ya.b bVar2, d dVar) {
        p4.h.j(aVar, "adaptIdentifier");
        this.f7277a = aVar;
        this.f7278b = bVar;
        this.f7279c = bVar2;
        this.f7280d = dVar;
        this.f7281e = new ba.c0(1);
        this.f7282f = new ba.c0(2);
        this.f7285i = 40000L;
        this.f7286j = new Timer(e0.d("CalibrateFitTimer-", q.f7292a.incrementAndGet()));
        this.f7287k = -1;
        this.f7288l = -1;
        dVar.a(new ba.c0(1));
        dVar.a(new ba.c0(2));
        a aVar2 = new a();
        this.f7283g = aVar2;
        b bVar3 = new b();
        this.f7284h = bVar3;
        if (!bVar.g(aVar2)) {
            bVar.B(aVar2);
        }
        if (bVar2.g(aVar2)) {
            return;
        }
        bVar2.B(bVar3);
    }

    public static final void a(o oVar, v9.g gVar) {
        int i10;
        Objects.requireNonNull(oVar);
        if (gVar instanceof f4) {
            if (((f4) gVar).f16552n.f6649i.f6646j > 1) {
                if (gVar.f6155i) {
                    oVar.f7281e = new ba.b0(1);
                } else {
                    oVar.f7282f = new ba.b0(2);
                }
            } else if (gVar.f6155i) {
                oVar.f7281e = new ba.k(1);
            } else {
                oVar.f7282f = new ba.k(2);
            }
            oVar.d();
            return;
        }
        if (!(gVar instanceof n4)) {
            if (gVar instanceof a3) {
                if (gVar.f6155i) {
                    oVar.f7281e = new j0(1);
                } else {
                    oVar.f7282f = new j0(2);
                }
                oVar.d();
                return;
            }
            if (gVar instanceof d3) {
                oVar.f7281e = new ba.q(1);
                oVar.f7282f = new ba.q(2);
                return;
            } else {
                if (gVar instanceof f2) {
                    if (gVar.f6155i) {
                        oVar.f7281e = new ba.y(1);
                    } else {
                        oVar.f7282f = new ba.y(2);
                    }
                    oVar.d();
                    return;
                }
                return;
            }
        }
        n4 n4Var = (n4) gVar;
        v9.d.a.a(d3.e.j(), "AdaptKitFitCalibrate", "servoPosition " + n4Var.f16734m.f6649i, null, 4, null);
        if (n4Var.f16734m.f6649i.f6646j == 0 && (!p4.h.c(oVar.f7281e, new ba.a0(1)) || !p4.h.c(oVar.f7282f, new ba.a0(2)))) {
            if (gVar.f6155i) {
                oVar.f7281e = new ba.l(1);
            } else {
                oVar.f7282f = new ba.l(2);
            }
            oVar.d();
            return;
        }
        int i11 = n4Var.f16734m.f6649i.f6646j;
        if (i11 < 10) {
            i11 = 10;
        }
        if (gVar.f6155i && p4.h.c(oVar.f7281e, new ba.a0(1))) {
            oVar.f7287k = i11;
        } else if (gVar.f6156j && p4.h.c(oVar.f7282f, new ba.a0(2))) {
            oVar.f7288l = i11;
        }
        if (!(oVar.f7281e instanceof ba.a0) || !(oVar.f7282f instanceof ba.a0) || oVar.f7288l <= -1 || (i10 = oVar.f7287k) <= -1) {
            return;
        }
        oVar.f7281e = new ba.z(1, i10);
        oVar.f7282f = new ba.z(2, oVar.f7288l);
        oVar.f7287k = -1;
        oVar.f7288l = -1;
        oVar.d();
    }

    public final void b(boolean z10) {
        this.f7287k = -1;
        this.f7288l = -1;
        this.f7278b.h(this.f7283g);
        this.f7279c.h(this.f7284h);
        c();
        if (z10) {
            this.f7281e = new ba.p(1);
            this.f7282f = new ba.p(2);
            d();
        }
    }

    public final void c() {
        this.f7286j.cancel();
        this.f7286j.purge();
    }

    @Override // fb.n
    public final void cancel() {
        b(true);
    }

    public final void d() {
        ba.v vVar = this.f7281e;
        ba.v vVar2 = this.f7282f;
        v9.d.a.a(d3.e.j(), "AdaptKitFitCalibrate", "left: " + vVar + " right: " + vVar2, null, 4, null);
        if (p4.h.c(vVar, new m0(1)) && p4.h.c(vVar2, new m0(2))) {
            this.f7280d.a(new m0(1));
            this.f7280d.a(new m0(2));
            this.f7278b.m(this.f7277a, false);
            this.f7279c.m(this.f7277a, false);
            return;
        }
        if (p4.h.c(vVar, new j0(1)) && p4.h.c(vVar2, new j0(2))) {
            this.f7280d.a(new j0(1));
            this.f7280d.a(new j0(2));
            this.f7278b.A(this.f7277a);
            this.f7279c.A(this.f7277a);
            return;
        }
        if (p4.h.c(vVar, new ba.b0(1)) && p4.h.c(vVar2, new ba.b0(2))) {
            this.f7280d.a(new ba.b0(1));
            this.f7280d.a(new ba.b0(2));
            this.f7278b.O(this.f7277a, new ea.h.a(0));
            this.f7279c.O(this.f7277a, new ea.h.a(0));
            return;
        }
        if (p4.h.c(vVar, new ba.b0(1)) && p4.h.c(vVar2, new ba.k(2))) {
            this.f7280d.a(new ba.b0(1));
            this.f7282f = new ba.l(2);
            this.f7278b.O(this.f7277a, new ea.h.a(0));
            return;
        }
        if (p4.h.c(vVar, new ba.k(1)) && p4.h.c(vVar2, new ba.b0(2))) {
            this.f7280d.a(vVar2);
            this.f7281e = new ba.l(1);
            this.f7279c.O(this.f7277a, new ea.h.a(0));
            return;
        }
        if ((p4.h.c(vVar, new ba.l(1)) && p4.h.c(vVar2, new ba.l(2))) || (p4.h.c(vVar, new ba.k(1)) && p4.h.c(vVar2, new ba.k(2)))) {
            this.f7280d.a(new ba.l(1));
            this.f7280d.a(new ba.l(2));
            this.f7281e = new ba.a0(1);
            this.f7282f = new ba.a0(2);
            this.f7280d.a(new ba.a0(1));
            this.f7280d.a(new ba.a0(2));
            this.f7279c.O(this.f7277a, new ea.h.a(100));
            this.f7278b.O(this.f7277a, new ea.h.a(100));
            return;
        }
        if ((vVar instanceof ba.z) && (vVar2 instanceof ba.z)) {
            this.f7280d.a(new ba.z(1, ((ba.z) vVar).f3747k));
            this.f7280d.a(new ba.z(2, ((ba.z) vVar2).f3747k));
            c();
            this.f7278b.m(this.f7277a, true);
            this.f7279c.m(this.f7277a, true);
            this.f7280d.a(new n0(1));
            this.f7280d.a(new n0(2));
            this.f7280d.a(new ba.q(1));
            this.f7280d.a(new ba.q(2));
            this.f7278b.h(this.f7283g);
            this.f7279c.h(this.f7284h);
            return;
        }
        if (p4.h.c(vVar, new l0(1)) || p4.h.c(vVar2, new l0(2))) {
            this.f7280d.a(new l0(1));
            this.f7280d.a(new l0(2));
            b(false);
        } else if (p4.h.c(vVar, new ba.y(1)) || p4.h.c(vVar2, new ba.y(2))) {
            this.f7280d.a(new ba.y(1));
            this.f7280d.a(new ba.y(2));
            b(false);
        } else if (p4.h.c(vVar, new ba.p(1)) && p4.h.c(vVar2, new ba.p(2))) {
            this.f7280d.a(new ba.p(1));
            this.f7280d.a(new ba.p(2));
        }
    }
}
