package h7;

import e7.x;
import e7.y;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class s implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Class f8286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Class f8287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ x f8288j;

    public s(Class cls, Class cls2, x xVar) {
        this.f8286h = cls;
        this.f8287i = cls2;
        this.f8288j = xVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        Class<? super T> cls = aVar.f10167a;
        if (cls == this.f8286h || cls == this.f8287i) {
            return this.f8288j;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Factory[type=");
        sbC.append(this.f8287i.getName());
        sbC.append("+");
        sbC.append(this.f8286h.getName());
        sbC.append(",adapter=");
        sbC.append(this.f8288j);
        sbC.append("]");
        return sbC.toString();
    }
}
