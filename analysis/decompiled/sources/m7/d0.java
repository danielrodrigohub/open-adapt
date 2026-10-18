package m7;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LazyStringArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends c<String> implements e0, RandomAccess {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Object> f10627i;

    static {
        new d0(10).f10622h = false;
    }

    public d0(int i10) {
        this.f10627i = new ArrayList(i10);
    }

    public static String k(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof i)) {
            return new String((byte[]) obj, y.f10802b);
        }
        i iVar = (i) obj;
        Objects.requireNonNull(iVar);
        return iVar.size() == 0 ? "" : iVar.s(y.f10802b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        h();
        this.f10627i.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f10627i);
        return new d0((ArrayList<Object>) arrayList);
    }

    @Override // m7.e0
    public final e0 c() {
        return this.f10622h ? new l1(this) : this;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f10627i.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // m7.e0
    public final Object d(int i10) {
        return this.f10627i.get(i10);
    }

    @Override // m7.e0
    public final List<?> e() {
        return Collections.unmodifiableList(this.f10627i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        String str;
        Object obj = this.f10627i.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            Objects.requireNonNull(iVar);
            str = iVar.size() == 0 ? "" : iVar.s(y.f10802b);
            if (iVar.o()) {
                this.f10627i.set(i10, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, y.f10802b);
            if (n1.f10711a.c(bArr, 0, bArr.length) == 0) {
                this.f10627i.set(i10, str);
            }
        }
        return str;
    }

    @Override // m7.e0
    public final void j(i iVar) {
        h();
        this.f10627i.add(iVar);
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        Object objRemove = this.f10627i.remove(i10);
        ((AbstractList) this).modCount++;
        return k(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        h();
        return k(this.f10627i.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10627i.size();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection<? extends String> collection) {
        h();
        if (collection instanceof e0) {
            collection = ((e0) collection).e();
        }
        boolean zAddAll = this.f10627i.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public d0(ArrayList<Object> arrayList) {
        this.f10627i = arrayList;
    }
}
