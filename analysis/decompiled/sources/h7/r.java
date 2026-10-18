package h7;

import e7.x;
import e7.y;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Class f8284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x f8285i;

    public r(Class cls, x xVar) {
        this.f8284h = cls;
        this.f8285i = xVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        if (aVar.f10167a == this.f8284h) {
            return this.f8285i;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Factory[type=");
        sbC.append(this.f8284h.getName());
        sbC.append(",adapter=");
        sbC.append(this.f8285i);
        sbC.append("]");
        return sbC.toString();
    }
}
