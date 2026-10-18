package xd;

import fd.o;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: SequenceBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e<T> extends f<T> implements Iterator<T>, jd.d<o>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public T f18134i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public jd.d<? super o> f18135j;

    /* JADX WARN: Incorrect return type in method signature: (TT;Ljd/d<-Lfd/o;>;)Ljava/lang/Object; */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // xd.f
    public final void a(Object obj, jd.d dVar) {
        this.f18134i = obj;
        this.f18133h = 3;
        this.f18135j = dVar;
        p4.h.j(dVar, "frame");
    }

    public final Throwable b() {
        int i10 = this.f18133h;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        StringBuilder sbC = a0.b.c("Unexpected state of the iterator: ");
        sbC.append(this.f18133h);
        return new IllegalStateException(sbC.toString());
    }

    @Override // jd.d
    public final jd.f getContext() {
        return jd.h.f9512h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() throws Throwable {
        int i10;
        while (true) {
            i10 = this.f18133h;
            if (i10 != 0) {
                break;
            }
            this.f18133h = 5;
            jd.d<? super o> dVar = this.f18135j;
            p4.h.g(dVar);
            this.f18135j = null;
            dVar.resumeWith(o.f7408a);
        }
        if (i10 == 1) {
            p4.h.g(null);
            throw null;
        }
        if (i10 == 2 || i10 == 3) {
            return true;
        }
        if (i10 == 4) {
            return false;
        }
        throw b();
    }

    @Override // java.util.Iterator
    public final T next() throws Throwable {
        int i10 = this.f18133h;
        if (i10 == 0 || i10 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i10 == 2) {
            this.f18133h = 1;
            p4.h.g(null);
            throw null;
        }
        if (i10 != 3) {
            throw b();
        }
        this.f18133h = 0;
        T t10 = this.f18134i;
        this.f18134i = null;
        return t10;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // jd.d
    public final void resumeWith(Object obj) throws Throwable {
        d3.e.p(obj);
        this.f18133h = 4;
    }
}
