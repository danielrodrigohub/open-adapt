package b2;

import android.graphics.Color;
import android.graphics.Paint;

/* JADX INFO: compiled from: DropShadowKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b2.a.InterfaceC0052a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.a.InterfaceC0052a f3181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b2.a<Integer, Integer> f3182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b2.a<Float, Float> f3183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b2.a<Float, Float> f3184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b2.a<Float, Float> f3185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b2.a<Float, Float> f3186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3187g = true;

    /* JADX INFO: compiled from: DropShadowKeyframeAnimation.java */
    public class a extends l2.c<Float> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ l2.c f3188c;

        public a(l2.c cVar) {
            this.f3188c = cVar;
        }

        @Override // l2.c
        public final Float a(l2.b<Float> bVar) {
            Float f10 = (Float) this.f3188c.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(b2.a.InterfaceC0052a interfaceC0052a, g2.b bVar, i2.j jVar) {
        this.f3181a = interfaceC0052a;
        b2.a<Integer, Integer> aVarA = jVar.f8686a.a();
        this.f3182b = (b) aVarA;
        aVarA.a(this);
        bVar.f(aVarA);
        b2.a<Float, Float> aVarA2 = jVar.f8687b.a();
        this.f3183c = (d) aVarA2;
        aVarA2.a(this);
        bVar.f(aVarA2);
        b2.a<Float, Float> aVarA3 = jVar.f8688c.a();
        this.f3184d = (d) aVarA3;
        aVarA3.a(this);
        bVar.f(aVarA3);
        b2.a<Float, Float> aVarA4 = jVar.f8689d.a();
        this.f3185e = (d) aVarA4;
        aVarA4.a(this);
        bVar.f(aVarA4);
        b2.a<Float, Float> aVarA5 = jVar.f8690e.a();
        this.f3186f = (d) aVarA5;
        aVarA5.a(this);
        bVar.f(aVarA5);
    }

    public final void a(Paint paint) {
        if (this.f3187g) {
            this.f3187g = false;
            double dFloatValue = ((double) this.f3184d.f().floatValue()) * 0.017453292519943295d;
            float fFloatValue = this.f3185e.f().floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = this.f3182b.f().intValue();
            paint.setShadowLayer(this.f3186f.f().floatValue(), fSin, fCos, Color.argb(Math.round(this.f3183c.f().floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }

    public final void b(l2.c<Integer> cVar) {
        this.f3182b.k(cVar);
    }

    public final void c(l2.c<Float> cVar) {
        this.f3184d.k(cVar);
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f3187g = true;
        this.f3181a.d();
    }

    public final void e(l2.c<Float> cVar) {
        this.f3185e.k(cVar);
    }

    public final void f(l2.c<Float> cVar) {
        if (cVar == null) {
            this.f3183c.k(null);
        } else {
            this.f3183c.k(new a(cVar));
        }
    }

    public final void g(l2.c<Float> cVar) {
        this.f3186f.k(cVar);
    }
}
