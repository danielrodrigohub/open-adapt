package x9;

import androidx.recyclerview.widget.s;
import fd.o;
import v9.r;

/* JADX INFO: compiled from: ColorRangeInBoundsConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends b<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ea.d f18062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w9.a f18063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<r, o> f18064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18065d;

    /* JADX WARN: Multi-variable type inference failed */
    public a(ea.d dVar, w9.a aVar, qd.l<? super r, o> lVar) {
        p4.h.j(dVar, "color");
        p4.h.j(lVar, "publishConditionError");
        this.f18062a = dVar;
        this.f18063b = aVar;
        this.f18064c = lVar;
        this.f18065d = 255;
    }

    @Override // x9.b
    public final w9.a a() {
        return this.f18063b;
    }

    @Override // x9.b
    public final v9.m b() {
        String strA;
        v9.a aVar = this.f18063b.f17253h;
        if (g(this.f18062a.f6622h)) {
            int i10 = this.f18062a.f6622h;
            strA = s.a(s.b("Red value of ", i10, " is not within range of [", 0, ", "), this.f18065d, "]");
        } else if (g(this.f18062a.f6624j)) {
            int i11 = this.f18062a.f6624j;
            strA = s.a(s.b("Blue value of ", i11, " is not within range of [", 0, ", "), this.f18065d, "]");
        } else {
            int i12 = this.f18062a.f6623i;
            strA = s.a(s.b("Green value of ", i12, " is not within range of [", 0, ", "), this.f18065d, "]");
        }
        return new r(aVar, strA);
    }

    @Override // x9.b
    public final String c() {
        return "ColorRangeInBoundsConditionalCheck";
    }

    @Override // x9.b
    public final boolean d() {
        return g(this.f18062a.f6624j) || g(this.f18062a.f6622h) || g(this.f18062a.f6623i);
    }

    @Override // x9.b
    public final qd.l<r, o> e() {
        return this.f18064c;
    }

    public final boolean g(int i10) {
        return i10 < 0 || i10 > this.f18065d;
    }
}
