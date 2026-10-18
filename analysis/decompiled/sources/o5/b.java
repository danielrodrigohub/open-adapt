package o5;

import java.nio.ByteBuffer;
import m5.g0;
import m5.w;
import n3.q;
import n3.s0;
import n3.t1;

/* JADX INFO: compiled from: CameraMotionRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends n3.f {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final q3.g f12270t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final w f12271u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f12272v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public a f12273w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f12274x;

    public b() {
        super(6);
        this.f12270t = new q3.g(1);
        this.f12271u = new w();
    }

    @Override // n3.f
    public final void B() {
        a aVar = this.f12273w;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // n3.f
    public final void D(long j10, boolean z10) {
        this.f12274x = Long.MIN_VALUE;
        a aVar = this.f12273w;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // n3.f
    public final void H(s0[] s0VarArr, long j10, long j11) {
        this.f12272v = j11;
    }

    @Override // n3.t1
    public final int a(s0 s0Var) {
        return "application/x-camera-motion".equals(s0Var.f11687s) ? t1.c(4) : t1.c(0);
    }

    @Override // n3.s1
    public final boolean b() {
        return h();
    }

    @Override // n3.s1, n3.t1
    public final String getName() {
        return "CameraMotionRenderer";
    }

    @Override // n3.s1
    public final boolean isReady() {
        return true;
    }

    @Override // n3.s1
    public final void k(long j10, long j11) {
        float[] fArr;
        while (!h() && this.f12274x < 100000 + j10) {
            this.f12270t.o();
            if (I(A(), this.f12270t, 0) != -4 || this.f12270t.l(4)) {
                return;
            }
            q3.g gVar = this.f12270t;
            this.f12274x = gVar.f13583l;
            if (this.f12273w != null && !gVar.n()) {
                this.f12270t.s();
                ByteBuffer byteBuffer = this.f12270t.f13581j;
                int i10 = g0.f10384a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.f12271u.B(byteBuffer.array(), byteBuffer.limit());
                    this.f12271u.D(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i11 = 0; i11 < 3; i11++) {
                        fArr2[i11] = Float.intBitsToFloat(this.f12271u.g());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.f12273w.a(this.f12274x - this.f12272v, fArr);
                }
            }
        }
    }

    @Override // n3.f, n3.p1.b
    public final void l(int i10, Object obj) throws q {
        if (i10 == 8) {
            this.f12273w = (a) obj;
        }
    }
}
