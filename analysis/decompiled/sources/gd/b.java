package gd;

import java.io.File;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: AbstractIterator.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> implements Iterator<T>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8053h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public T f8054i;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        T t10;
        int i10 = this.f8053h;
        if (!(i10 != 4)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int iA = q.g.a(i10);
        if (iA == 0) {
            return true;
        }
        if (iA != 2) {
            this.f8053h = 4;
            pd.b.C0235b c0235b = (pd.b.C0235b) this;
            while (true) {
                pd.b.c cVarPeek = c0235b.f13427j.peek();
                if (cVarPeek == null) {
                    t10 = null;
                    break;
                }
                File fileA = cVarPeek.a();
                if (fileA == null) {
                    c0235b.f13427j.pop();
                } else {
                    if (p4.h.c(fileA, cVarPeek.f13439a) || !fileA.isDirectory() || c0235b.f13427j.size() >= pd.b.this.f13426c) {
                        t10 = (T) fileA;
                        break;
                    }
                    c0235b.f13427j.push(c0235b.a(fileA));
                }
            }
            if (t10 != null) {
                c0235b.f8054i = t10;
                c0235b.f8053h = 1;
            } else {
                c0235b.f8053h = 3;
            }
            if (this.f8053h == 1) {
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
        this.f8053h = 2;
        return this.f8054i;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
