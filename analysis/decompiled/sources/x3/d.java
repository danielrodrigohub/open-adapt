package x3;

import s3.j;
import s3.u;
import s3.v;
import s3.w;

/* JADX INFO: compiled from: StartOffsetExtractorOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f17750h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final j f17751i;

    /* JADX INFO: compiled from: StartOffsetExtractorOutput.java */
    public class a implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ u f17752a;

        public a(u uVar) {
            this.f17752a = uVar;
        }

        @Override // s3.u
        public final boolean f() {
            return this.f17752a.f();
        }

        @Override // s3.u
        public final u.a h(long j10) {
            u.a aVarH = this.f17752a.h(j10);
            v vVar = aVarH.f15077a;
            long j11 = vVar.f15082a;
            long j12 = vVar.f15083b;
            long j13 = d.this.f17750h;
            v vVar2 = new v(j11, j12 + j13);
            v vVar3 = aVarH.f15078b;
            return new u.a(vVar2, new v(vVar3.f15082a, vVar3.f15083b + j13));
        }

        @Override // s3.u
        public final long i() {
            return this.f17752a.i();
        }
    }

    public d(long j10, j jVar) {
        this.f17750h = j10;
        this.f17751i = jVar;
    }

    @Override // s3.j
    public final void b() {
        this.f17751i.b();
    }

    @Override // s3.j
    public final void j(u uVar) {
        this.f17751i.j(new a(uVar));
    }

    @Override // s3.j
    public final w p(int i10, int i11) {
        return this.f17751i.p(i10, i11);
    }
}
