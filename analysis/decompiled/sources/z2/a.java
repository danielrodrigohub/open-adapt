package z2;

import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ByteBufferRewinder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements e<ByteBuffer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f19252a;

    /* JADX INFO: renamed from: z2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ByteBufferRewinder.java */
    public static class C0331a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f19252a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    public final ByteBuffer a() throws IOException {
        this.f19252a.position(0);
        return this.f19252a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
    }
}
