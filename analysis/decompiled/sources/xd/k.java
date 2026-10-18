package xd;

import java.util.Iterator;

/* JADX INFO: compiled from: Iterables.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Iterable<Object>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f18138h;

    public k(d dVar) {
        this.f18138h = dVar;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return this.f18138h.iterator();
    }
}
