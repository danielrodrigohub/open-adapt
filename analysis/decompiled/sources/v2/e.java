package v2;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: FileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e<Data> implements n<File, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d<Data> f16146a;

    /* JADX INFO: compiled from: FileLoader.java */
    public static class a<Data> implements o<File, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d<Data> f16147a;

        public a(d<Data> dVar) {
            this.f16147a = dVar;
        }

        @Override // v2.o
        public final n<File, Data> b(r rVar) {
            return new e(this.f16147a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: FileLoader.java */
    public static class b extends a<ParcelFileDescriptor> {

        /* JADX INFO: compiled from: FileLoader.java */
        public class a implements d<ParcelFileDescriptor> {
            @Override // v2.e.d
            public final Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // v2.e.d
            public final ParcelFileDescriptor b(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            @Override // v2.e.d
            public final void c(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    /* JADX INFO: compiled from: FileLoader.java */
    public static final class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final File f16148h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final d<Data> f16149i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Data f16150j;

        public c(File file, d<Data> dVar) {
            this.f16148h = file;
            this.f16149i = dVar;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> a() {
            return this.f16149i.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            Data data = this.f16150j;
            if (data != null) {
                try {
                    this.f16149i.c(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return p2.a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.d
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            try {
                Data dataB = this.f16149i.b(this.f16148h);
                this.f16150j = dataB;
                aVar.d(dataB);
            } catch (FileNotFoundException e10) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    /* JADX INFO: compiled from: FileLoader.java */
    public interface d<Data> {
        Class<Data> a();

        Data b(File file) throws FileNotFoundException;

        void c(Data data) throws IOException;
    }

    /* JADX INFO: renamed from: v2.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FileLoader.java */
    public static class C0287e extends a<InputStream> {

        /* JADX INFO: renamed from: v2.e$e$a */
        /* JADX INFO: compiled from: FileLoader.java */
        public class a implements d<InputStream> {
            @Override // v2.e.d
            public final Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // v2.e.d
            public final InputStream b(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }

            @Override // v2.e.d
            public final void c(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        public C0287e() {
            super(new a());
        }
    }

    public e(d<Data> dVar) {
        this.f16146a = dVar;
    }

    @Override // v2.n
    public final n.a a(File file, int i10, int i11, p2.h hVar) {
        File file2 = file;
        return new n.a(new k3.d(file2), new c(file2, this.f16146a));
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(File file) {
        return true;
    }
}
