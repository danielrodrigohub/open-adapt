package c4;

import java.util.Collections;
import java.util.List;
import n3.s0;

/* JADX INFO: compiled from: DvbSubtitleReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<d0.a> f4004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s3.w[] f4005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f4009f = -9223372036854775807L;

    public i(List<d0.a> list) {
        this.f4004a = list;
        this.f4005b = new s3.w[list.size()];
    }

    @Override // c4.j
    public final void a() {
        this.f4006c = false;
        this.f4009f = -9223372036854775807L;
    }

    public final boolean b(m5.w wVar, int i10) {
        if (wVar.f10477c - wVar.f10476b == 0) {
            return false;
        }
        if (wVar.t() != i10) {
            this.f4006c = false;
        }
        this.f4007d--;
        return this.f4006c;
    }

    @Override // c4.j
    public final void c(m5.w wVar) {
        if (this.f4006c) {
            if (this.f4007d != 2 || b(wVar, 32)) {
                if (this.f4007d != 1 || b(wVar, 0)) {
                    int i10 = wVar.f10476b;
                    int i11 = wVar.f10477c - i10;
                    for (s3.w wVar2 : this.f4005b) {
                        wVar.D(i10);
                        wVar2.f(wVar, i11);
                    }
                    this.f4008e += i11;
                }
            }
        }
    }

    @Override // c4.j
    public final void d() {
        if (this.f4006c) {
            if (this.f4009f != -9223372036854775807L) {
                for (s3.w wVar : this.f4005b) {
                    wVar.c(this.f4009f, 1, this.f4008e, 0, null);
                }
            }
            this.f4006c = false;
        }
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f4006c = true;
        if (j10 != -9223372036854775807L) {
            this.f4009f = j10;
        }
        this.f4008e = 0;
        this.f4007d = 2;
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        for (int i10 = 0; i10 < this.f4005b.length; i10++) {
            d0.a aVar = this.f4004a.get(i10);
            dVar.a();
            s3.w wVarP = jVar.p(dVar.c(), 3);
            s0.a aVar2 = new s0.a();
            aVar2.f11695a = dVar.b();
            aVar2.f11705k = "application/dvbsubs";
            aVar2.f11707m = Collections.singletonList(aVar.f3946b);
            aVar2.f11697c = aVar.f3945a;
            wVarP.b(new s0(aVar2));
            this.f4005b[i10] = wVarP;
        }
    }
}
