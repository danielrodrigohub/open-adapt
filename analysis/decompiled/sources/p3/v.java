package p3;

import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: ChannelMappingAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends u {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f12844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f12845j;

    @Override // p3.f
    public final void f(ByteBuffer byteBuffer) {
        int[] iArr = this.f12845j;
        Objects.requireNonNull(iArr);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferK = k(((iLimit - iPosition) / this.f12837b.f12739d) * this.f12838c.f12739d);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                byteBufferK.putShort(byteBuffer.getShort((i10 * 2) + iPosition));
            }
            iPosition += this.f12837b.f12739d;
        }
        byteBuffer.position(iLimit);
        byteBufferK.flip();
    }

    @Override // p3.u
    public final f.a g(f.a aVar) throws f.b {
        int[] iArr = this.f12844i;
        if (iArr == null) {
            return f.a.f12735e;
        }
        if (aVar.f12738c != 2) {
            throw new f.b(aVar);
        }
        boolean z10 = aVar.f12737b != iArr.length;
        int i10 = 0;
        while (i10 < iArr.length) {
            int i11 = iArr[i10];
            if (i11 >= aVar.f12737b) {
                throw new f.b(aVar);
            }
            z10 |= i11 != i10;
            i10++;
        }
        return z10 ? new f.a(aVar.f12736a, iArr.length, 2) : f.a.f12735e;
    }

    @Override // p3.u
    public final void h() {
        this.f12845j = this.f12844i;
    }

    @Override // p3.u
    public final void j() {
        this.f12845j = null;
        this.f12844i = null;
    }
}
