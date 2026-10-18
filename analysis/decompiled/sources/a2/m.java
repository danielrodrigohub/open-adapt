package a2;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: PolystarContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements l, b2.a.InterfaceC0052a, j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e0 f149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b2.a<?, Float> f153g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b2.a<?, PointF> f154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b2.a<?, Float> f155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b2.a<?, Float> f156j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b2.a<?, Float> f157k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b2.a<?, Float> f158l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final b2.a<?, Float> f159m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f161o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f147a = new Path();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final g1.i f160n = new g1.i();

    public m(e0 e0Var, g2.b bVar, f2.h hVar) {
        this.f149c = e0Var;
        this.f148b = hVar.f6997a;
        int i10 = hVar.f6998b;
        this.f150d = i10;
        this.f151e = hVar.f7006j;
        this.f152f = hVar.f7007k;
        b2.a<?, ?> aVarA = hVar.f6999c.a();
        this.f153g = (b2.d) aVarA;
        b2.a<PointF, PointF> aVarA2 = hVar.f7000d.a();
        this.f154h = aVarA2;
        b2.a<?, ?> aVarA3 = hVar.f7001e.a();
        this.f155i = (b2.d) aVarA3;
        b2.a<?, ?> aVarA4 = hVar.f7003g.a();
        this.f157k = (b2.d) aVarA4;
        b2.a<?, ?> aVarA5 = hVar.f7005i.a();
        this.f159m = (b2.d) aVarA5;
        if (i10 == 1) {
            this.f156j = (b2.d) hVar.f7002f.a();
            this.f158l = (b2.d) hVar.f7004h.a();
        } else {
            this.f156j = null;
            this.f158l = null;
        }
        bVar.f(aVarA);
        bVar.f(aVarA2);
        bVar.f(aVarA3);
        bVar.f(aVarA4);
        bVar.f(aVarA5);
        if (i10 == 1) {
            bVar.f(this.f156j);
            bVar.f(this.f158l);
        }
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
        aVarA4.a(this);
        aVarA5.a(this);
        if (i10 == 1) {
            this.f156j.a(this);
            this.f158l.a(this);
        }
    }

    @Override // a2.l
    public final Path a() {
        float fSin;
        double d10;
        float fCos;
        float fC;
        float f10;
        float f11;
        if (this.f161o) {
            return this.f147a;
        }
        this.f147a.reset();
        if (this.f151e) {
            this.f161o = true;
            return this.f147a;
        }
        int iA = q.g.a(this.f150d);
        if (iA == 0) {
            float fFloatValue = this.f153g.f().floatValue();
            b2.a<?, Float> aVar = this.f155i;
            double radians = Math.toRadians((aVar != null ? aVar.f().floatValue() : 0.0d) - 90.0d);
            double d11 = fFloatValue;
            float f12 = (float) (6.283185307179586d / d11);
            if (this.f152f) {
                f12 *= -1.0f;
            }
            float f13 = f12 / 2.0f;
            float f14 = fFloatValue - ((int) fFloatValue);
            if (f14 != 0.0f) {
                radians += (double) ((1.0f - f14) * f13);
            }
            float fFloatValue2 = this.f157k.f().floatValue();
            float fFloatValue3 = this.f156j.f().floatValue();
            b2.a<?, Float> aVar2 = this.f158l;
            float fFloatValue4 = aVar2 != null ? aVar2.f().floatValue() / 100.0f : 0.0f;
            b2.a<?, Float> aVar3 = this.f159m;
            float fFloatValue5 = aVar3 != null ? aVar3.f().floatValue() / 100.0f : 0.0f;
            if (f14 != 0.0f) {
                fC = androidx.appcompat.widget.o.c(fFloatValue2, fFloatValue3, f14, fFloatValue3);
                double d12 = fC;
                fCos = (float) (Math.cos(radians) * d12);
                fSin = (float) (d12 * Math.sin(radians));
                this.f147a.moveTo(fCos, fSin);
                d10 = radians + ((double) ((f12 * f14) / 2.0f));
            } else {
                double d13 = fFloatValue2;
                float fCos2 = (float) (Math.cos(radians) * d13);
                fSin = (float) (Math.sin(radians) * d13);
                this.f147a.moveTo(fCos2, fSin);
                d10 = radians + ((double) f13);
                fCos = fCos2;
                fC = 0.0f;
            }
            double dCeil = Math.ceil(d11) * 2.0d;
            int i10 = 0;
            boolean z10 = false;
            while (true) {
                double d14 = i10;
                if (d14 >= dCeil) {
                    break;
                }
                float f15 = z10 ? fFloatValue2 : fFloatValue3;
                float f16 = (fC == 0.0f || d14 != dCeil - 2.0d) ? f13 : (f12 * f14) / 2.0f;
                if (fC == 0.0f || d14 != dCeil - 1.0d) {
                    fC = f15;
                }
                double d15 = fC;
                float fCos3 = (float) (Math.cos(d10) * d15);
                float fSin2 = (float) (d15 * Math.sin(d10));
                if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                    this.f147a.lineTo(fCos3, fSin2);
                    f10 = fSin2;
                    f11 = fFloatValue5;
                } else {
                    float f17 = fSin;
                    double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                    float fCos4 = (float) Math.cos(dAtan2);
                    float fSin3 = (float) Math.sin(dAtan2);
                    f10 = fSin2;
                    f11 = fFloatValue5;
                    double dAtan3 = (float) (Math.atan2(fSin2, fCos3) - 1.5707963267948966d);
                    float fCos5 = (float) Math.cos(dAtan3);
                    float fSin4 = (float) Math.sin(dAtan3);
                    float f18 = z10 ? fFloatValue4 : f11;
                    float f19 = z10 ? f11 : fFloatValue4;
                    float f20 = (z10 ? fFloatValue3 : fFloatValue2) * f18 * 0.47829f;
                    float f21 = fCos4 * f20;
                    float f22 = f20 * fSin3;
                    float f23 = (z10 ? fFloatValue2 : fFloatValue3) * f19 * 0.47829f;
                    float f24 = fCos5 * f23;
                    float f25 = f23 * fSin4;
                    if (f14 != 0.0f) {
                        if (i10 == 0) {
                            f21 *= f14;
                            f22 *= f14;
                        } else if (d14 == dCeil - 1.0d) {
                            f24 *= f14;
                            f25 *= f14;
                        }
                    }
                    this.f147a.cubicTo(fCos - f21, f17 - f22, fCos3 + f24, f10 + f25, fCos3, f10);
                }
                d10 += (double) f16;
                z10 = !z10;
                i10++;
                fCos = fCos3;
                fC = fC;
                f12 = f12;
                fSin = f10;
                fFloatValue5 = f11;
            }
            PointF pointFF = this.f154h.f();
            this.f147a.offset(pointFF.x, pointFF.y);
            this.f147a.close();
        } else if (iA == 1) {
            int iFloor = (int) Math.floor(this.f153g.f().floatValue());
            b2.a<?, Float> aVar4 = this.f155i;
            double radians2 = Math.toRadians((aVar4 != null ? aVar4.f().floatValue() : 0.0d) - 90.0d);
            double d16 = iFloor;
            float fFloatValue6 = this.f159m.f().floatValue() / 100.0f;
            float fFloatValue7 = this.f157k.f().floatValue();
            double d17 = fFloatValue7;
            float fCos6 = (float) (Math.cos(radians2) * d17);
            float fSin5 = (float) (Math.sin(radians2) * d17);
            this.f147a.moveTo(fCos6, fSin5);
            double d18 = (float) (6.283185307179586d / d16);
            double d19 = radians2 + d18;
            double dCeil2 = Math.ceil(d16);
            int i11 = 0;
            while (i11 < dCeil2) {
                float fCos7 = (float) (Math.cos(d19) * d17);
                double d20 = dCeil2;
                float fSin6 = (float) (Math.sin(d19) * d17);
                if (fFloatValue6 != 0.0f) {
                    double dAtan4 = (float) (Math.atan2(fSin5, fCos6) - 1.5707963267948966d);
                    float fCos8 = (float) Math.cos(dAtan4);
                    float fSin7 = (float) Math.sin(dAtan4);
                    double dAtan5 = (float) (Math.atan2(fSin6, fCos7) - 1.5707963267948966d);
                    float f26 = fFloatValue7 * fFloatValue6 * 0.25f;
                    this.f147a.cubicTo(fCos6 - (fCos8 * f26), fSin5 - (fSin7 * f26), fCos7 + (((float) Math.cos(dAtan5)) * f26), fSin6 + (f26 * ((float) Math.sin(dAtan5))), fCos7, fSin6);
                } else {
                    this.f147a.lineTo(fCos7, fSin6);
                }
                d19 += d18;
                i11++;
                fSin5 = fSin6;
                fCos6 = fCos7;
                dCeil2 = d20;
                d17 = d17;
                d18 = d18;
            }
            PointF pointFF2 = this.f154h.f();
            this.f147a.offset(pointFF2.x, pointFF2.y);
            this.f147a.close();
        }
        this.f147a.close();
        this.f160n.b(this.f147a);
        this.f161o = true;
        return this.f147a;
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f161o = false;
        this.f149c.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i10 >= arrayList.size()) {
                return;
            }
            b bVar = (b) arrayList.get(i10);
            if (bVar instanceof t) {
                t tVar = (t) bVar;
                if (tVar.f199c == 1) {
                    this.f160n.a(tVar);
                    tVar.f(this);
                }
            }
            i10++;
        }
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        b2.a<?, Float> aVar;
        b2.a<?, Float> aVar2;
        if (t10 == i0.f18369w) {
            this.f153g.k(cVar);
            return;
        }
        if (t10 == i0.f18370x) {
            this.f155i.k(cVar);
            return;
        }
        if (t10 == i0.f18360n) {
            this.f154h.k(cVar);
            return;
        }
        if (t10 == i0.f18371y && (aVar2 = this.f156j) != null) {
            aVar2.k(cVar);
            return;
        }
        if (t10 == i0.f18372z) {
            this.f157k.k(cVar);
            return;
        }
        if (t10 == i0.A && (aVar = this.f158l) != null) {
            aVar.k(cVar);
        } else if (t10 == i0.B) {
            this.f159m.k(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f148b;
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
