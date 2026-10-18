package a5;

import java.util.ArrayDeque;
import java.util.Objects;
import java.util.PriorityQueue;
import m5.g0;
import n3.x;
import q3.f;
import z4.g;
import z4.h;
import z4.i;
import z4.l;
import z4.m;

/* JADX INFO: compiled from: CeaDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque<b> f447a = new ArrayDeque<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque<m> f448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PriorityQueue<b> f449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f452f;

    /* JADX INFO: compiled from: CeaDecoder.java */
    public static final class b extends l implements Comparable<b> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public long f453q;

        public b() {
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            b bVar2 = bVar;
            if (l(4) == bVar2.l(4)) {
                long j10 = this.f13583l - bVar2.f13583l;
                if (j10 == 0) {
                    j10 = this.f453q - bVar2.f453q;
                    if (j10 == 0) {
                        return 0;
                    }
                }
                if (j10 > 0) {
                    return 1;
                }
            } else if (l(4)) {
                return 1;
            }
            return -1;
        }

        public b(a aVar) {
        }
    }

    /* JADX INFO: compiled from: CeaDecoder.java */
    public static final class c extends m {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public q3.h.a<c> f454l;

        public c(q3.h.a<c> aVar) {
            this.f454l = aVar;
        }

        @Override // q3.h
        public final void o() {
            d dVar = (d) ((x) this.f454l).f11741c;
            Objects.requireNonNull(dVar);
            p();
            dVar.f448b.add(this);
        }
    }

    public d() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f447a.add(new b(null));
        }
        this.f448b = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f448b.add(new c(new x(this, 3)));
        }
        this.f449c = new PriorityQueue<>();
    }

    @Override // q3.d
    public void a() {
    }

    @Override // z4.h
    public final void b(long j10) {
        this.f451e = j10;
    }

    @Override // q3.d
    public final void c(l lVar) throws f {
        l lVar2 = lVar;
        m5.a.a(lVar2 == this.f450d);
        b bVar = (b) lVar2;
        if (bVar.n()) {
            bVar.o();
            this.f447a.add(bVar);
        } else {
            long j10 = this.f452f;
            this.f452f = 1 + j10;
            bVar.f453q = j10;
            this.f449c.add(bVar);
        }
        this.f450d = null;
    }

    @Override // q3.d
    public final l e() throws f {
        m5.a.e(this.f450d == null);
        if (this.f447a.isEmpty()) {
            return null;
        }
        b bVarPollFirst = this.f447a.pollFirst();
        this.f450d = bVarPollFirst;
        return bVarPollFirst;
    }

    public abstract g f();

    @Override // q3.d
    public void flush() {
        this.f452f = 0L;
        this.f451e = 0L;
        while (!this.f449c.isEmpty()) {
            b bVarPoll = this.f449c.poll();
            int i10 = g0.f10384a;
            j(bVarPoll);
        }
        b bVar = this.f450d;
        if (bVar != null) {
            bVar.o();
            this.f447a.add(bVar);
            this.f450d = null;
        }
    }

    public abstract void g(l lVar);

    @Override // q3.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public m d() throws i {
        if (this.f448b.isEmpty()) {
            return null;
        }
        while (!this.f449c.isEmpty()) {
            b bVarPeek = this.f449c.peek();
            int i10 = g0.f10384a;
            if (bVarPeek.f13583l > this.f451e) {
                break;
            }
            b bVarPoll = this.f449c.poll();
            if (bVarPoll.l(4)) {
                m mVarPollFirst = this.f448b.pollFirst();
                mVarPollFirst.k(4);
                bVarPoll.o();
                this.f447a.add(bVarPoll);
                return mVarPollFirst;
            }
            g(bVarPoll);
            if (i()) {
                g gVarF = f();
                m mVarPollFirst2 = this.f448b.pollFirst();
                mVarPollFirst2.q(bVarPoll.f13583l, gVarF, Long.MAX_VALUE);
                bVarPoll.o();
                this.f447a.add(bVarPoll);
                return mVarPollFirst2;
            }
            bVarPoll.o();
            this.f447a.add(bVarPoll);
        }
        return null;
    }

    public abstract boolean i();

    public final void j(b bVar) {
        bVar.o();
        this.f447a.add(bVar);
    }
}
