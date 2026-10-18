package q3;

import java.util.ArrayDeque;
import java.util.Objects;
import q3.f;
import q3.g;
import q3.h;
import z4.l;

/* JADX INFO: compiled from: SimpleDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j<I extends g, O extends h, E extends f> implements d<I, O, E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f13593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13594b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque<I> f13595c = new ArrayDeque<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayDeque<O> f13596d = new ArrayDeque<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final I[] f13597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final O[] f13598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public I f13601i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public E f13602j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f13604l;

    /* JADX INFO: compiled from: SimpleDecoder.java */
    public class a extends Thread {
        public a() {
            super("ExoPlayer:SimpleDecoder");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            j jVar = j.this;
            Objects.requireNonNull(jVar);
            do {
                try {
                } catch (InterruptedException e10) {
                    throw new IllegalStateException(e10);
                }
            } while (jVar.g());
        }
    }

    public j(I[] iArr, O[] oArr) {
        this.f13597e = iArr;
        this.f13599g = iArr.length;
        for (int i10 = 0; i10 < this.f13599g; i10++) {
            this.f13597e[i10] = new l();
        }
        this.f13598f = oArr;
        this.f13600h = oArr.length;
        for (int i11 = 0; i11 < this.f13600h; i11++) {
            this.f13598f[i11] = new z4.e((z4.f) this);
        }
        a aVar = new a();
        this.f13593a = aVar;
        aVar.start();
    }

    @Override // q3.d
    public final void a() {
        synchronized (this.f13594b) {
            this.f13604l = true;
            this.f13594b.notify();
        }
        try {
            this.f13593a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // q3.d
    public final void c(Object obj) throws f {
        g gVar = (g) obj;
        synchronized (this.f13594b) {
            i();
            m5.a.a(gVar == this.f13601i);
            this.f13595c.addLast((I) gVar);
            h();
            this.f13601i = null;
        }
    }

    @Override // q3.d
    public final Object d() throws f {
        O oRemoveFirst;
        synchronized (this.f13594b) {
            i();
            oRemoveFirst = this.f13596d.isEmpty() ? null : this.f13596d.removeFirst();
        }
        return oRemoveFirst;
    }

    @Override // q3.d
    public final Object e() throws f {
        I i10;
        synchronized (this.f13594b) {
            i();
            m5.a.e(this.f13601i == null);
            int i11 = this.f13599g;
            if (i11 == 0) {
                i10 = null;
            } else {
                I[] iArr = this.f13597e;
                int i12 = i11 - 1;
                this.f13599g = i12;
                i10 = iArr[i12];
            }
            this.f13601i = i10;
        }
        return i10;
    }

    public abstract E f(I i10, O o10, boolean z10);

    @Override // q3.d
    public final void flush() {
        synchronized (this.f13594b) {
            this.f13603k = true;
            I i10 = this.f13601i;
            if (i10 != null) {
                j(i10);
                this.f13601i = null;
            }
            while (!this.f13595c.isEmpty()) {
                j(this.f13595c.removeFirst());
            }
            while (!this.f13596d.isEmpty()) {
                this.f13596d.removeFirst().o();
            }
        }
    }

    public final boolean g() throws InterruptedException {
        z4.i iVar;
        f fVarF;
        synchronized (this.f13594b) {
            while (!this.f13604l) {
                if (!this.f13595c.isEmpty() && this.f13600h > 0) {
                    break;
                }
                this.f13594b.wait();
            }
            if (this.f13604l) {
                return false;
            }
            I iRemoveFirst = this.f13595c.removeFirst();
            O[] oArr = this.f13598f;
            int i10 = this.f13600h - 1;
            this.f13600h = i10;
            O o10 = oArr[i10];
            boolean z10 = this.f13603k;
            this.f13603k = false;
            if (iRemoveFirst.l(4)) {
                o10.k(4);
            } else {
                if (iRemoveFirst.n()) {
                    o10.k(Integer.MIN_VALUE);
                }
                if (iRemoveFirst.l(134217728)) {
                    o10.k(134217728);
                }
                try {
                    fVarF = f(iRemoveFirst, o10, z10);
                } catch (OutOfMemoryError e10) {
                    iVar = new z4.i("Unexpected decode error", e10);
                    fVarF = iVar;
                } catch (RuntimeException e11) {
                    iVar = new z4.i("Unexpected decode error", e11);
                    fVarF = iVar;
                }
                if (fVarF != null) {
                    synchronized (this.f13594b) {
                        this.f13602j = (z4.i) fVarF;
                    }
                    return false;
                }
            }
            synchronized (this.f13594b) {
                if (this.f13603k || o10.n()) {
                    o10.o();
                } else {
                    this.f13596d.addLast(o10);
                }
                j(iRemoveFirst);
            }
            return true;
        }
    }

    public final void h() {
        if (!this.f13595c.isEmpty() && this.f13600h > 0) {
            this.f13594b.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends q3.f */
    public final void i() throws E, f {
        E e10 = this.f13602j;
        if (e10 != null) {
            throw e10;
        }
    }

    public final void j(I i10) {
        i10.o();
        I[] iArr = this.f13597e;
        int i11 = this.f13599g;
        this.f13599g = i11 + 1;
        iArr[i11] = i10;
    }
}
