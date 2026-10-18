package w3;

import com.newrelic.agent.android.analytics.AnalyticsEvent;
import java.io.IOException;
import m5.w;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import s3.h;
import s3.j;
import s3.s;
import s3.t;
import s3.u;
import y0.i;

/* JADX INFO: compiled from: FlvExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public j f17095f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17097h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f17098i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17099j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17100k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17101l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f17102m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17103n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a f17104o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public e f17105p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f17090a = new w(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f17091b = new w(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f17092c = new w(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f17093d = new w();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f17094e = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17096g = 1;

    static {
        i iVar = i.f18233e;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        if (j10 == 0) {
            this.f17096g = 1;
            this.f17097h = false;
        } else {
            this.f17096g = 3;
        }
        this.f17099j = 0;
    }

    @RequiresNonNull({"extractorOutput"})
    public final void c() {
        if (this.f17103n) {
            return;
        }
        this.f17095f.j(new u.b(-9223372036854775807L));
        this.f17103n = true;
    }

    public final w d(s3.i iVar) throws IOException {
        int i10 = this.f17101l;
        w wVar = this.f17093d;
        byte[] bArr = wVar.f10475a;
        if (i10 > bArr.length) {
            wVar.B(new byte[Math.max(bArr.length * 2, i10)], 0);
        } else {
            wVar.D(0);
        }
        this.f17093d.C(this.f17101l);
        iVar.readFully(this.f17093d.f10475a, 0, this.f17101l);
        return this.f17093d;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:79:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0009 A[SYNTHETIC] */
    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException {
        long j10;
        boolean zA;
        boolean z10;
        long j11;
        m5.a.f(this.f17095f);
        while (true) {
            int i10 = this.f17096g;
            boolean z11 = false;
            if (i10 == 1) {
                if (iVar.e(this.f17091b.f10475a, 0, 9, true)) {
                    this.f17091b.D(0);
                    this.f17091b.E(4);
                    int iT = this.f17091b.t();
                    boolean z12 = (iT & 4) != 0;
                    z11 = (iT & 1) != 0;
                    if (z12 && this.f17104o == null) {
                        this.f17104o = new a(this.f17095f.p(8, 1));
                    }
                    if (z11 && this.f17105p == null) {
                        this.f17105p = new e(this.f17095f.p(9, 2));
                    }
                    this.f17095f.b();
                    this.f17099j = (this.f17091b.e() - 9) + 4;
                    this.f17096g = 2;
                    z11 = true;
                }
                if (!z11) {
                    return -1;
                }
            } else if (i10 == 2) {
                iVar.k(this.f17099j);
                this.f17099j = 0;
                this.f17096g = 3;
            } else if (i10 == 3) {
                if (iVar.e(this.f17092c.f10475a, 0, 11, true)) {
                    this.f17092c.D(0);
                    this.f17100k = this.f17092c.t();
                    this.f17101l = this.f17092c.v();
                    this.f17102m = this.f17092c.v();
                    this.f17102m = (((long) (this.f17092c.t() << 24)) | this.f17102m) * 1000;
                    this.f17092c.E(3);
                    this.f17096g = 4;
                    z11 = true;
                }
                if (!z11) {
                    return -1;
                }
            } else {
                if (i10 != 4) {
                    throw new IllegalStateException();
                }
                if (this.f17097h) {
                    j10 = this.f17098i + this.f17102m;
                } else {
                    j10 = this.f17094e.f17106b == -9223372036854775807L ? 0L : this.f17102m;
                }
                int i11 = this.f17100k;
                if (i11 == 8 && this.f17104o != null) {
                    c();
                    zA = this.f17104o.a(d(iVar), j10);
                } else if (i11 != 9 || this.f17105p == null) {
                    if (i11 != 18 || this.f17103n) {
                        iVar.k(this.f17101l);
                        zA = false;
                        z10 = false;
                    } else {
                        zA = this.f17094e.a(d(iVar), j10);
                        c cVar = this.f17094e;
                        long j12 = cVar.f17106b;
                        if (j12 != -9223372036854775807L) {
                            this.f17095f.j(new s(cVar.f17108d, cVar.f17107c, j12));
                            this.f17103n = true;
                        }
                    }
                    if (!this.f17097h && zA) {
                        this.f17097h = true;
                        if (this.f17094e.f17106b == -9223372036854775807L) {
                            j11 = -this.f17102m;
                        } else {
                            j11 = 0;
                        }
                        this.f17098i = j11;
                    }
                    this.f17099j = 4;
                    this.f17096g = 2;
                    if (z10) {
                        return 0;
                    }
                } else {
                    c();
                    zA = this.f17105p.a(d(iVar), j10);
                }
                z10 = true;
                if (!this.f17097h) {
                    this.f17097h = true;
                    if (this.f17094e.f17106b == -9223372036854775807L) {
                        j11 = -this.f17102m;
                    } else {
                        j11 = 0;
                    }
                    this.f17098i = j11;
                }
                this.f17099j = 4;
                this.f17096g = 2;
                if (z10) {
                    return 0;
                }
            }
        }
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f17095f = jVar;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        s3.e eVar = (s3.e) iVar;
        eVar.p(this.f17090a.f10475a, 0, 3, false);
        this.f17090a.D(0);
        if (this.f17090a.v() != 4607062) {
            return false;
        }
        eVar.p(this.f17090a.f10475a, 0, 2, false);
        this.f17090a.D(0);
        if ((this.f17090a.y() & AnalyticsEvent.EVENT_TYPE_LIMIT) != 0) {
            return false;
        }
        eVar.p(this.f17090a.f10475a, 0, 4, false);
        this.f17090a.D(0);
        int iE = this.f17090a.e();
        eVar.f15042f = 0;
        eVar.n(iE, false);
        eVar.p(this.f17090a.f10475a, 0, 4, false);
        this.f17090a.D(0);
        return this.f17090a.e() == 0;
    }
}
