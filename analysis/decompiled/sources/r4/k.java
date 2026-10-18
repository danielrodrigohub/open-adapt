package r4;

import java.io.IOException;
import java.util.Arrays;
import m5.g0;
import n3.s0;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: DataChunk.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f14599j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f14600k;

    public k(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, byte[] bArr) {
        super(jVar, mVar, 3, s0Var, i10, obj, -9223372036854775807L, -9223372036854775807L);
        this.f14599j = bArr == null ? g0.f10389f : bArr;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        try {
            this.f14566i.l(this.f14559b);
            int iB = 0;
            int i10 = 0;
            while (iB != -1 && !this.f14600k) {
                byte[] bArr = this.f14599j;
                if (bArr.length < i10 + Http2.INITIAL_MAX_FRAME_SIZE) {
                    this.f14599j = Arrays.copyOf(bArr, bArr.length + Http2.INITIAL_MAX_FRAME_SIZE);
                }
                iB = this.f14566i.b(this.f14599j, i10, Http2.INITIAL_MAX_FRAME_SIZE);
                if (iB != -1) {
                    i10 += iB;
                }
            }
            if (!this.f14600k) {
                ((u4.g.a) this).f15761l = Arrays.copyOf(this.f14599j, i10);
            }
        } finally {
            c3.d.i(this.f14566i);
        }
    }

    @Override // l5.d0.d
    public final void b() {
        this.f14600k = true;
    }
}
