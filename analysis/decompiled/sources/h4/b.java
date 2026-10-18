package h4;

import androidx.fragment.app.r;
import f4.d;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;
import m5.w;

/* JADX INFO: compiled from: EventMessageDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends r {
    @Override // androidx.fragment.app.r
    public final f4.a g(d dVar, ByteBuffer byteBuffer) {
        return new f4.a(k(new w(byteBuffer.array(), byteBuffer.limit())));
    }

    public final a k(w wVar) {
        String strN = wVar.n();
        Objects.requireNonNull(strN);
        String strN2 = wVar.n();
        Objects.requireNonNull(strN2);
        return new a(strN, strN2, wVar.m(), wVar.m(), Arrays.copyOfRange(wVar.f10475a, wVar.f10476b, wVar.f10477c));
    }
}
