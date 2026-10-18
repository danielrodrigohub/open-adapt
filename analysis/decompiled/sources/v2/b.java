package v2;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ByteArrayLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<Data> implements n<byte[], Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0286b<Data> f16137a;

    /* JADX INFO: compiled from: ByteArrayLoader.java */
    public static class a implements o<byte[], ByteBuffer> {

        /* JADX INFO: renamed from: v2.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ByteArrayLoader.java */
        public class C0285a implements InterfaceC0286b<ByteBuffer> {
            @Override // v2.b.InterfaceC0286b
            public final Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // v2.b.InterfaceC0286b
            public final ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // v2.o
        public final n<byte[], ByteBuffer> b(r rVar) {
            return new b(new C0285a());
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: renamed from: v2.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ByteArrayLoader.java */
    public interface InterfaceC0286b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* JADX INFO: compiled from: ByteArrayLoader.java */
    public static class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final byte[] f16138h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final InterfaceC0286b<Data> f16139i;

        public c(byte[] bArr, InterfaceC0286b<Data> interfaceC0286b) {
            this.f16138h = bArr;
            this.f16139i = interfaceC0286b;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> a() {
            return this.f16139i.a();
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
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            aVar.d(this.f16139i.b(this.f16138h));
        }
    }

    /* JADX INFO: compiled from: ByteArrayLoader.java */
    public static class d implements o<byte[], InputStream> {

        /* JADX INFO: compiled from: ByteArrayLoader.java */
        public class a implements InterfaceC0286b<InputStream> {
            @Override // v2.b.InterfaceC0286b
            public final Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // v2.b.InterfaceC0286b
            public final InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // v2.o
        public final n<byte[], InputStream> b(r rVar) {
            return new b(new a());
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public b(InterfaceC0286b<Data> interfaceC0286b) {
        this.f16137a = interfaceC0286b;
    }

    @Override // v2.n
    public final n.a a(byte[] bArr, int i10, int i11, p2.h hVar) {
        byte[] bArr2 = bArr;
        return new n.a(new k3.d(bArr2), new c(bArr2, this.f16137a));
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(byte[] bArr) {
        return true;
    }
}
