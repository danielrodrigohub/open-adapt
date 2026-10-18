package androidx.fragment.app;

import android.view.View;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: FragmentContainer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r implements f4.b, i8.e {
    @Override // f4.b
    public f4.a c(f4.d dVar) {
        ByteBuffer byteBuffer = dVar.f13581j;
        Objects.requireNonNull(byteBuffer);
        m5.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.n()) {
            return null;
        }
        return g(dVar, byteBuffer);
    }

    @Override // i8.e
    public void d(i8.a aVar) {
        i8.h.f8828b.execute(new y0.u(aVar, this, 2));
    }

    public abstract f4.a g(f4.d dVar, ByteBuffer byteBuffer);

    public abstract View h(int i10);

    public abstract boolean i();

    public abstract void j(i8.a aVar);
}
