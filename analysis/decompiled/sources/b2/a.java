package b2;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: BaseKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<K, A> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c<K> f3169c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l2.c<A> f3171e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<InterfaceC0052a> f3167a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3168b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3170d = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public A f3172f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f3173g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f3174h = -1.0f;

    /* JADX INFO: renamed from: b2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BaseKeyframeAnimation.java */
    public interface InterfaceC0052a {
        void d();
    }

    /* JADX INFO: compiled from: BaseKeyframeAnimation.java */
    public static final class b<T> implements c<T> {
        @Override // b2.a.c
        public final float a() {
            return 1.0f;
        }

        @Override // b2.a.c
        public final boolean b(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // b2.a.c
        public final float c() {
            return 0.0f;
        }

        @Override // b2.a.c
        public final l2.a<T> d() {
            throw new IllegalStateException("not implemented");
        }

        @Override // b2.a.c
        public final boolean e(float f10) {
            return false;
        }

        @Override // b2.a.c
        public final boolean isEmpty() {
            return true;
        }
    }

    /* JADX INFO: compiled from: BaseKeyframeAnimation.java */
    public interface c<T> {
        float a();

        boolean b(float f10);

        float c();

        l2.a<T> d();

        boolean e(float f10);

        boolean isEmpty();
    }

    /* JADX INFO: compiled from: BaseKeyframeAnimation.java */
    public static final class d<T> implements c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<? extends l2.a<T>> f3175a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public l2.a<T> f3177c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f3178d = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public l2.a<T> f3176b = f(0.0f);

        public d(List<? extends l2.a<T>> list) {
            this.f3175a = list;
        }

        @Override // b2.a.c
        public final float a() {
            List<? extends l2.a<T>> list = this.f3175a;
            return list.get(list.size() - 1).a();
        }

        @Override // b2.a.c
        public final boolean b(float f10) {
            l2.a<T> aVar = this.f3177c;
            l2.a<T> aVar2 = this.f3176b;
            if (aVar == aVar2 && this.f3178d == f10) {
                return true;
            }
            this.f3177c = aVar2;
            this.f3178d = f10;
            return false;
        }

        @Override // b2.a.c
        public final float c() {
            return this.f3175a.get(0).b();
        }

        @Override // b2.a.c
        public final l2.a<T> d() {
            return this.f3176b;
        }

        @Override // b2.a.c
        public final boolean e(float f10) {
            l2.a<T> aVar = this.f3176b;
            if (f10 >= aVar.b() && f10 < aVar.a()) {
                return !this.f3176b.c();
            }
            this.f3176b = f(f10);
            return true;
        }

        public final l2.a<T> f(float f10) {
            List<? extends l2.a<T>> list = this.f3175a;
            l2.a<T> aVar = list.get(list.size() - 1);
            if (f10 >= aVar.b()) {
                return aVar;
            }
            int size = this.f3175a.size() - 2;
            while (true) {
                boolean z10 = false;
                if (size < 1) {
                    return this.f3175a.get(0);
                }
                l2.a<T> aVar2 = this.f3175a.get(size);
                if (this.f3176b != aVar2) {
                    if (f10 >= aVar2.b() && f10 < aVar2.a()) {
                        z10 = true;
                    }
                    if (z10) {
                        return aVar2;
                    }
                }
                size--;
            }
        }

        @Override // b2.a.c
        public final boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: compiled from: BaseKeyframeAnimation.java */
    public static final class e<T> implements c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l2.a<T> f3179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f3180b = -1.0f;

        public e(List<? extends l2.a<T>> list) {
            this.f3179a = list.get(0);
        }

        @Override // b2.a.c
        public final float a() {
            return this.f3179a.a();
        }

        @Override // b2.a.c
        public final boolean b(float f10) {
            if (this.f3180b == f10) {
                return true;
            }
            this.f3180b = f10;
            return false;
        }

        @Override // b2.a.c
        public final float c() {
            return this.f3179a.b();
        }

        @Override // b2.a.c
        public final l2.a<T> d() {
            return this.f3179a;
        }

        @Override // b2.a.c
        public final boolean e(float f10) {
            return !this.f3179a.c();
        }

        @Override // b2.a.c
        public final boolean isEmpty() {
            return false;
        }
    }

    public a(List<? extends l2.a<K>> list) {
        c<K> eVar;
        if (list.isEmpty()) {
            eVar = new b<>();
        } else {
            eVar = list.size() == 1 ? new e<>(list) : new d<>(list);
        }
        this.f3169c = eVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    public final void a(InterfaceC0052a interfaceC0052a) {
        this.f3167a.add(interfaceC0052a);
    }

    public final l2.a<K> b() {
        l2.a<K> aVarD = this.f3169c.d();
        p4.h.p();
        return aVarD;
    }

    public float c() {
        if (this.f3174h == -1.0f) {
            this.f3174h = this.f3169c.a();
        }
        return this.f3174h;
    }

    public final float d() {
        l2.a<K> aVarB = b();
        if (aVarB == null || aVarB.c()) {
            return 0.0f;
        }
        return aVarB.f9898d.getInterpolation(e());
    }

    public final float e() {
        if (this.f3168b) {
            return 0.0f;
        }
        l2.a<K> aVarB = b();
        if (aVarB.c()) {
            return 0.0f;
        }
        return (this.f3170d - aVarB.b()) / (aVarB.a() - aVarB.b());
    }

    public A f() {
        float fE = e();
        if (this.f3171e == null && this.f3169c.b(fE)) {
            return this.f3172f;
        }
        l2.a<K> aVarB = b();
        Interpolator interpolator = aVarB.f9899e;
        A aG = (interpolator == null || aVarB.f9900f == null) ? g(aVarB, d()) : h(aVarB, fE, interpolator.getInterpolation(fE), aVarB.f9900f.getInterpolation(fE));
        this.f3172f = aG;
        return aG;
    }

    public abstract A g(l2.a<K> aVar, float f10);

    public A h(l2.a<K> aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    public void i() {
        for (int i10 = 0; i10 < this.f3167a.size(); i10++) {
            ((InterfaceC0052a) this.f3167a.get(i10)).d();
        }
    }

    public void j(float f10) {
        if (this.f3169c.isEmpty()) {
            return;
        }
        if (this.f3173g == -1.0f) {
            this.f3173g = this.f3169c.c();
        }
        float f11 = this.f3173g;
        if (f10 < f11) {
            if (f11 == -1.0f) {
                this.f3173g = this.f3169c.c();
            }
            f10 = this.f3173g;
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f3170d) {
            return;
        }
        this.f3170d = f10;
        if (this.f3169c.e(f10)) {
            i();
        }
    }

    public final void k(l2.c<A> cVar) {
        l2.c<A> cVar2 = this.f3171e;
        if (cVar2 != null) {
            Objects.requireNonNull(cVar2);
        }
        this.f3171e = cVar;
    }
}
