package b2;

import java.util.Collections;

/* JADX INFO: compiled from: ValueCallbackKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class r<K, A> extends a<K, A> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final A f3227i;

    public r(l2.c<A> cVar, A a10) {
        super(Collections.emptyList());
        k(cVar);
        this.f3227i = a10;
    }

    @Override // b2.a
    public final float c() {
        return 1.0f;
    }

    @Override // b2.a
    public final A f() {
        l2.c<A> cVar = this.f3171e;
        A a10 = this.f3227i;
        float f10 = this.f3170d;
        return cVar.b(0.0f, 0.0f, a10, a10, f10, f10, f10);
    }

    @Override // b2.a
    public final A g(l2.a<K> aVar, float f10) {
        return f();
    }

    @Override // b2.a
    public final void i() {
        if (this.f3171e != null) {
            super.i();
        }
    }

    @Override // b2.a
    public final void j(float f10) {
        this.f3170d = f10;
    }
}
