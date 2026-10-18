package q3;

import java.nio.ByteBuffer;
import n3.p0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: DecoderInputBuffer.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends q3.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ByteBuffer f13581j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13582k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f13583l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ByteBuffer f13584m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f13585n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f13580i = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f13586o = 0;

    /* JADX INFO: compiled from: DecoderInputBuffer.java */
    public static final class a extends IllegalStateException {
        public a(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
        }
    }

    static {
        p0.a("goog.exo.decoder");
    }

    public g(int i10) {
        this.f13585n = i10;
    }

    public void o() {
        this.f13555h = 0;
        ByteBuffer byteBuffer = this.f13581j;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f13584m;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f13582k = false;
    }

    public final ByteBuffer p(int i10) {
        int i11 = this.f13585n;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f13581j;
        throw new a(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    @EnsuresNonNull({"data"})
    public final void q(int i10) {
        int i11 = i10 + this.f13586o;
        ByteBuffer byteBuffer = this.f13581j;
        if (byteBuffer == null) {
            this.f13581j = p(i11);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i12 = i11 + iPosition;
        if (iCapacity >= i12) {
            this.f13581j = byteBuffer;
            return;
        }
        ByteBuffer byteBufferP = p(i12);
        byteBufferP.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferP.put(byteBuffer);
        }
        this.f13581j = byteBufferP;
    }

    public final void s() {
        ByteBuffer byteBuffer = this.f13581j;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f13584m;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean t() {
        return l(1073741824);
    }
}
