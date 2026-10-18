package z4;

import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: SimpleSubtitleDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f extends q3.j<l, m, i> implements h {
    public f() {
        super(new l[2], new m[2]);
        m5.a.e(this.f13599g == this.f13597e.length);
        for (q3.g gVar : this.f13597e) {
            gVar.q(1024);
        }
    }

    @Override // z4.h
    public final void b(long j10) {
    }

    @Override // q3.j
    public final q3.f f(q3.g gVar, q3.h hVar, boolean z10) {
        l lVar = (l) gVar;
        m mVar = (m) hVar;
        try {
            ByteBuffer byteBuffer = lVar.f13581j;
            Objects.requireNonNull(byteBuffer);
            mVar.q(lVar.f13583l, k(byteBuffer.array(), byteBuffer.limit(), z10), lVar.f19351p);
            mVar.f13555h &= Integer.MAX_VALUE;
            return null;
        } catch (i e10) {
            return e10;
        }
    }

    public abstract g k(byte[] bArr, int i10, boolean z10) throws i;
}
