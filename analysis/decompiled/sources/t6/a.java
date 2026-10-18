package t6;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: AbstractIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T> implements Iterator<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15531h = 2;

    /* JADX INFO: Incorrect field signature: TT; */
    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @CheckForNull
    public String f15532i;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        int i10 = this.f15531h;
        if (!(i10 != 4)) {
            throw new IllegalStateException();
        }
        int iA = q.g.a(i10);
        if (iA == 0) {
            return true;
        }
        if (iA != 2) {
            this.f15531h = 4;
            m.a aVar = (m.a) this;
            int i11 = aVar.f15552m;
            while (true) {
                int i12 = aVar.f15552m;
                if (i12 == -1) {
                    aVar.f15531h = 3;
                    string = null;
                    break;
                }
                k kVar = (k) aVar;
                int iA2 = kVar.f15544o.f15545a.a(kVar.f15549j, i12);
                if (iA2 == -1) {
                    iA2 = aVar.f15549j.length();
                    aVar.f15552m = -1;
                } else {
                    aVar.f15552m = iA2 + 1;
                }
                int i13 = aVar.f15552m;
                if (i13 == i11) {
                    int i14 = i13 + 1;
                    aVar.f15552m = i14;
                    if (i14 > aVar.f15549j.length()) {
                        aVar.f15552m = -1;
                    }
                } else {
                    while (i11 < iA2 && aVar.f15550k.b(aVar.f15549j.charAt(i11))) {
                        i11++;
                    }
                    while (iA2 > i11) {
                        int i15 = iA2 - 1;
                        if (!aVar.f15550k.b(aVar.f15549j.charAt(i15))) {
                            break;
                        }
                        iA2 = i15;
                    }
                    if (!aVar.f15551l || i11 != iA2) {
                        int i16 = aVar.f15553n;
                        if (i16 == 1) {
                            iA2 = aVar.f15549j.length();
                            aVar.f15552m = -1;
                            while (iA2 > i11) {
                                int i17 = iA2 - 1;
                                if (!aVar.f15550k.b(aVar.f15549j.charAt(i17))) {
                                    break;
                                }
                                iA2 = i17;
                            }
                        } else {
                            aVar.f15553n = i16 - 1;
                        }
                        string = aVar.f15549j.subSequence(i11, iA2).toString();
                        break;
                    }
                    i11 = aVar.f15552m;
                }
            }
            this.f15532i = string;
            if (this.f15531h != 3) {
                this.f15531h = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f15531h = 2;
        T t10 = (T) this.f15532i;
        this.f15532i = null;
        return t10;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
