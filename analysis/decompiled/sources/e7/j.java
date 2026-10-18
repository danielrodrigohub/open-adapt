package e7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: JsonArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends l implements Iterable<l> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<l> f6540h = new ArrayList();

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof j) && ((j) obj).f6540h.equals(this.f6540h));
    }

    public final int hashCode() {
        return this.f6540h.hashCode();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<e7.l>] */
    @Override // java.lang.Iterable
    public final Iterator<l> iterator() {
        return this.f6540h.iterator();
    }
}
