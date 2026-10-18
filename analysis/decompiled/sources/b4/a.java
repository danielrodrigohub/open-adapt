package b4;

import java.io.EOFException;
import java.io.IOException;
import m5.g0;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: DefaultOggSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f3232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3236h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f3237i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3238j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3239k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3240l;

    /* JADX INFO: renamed from: b4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultOggSeeker.java */
    public final class C0053a implements u {
        public C0053a() {
        }

        @Override // s3.u
        public final boolean f() {
            return true;
        }

        @Override // s3.u
        public final u.a h(long j10) {
            long jA = a.this.f3232d.a(j10);
            a aVar = a.this;
            long j11 = aVar.f3230b;
            long j12 = aVar.f3231c;
            v vVar = new v(j10, g0.j(((((j12 - j11) * jA) / aVar.f3234f) + j11) - 30000, j11, j12 - 1));
            return new u.a(vVar, vVar);
        }

        @Override // s3.u
        public final long i() {
            a aVar = a.this;
            return (aVar.f3234f * 1000000) / ((long) aVar.f3232d.f3274i);
        }
    }

    public a(h hVar, long j10, long j11, long j12, long j13, boolean z10) {
        m5.a.a(j10 >= 0 && j11 > j10);
        this.f3232d = hVar;
        this.f3230b = j10;
        this.f3231c = j11;
        if (j12 == j11 - j10 || z10) {
            this.f3234f = j13;
            this.f3233e = 4;
        } else {
            this.f3233e = 0;
        }
        this.f3229a = new e();
    }

    @Override // b4.f
    public final u a() {
        if (this.f3234f != 0) {
            return new C0053a();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    @Override // b4.f
    public final long b(s3.i iVar) throws IOException {
        boolean z10;
        long j10;
        long j11;
        int i10 = this.f3233e;
        if (i10 == 0) {
            long jU = iVar.u();
            this.f3235g = jU;
            this.f3233e = 1;
            long j12 = this.f3231c - 65307;
            if (j12 > jU) {
                return j12;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                if (this.f3237i == this.f3238j) {
                    j10 = -1;
                } else {
                    long jU2 = iVar.u();
                    if (this.f3229a.c(iVar, this.f3238j)) {
                        this.f3229a.a(iVar, false);
                        iVar.i();
                        long j13 = this.f3236h;
                        e eVar = this.f3229a;
                        long j14 = eVar.f3257b;
                        long j15 = j13 - j14;
                        int i11 = eVar.f3259d + eVar.f3260e;
                        if (0 > j15 || j15 >= 72000) {
                            if (j15 < 0) {
                                this.f3238j = jU2;
                                this.f3240l = j14;
                            } else {
                                this.f3237i = iVar.u() + ((long) i11);
                                this.f3239k = this.f3229a.f3257b;
                            }
                            long j16 = this.f3238j;
                            long j17 = this.f3237i;
                            if (j16 - j17 < 100000) {
                                this.f3238j = j17;
                                j10 = j17;
                            } else {
                                long jU3 = iVar.u() - (((long) i11) * (j15 <= 0 ? 2L : 1L));
                                long j18 = this.f3238j;
                                long j19 = this.f3237i;
                                j10 = g0.j((((j18 - j19) * j15) / (this.f3240l - this.f3239k)) + jU3, j19, j18 - 1);
                            }
                        } else {
                            j10 = -1;
                        }
                    } else {
                        j10 = this.f3237i;
                        if (j10 == jU2) {
                            throw new IOException("No ogg page can be found.");
                        }
                    }
                }
                j11 = -1;
                if (j10 != -1) {
                    return j10;
                }
                this.f3233e = 3;
            } else {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return -1L;
                    }
                    throw new IllegalStateException();
                }
                j11 = -1;
            }
            while (true) {
                this.f3229a.c(iVar, j11);
                this.f3229a.a(iVar, false);
                e eVar2 = this.f3229a;
                if (eVar2.f3257b > this.f3236h) {
                    iVar.i();
                    this.f3233e = 4;
                    return -(this.f3239k + 2);
                }
                iVar.k(eVar2.f3259d + eVar2.f3260e);
                this.f3237i = iVar.u();
                this.f3239k = this.f3229a.f3257b;
                j11 = -1;
            }
        }
        this.f3229a.b();
        if (!this.f3229a.c(iVar, -1L)) {
            throw new EOFException();
        }
        this.f3229a.a(iVar, false);
        e eVar3 = this.f3229a;
        iVar.k(eVar3.f3259d + eVar3.f3260e);
        long j20 = this.f3229a.f3257b;
        while (true) {
            e eVar4 = this.f3229a;
            if ((eVar4.f3256a & 4) == 4 || !eVar4.c(iVar, -1L) || iVar.u() >= this.f3231c || !this.f3229a.a(iVar, true)) {
                break;
            }
            e eVar5 = this.f3229a;
            try {
                iVar.k(eVar5.f3259d + eVar5.f3260e);
                z10 = true;
            } catch (EOFException unused) {
                z10 = false;
            }
            if (!z10) {
                break;
            }
            j20 = this.f3229a.f3257b;
        }
        this.f3234f = j20;
        this.f3233e = 4;
        return this.f3235g;
    }

    @Override // b4.f
    public final void c(long j10) {
        this.f3236h = g0.j(j10, 0L, this.f3234f - 1);
        this.f3233e = 2;
        this.f3237i = this.f3230b;
        this.f3238j = this.f3231c;
        this.f3239k = 0L;
        this.f3240l = this.f3234f;
    }
}
