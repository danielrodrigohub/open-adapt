package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.google.errorprone.annotations.InlineMe;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ImmutableList.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class v<E> extends t<E> implements List<E>, RandomAccess {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final u6.a f16002i = new b(p0.f15967l, 0);

    /* JADX INFO: compiled from: ImmutableList.java */
    public static final class a<E> extends t.a<E> {
        @CanIgnoreReturnValue
        public final a<E> c(E e10) {
            Objects.requireNonNull(e10);
            b(this.f15995b + 1);
            Object[] objArr = this.f15994a;
            int i10 = this.f15995b;
            this.f15995b = i10 + 1;
            objArr[i10] = e10;
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x002c A[LOOP:0: B:8:0x0026->B:10:0x002c, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:7:0x0022  */
        @CanIgnoreReturnValue
        public final a<E> d(Iterable<? extends E> iterable) {
            Iterator<? extends E> it;
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                b(collection.size() + this.f15995b);
                if (collection instanceof t) {
                    this.f15995b = ((t) collection).k(this.f15994a, this.f15995b);
                } else {
                    it = iterable.iterator();
                    while (it.hasNext()) {
                        c(it.next());
                    }
                }
            } else {
                it = iterable.iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
            }
            return this;
        }

        public final v<E> e() {
            this.f15996c = true;
            return v.q(this.f15994a, this.f15995b);
        }
    }

    /* JADX INFO: compiled from: ImmutableList.java */
    public static class b<E> extends u6.a<E> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final v<E> f16003j;

        public b(v<E> vVar, int i10) {
            super(vVar.size(), i10);
            this.f16003j = vVar;
        }

        @Override // u6.a
        public final E a(int i10) {
            return this.f16003j.get(i10);
        }
    }

    /* JADX INFO: compiled from: ImmutableList.java */
    public class c extends v<E> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final transient int f16004j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final transient int f16005k;

        public c(int i10, int i11) {
            this.f16004j = i10;
            this.f16005k = i11;
        }

        @Override // java.util.List
        public final E get(int i10) {
            t6.h.c(i10, this.f16005k);
            return v.this.get(i10 + this.f16004j);
        }

        @Override // u6.v, u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // u6.t
        @CheckForNull
        public final Object[] l() {
            return v.this.l();
        }

        @Override // u6.v, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // u6.t
        public final int m() {
            return v.this.n() + this.f16004j + this.f16005k;
        }

        @Override // u6.t
        public final int n() {
            return v.this.n() + this.f16004j;
        }

        @Override // u6.t
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f16005k;
        }

        @Override // u6.v, java.util.List
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public final v<E> subList(int i10, int i11) {
            t6.h.f(i10, i11, this.f16005k);
            v vVar = v.this;
            int i12 = this.f16004j;
            return vVar.subList(i10 + i12, i11 + i12);
        }

        @Override // u6.v, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
            return listIterator(i10);
        }
    }

    public static <E> v<E> q(Object[] objArr, int i10) {
        return i10 == 0 ? (v<E>) p0.f15967l : new p0(objArr, i10);
    }

    public static <E> v<E> r(Object... objArr) {
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            n0.a(objArr[i10], i10);
        }
        return q(objArr, objArr.length);
    }

    public static <E> v<E> s(Collection<? extends E> collection) {
        if (!(collection instanceof t)) {
            return r(collection.toArray());
        }
        v<E> vVarH = ((t) collection).h();
        if (!vVarH.o()) {
            return vVarH;
        }
        Object[] array = vVarH.toArray();
        return q(array, array.length);
    }

    public static <E> v<E> t(E[] eArr) {
        return eArr.length == 0 ? (v<E>) p0.f15967l : r((Object[]) eArr.clone());
    }

    public static <E> v<E> v(E e10) {
        return r(e10);
    }

    public static <E> v<E> w(E e10, E e11) {
        return r(e10, e11);
    }

    public static <E> v<E> x(E e10, E e11, E e12, E e13, E e14) {
        return r(e10, e11, e12, e13, e14);
    }

    @Override // java.util.List
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (t6.f.a(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && t6.f.a(it.next(), it2.next())) {
                    }
                }
                return !it2.hasNext();
            }
        }
        return false;
    }

    @Override // u6.t
    @InlineMe(replacement = "this")
    @Deprecated
    public final v<E> h() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~(get(i11).hashCode() + (i10 * 31)));
        }
        return i10;
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // u6.t
    public int k(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // u6.t
    /* JADX INFO: renamed from: p */
    public final y0<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final u6.a listIterator(int i10) {
        t6.h.e(i10, size());
        return isEmpty() ? f16002i : new b(this, i10);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: y */
    public v<E> subList(int i10, int i11) {
        t6.h.f(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        return i12 == 0 ? (v<E>) p0.f15967l : new c(i10, i12);
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }
}
