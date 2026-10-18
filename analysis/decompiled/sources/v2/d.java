package v2;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: DataUrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d<Model, Data> implements n<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a<Data> f16141a;

    /* JADX INFO: compiled from: DataUrlLoader.java */
    public interface a<Data> {
    }

    /* JADX INFO: compiled from: DataUrlLoader.java */
    public static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f16142h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final a<Data> f16143i;

        /* JADX INFO: Incorrect field signature: TData; */
        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ByteArrayInputStream f16144j;

        public b(String str, a<Data> aVar) {
            this.f16142h = str;
            this.f16143i = aVar;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> a() {
            Objects.requireNonNull((c.a) this.f16143i);
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            try {
                a<Data> aVar = this.f16143i;
                ByteArrayInputStream byteArrayInputStream = this.f16144j;
                Objects.requireNonNull((c.a) aVar);
                byteArrayInputStream.close();
            } catch (IOException unused) {
            }
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
            try {
                Object objA = ((c.a) this.f16143i).a(this.f16142h);
                this.f16144j = (ByteArrayInputStream) objA;
                aVar.d(objA);
            } catch (IllegalArgumentException e10) {
                aVar.c(e10);
            }
        }
    }

    /* JADX INFO: compiled from: DataUrlLoader.java */
    public static final class c<Model> implements o<Model, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a<InputStream> f16145a = new a();

        /* JADX INFO: compiled from: DataUrlLoader.java */
        public class a implements a<InputStream> {
            public final Object a(String str) throws IllegalArgumentException {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        }

        @Override // v2.o
        public final n<Model, InputStream> b(r rVar) {
            return new d(this.f16145a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public d(a<Data> aVar) {
        this.f16141a = aVar;
    }

    @Override // v2.n
    public final n.a<Data> a(Model model, int i10, int i11, p2.h hVar) {
        return new n.a<>(new k3.d(model), new b(model.toString(), this.f16141a));
    }

    @Override // v2.n
    public final boolean b(Model model) {
        return model.toString().startsWith("data:image");
    }
}
