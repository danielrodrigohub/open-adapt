package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ImmutableCollection.java */
/* JADX INFO: loaded from: classes.dex */
@DoNotMock("Use ImmutableList.of or another implementation")
public abstract class t<E> extends AbstractCollection<E> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object[] f15993h = new Object[0];

    /* JADX INFO: compiled from: ImmutableCollection.java */
    public static abstract class a<E> extends b<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f15994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15996c;

        public a() {
            h.b(4, "initialCapacity");
            this.f15994a = new Object[4];
            this.f15995b = 0;
        }

        public final void b(int i10) {
            Object[] objArr = this.f15994a;
            if (objArr.length < i10) {
                this.f15994a = Arrays.copyOf(objArr, b.a(objArr.length, i10));
                this.f15996c = false;
            } else if (this.f15996c) {
                this.f15994a = (Object[]) objArr.clone();
                this.f15996c = false;
            }
        }
    }

    /* JADX INFO: compiled from: ImmutableCollection.java */
    @DoNotMock
    public static abstract class b<E> {
        public static int a(int i10, int i11) {
            if (i11 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i10 + (i10 >> 1) + 1;
            if (iHighestOneBit < i11) {
                iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@CheckForNull Object obj);

    public v<E> h() {
        if (isEmpty()) {
            u6.a aVar = v.f16002i;
            return (v<E>) p0.f15967l;
        }
        Object[] array = toArray();
        u6.a aVar2 = v.f16002i;
        return v.q(array, array.length);
    }

    @CanIgnoreReturnValue
    public int k(Object[] objArr, int i10) {
        y0<E> it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }

    @CheckForNull
    public Object[] l() {
        return null;
    }

    public int m() {
        throw new UnsupportedOperationException();
    }

    public int n() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean o();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public abstract y0<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f15993h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final <T> T[] toArray(T[] tArr) {
        Objects.requireNonNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrL = l();
            if (objArrL != null) {
                return (T[]) Arrays.copyOfRange(objArrL, n(), m(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        k(tArr, 0);
        return tArr;
    }
}
