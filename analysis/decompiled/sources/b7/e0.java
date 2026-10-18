package b7;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LazyStringArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends c<String> implements f0, RandomAccess {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Object> f3387i;

    static {
        new e0(10).f3372h = false;
    }

    public e0(int i10) {
        this.f3387i = new ArrayList(i10);
    }

    public static String k(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof i)) {
            return new String((byte[]) obj, z.f3564a);
        }
        i iVar = (i) obj;
        Objects.requireNonNull(iVar);
        return iVar.size() == 0 ? "" : iVar.t(z.f3564a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        h();
        this.f3387i.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f3387i);
        return new e0((ArrayList<Object>) arrayList);
    }

    @Override // b7.f0
    public final f0 c() {
        return this.f3372h ? new o1(this) : this;
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f3387i.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // b7.f0
    public final Object d(int i10) {
        return this.f3387i.get(i10);
    }

    @Override // b7.f0
    public final List<?> e() {
        return Collections.unmodifiableList(this.f3387i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        String str;
        Object obj = this.f3387i.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            Objects.requireNonNull(iVar);
            str = iVar.size() == 0 ? "" : iVar.t(z.f3564a);
            if (iVar.o()) {
                this.f3387i.set(i10, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, z.f3564a);
            if (q1.f3480a.c(bArr, 0, bArr.length) == 0) {
                this.f3387i.set(i10, str);
            }
        }
        return str;
    }

    @Override // b7.f0
    public final void i(i iVar) {
        h();
        this.f3387i.add(iVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        Object objRemove = this.f3387i.remove(i10);
        ((AbstractList) this).modCount++;
        return k(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        h();
        return k(this.f3387i.set(i10, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3387i.size();
    }

    @Override // b7.c, java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection<? extends String> collection) {
        h();
        if (collection instanceof f0) {
            collection = ((f0) collection).e();
        }
        boolean zAddAll = this.f3387i.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public e0(ArrayList<Object> arrayList) {
        this.f3387i = arrayList;
    }
}
