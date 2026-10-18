package gd;

import java.util.Iterator;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements xd.d<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterable f8068a;

    public m(Iterable iterable) {
        this.f8068a = iterable;
    }

    @Override // xd.d
    public final Iterator<Object> iterator() {
        return this.f8068a.iterator();
    }
}
