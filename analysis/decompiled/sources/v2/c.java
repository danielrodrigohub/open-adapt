package v2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ByteBufferFileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements n<File, ByteBuffer> {

    /* JADX INFO: compiled from: ByteBufferFileLoader.java */
    public static final class a implements com.bumptech.glide.load.data.d<ByteBuffer> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final File f16140h;

        public a(File file) {
            this.f16140h = file;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return p2.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super ByteBuffer> aVar) {
            try {
                aVar.d(l3.a.a(this.f16140h));
            } catch (IOException e10) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    /* JADX INFO: compiled from: ByteBufferFileLoader.java */
    public static class b implements o<File, ByteBuffer> {
        @Override // v2.o
        public final n<File, ByteBuffer> b(r rVar) {
            return new c();
        }

        @Override // v2.o
        public final void c() {
        }
    }

    @Override // v2.n
    public final n.a<ByteBuffer> a(File file, int i10, int i11, p2.h hVar) {
        File file2 = file;
        return new n.a<>(new k3.d(file2), new a(file2));
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(File file) {
        return true;
    }
}
