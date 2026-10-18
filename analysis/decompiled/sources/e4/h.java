package e4;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: BatchBuffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends q3.g {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f6398p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6399q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6400r;

    public h() {
        super(2);
        this.f6400r = 32;
    }

    @Override // q3.g
    public final void o() {
        super.o();
        this.f6399q = 0;
    }

    public final boolean u(q3.g gVar) {
        boolean z10;
        ByteBuffer byteBuffer;
        m5.a.a(!gVar.t());
        m5.a.a(!gVar.m());
        m5.a.a(!gVar.l(4));
        if (w()) {
            if (this.f6399q < this.f6400r && gVar.n() == n()) {
                ByteBuffer byteBuffer2 = gVar.f13581j;
                if (byteBuffer2 != null && (byteBuffer = this.f13581j) != null) {
                    if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    }
                }
                z10 = true;
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            return false;
        }
        int i10 = this.f6399q;
        this.f6399q = i10 + 1;
        if (i10 == 0) {
            this.f13583l = gVar.f13583l;
            if (gVar.l(1)) {
                this.f13555h = 1;
            }
        }
        if (gVar.n()) {
            this.f13555h = Integer.MIN_VALUE;
        }
        ByteBuffer byteBuffer3 = gVar.f13581j;
        if (byteBuffer3 != null) {
            q(byteBuffer3.remaining());
            this.f13581j.put(byteBuffer3);
        }
        this.f6398p = gVar.f13583l;
        return true;
    }

    public final boolean w() {
        return this.f6399q > 0;
    }
}
