package h7;

import e7.x;
import e7.y;

/* JADX INFO: compiled from: NumberTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ j f8218h;

    public i(j jVar) {
        this.f8218h = jVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        if (aVar.f10167a == Number.class) {
            return this.f8218h;
        }
        return null;
    }
}
