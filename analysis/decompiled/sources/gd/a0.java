package gd;

import androidx.appcompat.widget.y0;
import java.util.List;

/* JADX INFO: compiled from: ReversedViews.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0<T> extends d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<T> f8052h;

    public a0(List<T> list) {
        this.f8052h = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, T t10) {
        List<T> list = this.f8052h;
        if (new vd.e(0, size()).o(i10)) {
            list.add(size() - i10, t10);
            return;
        }
        StringBuilder sbC = y0.c("Position index ", i10, " must be in range [");
        sbC.append(new vd.e(0, size()));
        sbC.append("].");
        throw new IndexOutOfBoundsException(sbC.toString());
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f8052h.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i10) {
        return this.f8052h.get(l.W(this, i10));
    }

    @Override // gd.d
    public final int k() {
        return this.f8052h.size();
    }

    @Override // gd.d
    public final T l(int i10) {
        return this.f8052h.remove(l.W(this, i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final T set(int i10, T t10) {
        return this.f8052h.set(l.W(this, i10), t10);
    }
}
