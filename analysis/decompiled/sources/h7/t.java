package h7;

import e7.x;
import e7.y;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Class f8289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Class f8290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ x f8291j;

    public t(Class cls, Class cls2, x xVar) {
        this.f8289h = cls;
        this.f8290i = cls2;
        this.f8291j = xVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        Class<? super T> cls = aVar.f10167a;
        if (cls == this.f8289h || cls == this.f8290i) {
            return this.f8291j;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Factory[type=");
        sbC.append(this.f8289h.getName());
        sbC.append("+");
        sbC.append(this.f8290i.getName());
        sbC.append(",adapter=");
        sbC.append(this.f8291j);
        sbC.append("]");
        return sbC.toString();
    }
}
