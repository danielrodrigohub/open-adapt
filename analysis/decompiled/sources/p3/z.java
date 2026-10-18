package p3;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: FloatResamplingAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends u {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f12915i = Float.floatToIntBits(Float.NaN);

    public static void l(int i10, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i10) * 4.656612875245797E-10d));
        if (iFloatToIntBits == f12915i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // p3.f
    public final void f(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferK;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f12837b.f12738c;
        if (i11 == 536870912) {
            byteBufferK = k((i10 / 3) * 4);
            while (iPosition < iLimit) {
                l(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferK);
                iPosition += 3;
            }
        } else {
            if (i11 != 805306368) {
                throw new IllegalStateException();
            }
            byteBufferK = k(i10);
            while (iPosition < iLimit) {
                l((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferK);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferK.flip();
    }

    @Override // p3.u
    public final f.a g(f.a aVar) throws f.b {
        int i10 = aVar.f12738c;
        if (i10 == 536870912 || i10 == 805306368 || i10 == 4) {
            return i10 != 4 ? new f.a(aVar.f12736a, aVar.f12737b, 4) : f.a.f12735e;
        }
        throw new f.b(aVar);
    }
}
