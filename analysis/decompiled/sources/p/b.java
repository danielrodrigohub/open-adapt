package p;

import java.util.Map;

/* JADX INFO: compiled from: ArraySet.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f<Object, Object> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f12572d;

    public b(c cVar) {
        this.f12572d = cVar;
    }

    @Override // p.f
    public final void a() {
        this.f12572d.clear();
    }

    @Override // p.f
    public final Object b(int i10, int i11) {
        return this.f12572d.f12580i[i10];
    }

    @Override // p.f
    public final Map<Object, Object> c() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // p.f
    public final int d() {
        return this.f12572d.f12581j;
    }

    @Override // p.f
    public final int e(Object obj) {
        return this.f12572d.indexOf(obj);
    }

    @Override // p.f
    public final int f(Object obj) {
        return this.f12572d.indexOf(obj);
    }

    @Override // p.f
    public final void g(Object obj, Object obj2) {
        this.f12572d.add(obj);
    }

    @Override // p.f
    public final void h(int i10) {
        this.f12572d.n(i10);
    }

    @Override // p.f
    public final Object i(int i10, Object obj) {
        throw new UnsupportedOperationException("not a map");
    }
}
