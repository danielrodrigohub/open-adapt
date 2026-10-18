package e2;

import java.util.List;

/* JADX INFO: compiled from: AnimatablePathValue.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6302a;

    @Override // e2.l
    public final b2.a a() {
        return ((l2.a) ((List) this.f6302a).get(0)).c() ? new b2.k((List) this.f6302a) : new b2.j((List) this.f6302a);
    }

    @Override // e2.l
    public final List b() {
        return (List) this.f6302a;
    }

    @Override // e2.l
    public final boolean isStatic() {
        return ((List) this.f6302a).size() == 1 && ((l2.a) ((List) this.f6302a).get(0)).c();
    }
}
