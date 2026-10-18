package y2;

import android.graphics.Bitmap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: ByteBufferBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements p2.j<ByteBuffer, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f18448a;

    public g(n nVar) {
        this.f18448a = nVar;
    }

    @Override // p2.j
    public final boolean a(ByteBuffer byteBuffer, p2.h hVar) throws IOException {
        Objects.requireNonNull(this.f18448a);
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(ByteBuffer byteBuffer, int i10, int i11, p2.h hVar) throws IOException {
        n nVar = this.f18448a;
        return nVar.a(new t.a(byteBuffer, nVar.f18474d, nVar.f18473c), i10, i11, hVar, n.f18469j);
    }
}
