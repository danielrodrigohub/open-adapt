package y5;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import d3.e;

/* JADX INFO: compiled from: CircularRevealWidget.java */
/* JADX INFO: loaded from: classes.dex */
public interface d {

    /* JADX INFO: compiled from: CircularRevealWidget.java */
    public static class a implements TypeEvaluator<C0322d> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator<C0322d> f18651b = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final C0322d f18652a = new C0322d();

        @Override // android.animation.TypeEvaluator
        public final C0322d evaluate(float f10, C0322d c0322d, C0322d c0322d2) {
            C0322d c0322d3 = c0322d;
            C0322d c0322d4 = c0322d2;
            C0322d c0322d5 = this.f18652a;
            float fN = e.n(c0322d3.f18655a, c0322d4.f18655a, f10);
            float fN2 = e.n(c0322d3.f18656b, c0322d4.f18656b, f10);
            float fN3 = e.n(c0322d3.f18657c, c0322d4.f18657c, f10);
            c0322d5.f18655a = fN;
            c0322d5.f18656b = fN2;
            c0322d5.f18657c = fN3;
            return this.f18652a;
        }
    }

    /* JADX INFO: compiled from: CircularRevealWidget.java */
    public static class b extends Property<d, C0322d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<d, C0322d> f18653a = new b();

        public b() {
            super(C0322d.class, "circularReveal");
        }

        @Override // android.util.Property
        public final C0322d get(d dVar) {
            return dVar.getRevealInfo();
        }

        @Override // android.util.Property
        public final void set(d dVar, C0322d c0322d) {
            dVar.setRevealInfo(c0322d);
        }
    }

    /* JADX INFO: compiled from: CircularRevealWidget.java */
    public static class c extends Property<d, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<d, Integer> f18654a = new c();

        public c() {
            super(Integer.class, "circularRevealScrimColor");
        }

        @Override // android.util.Property
        public final Integer get(d dVar) {
            return Integer.valueOf(dVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public final void set(d dVar, Integer num) {
            dVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* JADX INFO: renamed from: y5.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CircularRevealWidget.java */
    public static class C0322d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f18655a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f18656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f18657c;

        public C0322d() {
        }

        public C0322d(float f10, float f11, float f12) {
            this.f18655a = f10;
            this.f18656b = f11;
            this.f18657c = f12;
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    C0322d getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i10);

    void setRevealInfo(C0322d c0322d);
}
