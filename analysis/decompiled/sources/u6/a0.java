package u6;

import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ImmutableSet.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a0<E> extends t<E> implements Set<E> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f15881j = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @RetainedWith
    @CheckForNull
    @LazyInit
    public transient v<E> f15882i;

    public static int q(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> a0<E> r(int i10, Object... objArr) {
        if (i10 == 0) {
            return r0.f15986q;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new w0(obj);
        }
        int iQ = q(i10);
        Object[] objArr2 = new Object[iQ];
        int i11 = iQ - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object obj2 = objArr[i14];
            n0.a(obj2, i14);
            int iHashCode = obj2.hashCode();
            int iA = s.a(iHashCode);
            while (true) {
                int i15 = iA & i11;
                Object obj3 = objArr2[i15];
                if (obj3 == null) {
                    objArr[i13] = obj2;
                    objArr2[i15] = obj2;
                    i12 += iHashCode;
                    i13++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA++;
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new w0(obj4);
        }
        if (q(i13) < iQ / 2) {
            return r(i13, objArr);
        }
        int length = objArr.length;
        if (i13 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new r0(objArr, i12, objArr2, i11, i13);
    }

    public static <E> a0<E> s(Collection<? extends E> collection) {
        if ((collection instanceof a0) && !(collection instanceof SortedSet)) {
            a0<E> a0Var = (a0) collection;
            if (!a0Var.o()) {
                return a0Var;
            }
        }
        Object[] array = collection.toArray();
        return r(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof a0) && (this instanceof r0)) {
            a0 a0Var = (a0) obj;
            Objects.requireNonNull(a0Var);
            if ((a0Var instanceof r0) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return v0.a(this, obj);
    }

    @Override // u6.t
    public v<E> h() {
        v<E> vVar = this.f15882i;
        if (vVar != null) {
            return vVar;
        }
        v<E> vVarT = t();
        this.f15882i = vVarT;
        return vVarT;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return v0.c(this);
    }

    @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public v<E> t() {
        Object[] array = toArray();
        a aVar = v.f16002i;
        return v.q(array, array.length);
    }
}
