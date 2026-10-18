package gd;

import java.util.AbstractList;

/* JADX INFO: compiled from: AbstractMutableList.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<E> extends AbstractList<E> implements sd.b {
    public abstract int k();

    public abstract E l(int i10);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i10) {
        return l(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return k();
    }
}
