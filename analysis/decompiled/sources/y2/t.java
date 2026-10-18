package y2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: ImageReader.java */
/* JADX INFO: loaded from: classes.dex */
public interface t {

    /* JADX INFO: compiled from: ImageReader.java */
    @Instrumented
    public static final class a implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f18491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<ImageHeaderParser> f18492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final s2.b f18493c;

        public a(ByteBuffer byteBuffer, List<ImageHeaderParser> list, s2.b bVar) {
            this.f18491a = byteBuffer;
            this.f18492b = list;
            this.f18493c = bVar;
        }

        @Override // y2.t
        public final Bitmap a(BitmapFactory.Options options) {
            return BitmapFactoryInstrumentation.decodeStream(new l3.a.C0193a(l3.a.c(this.f18491a)), null, options);
        }

        @Override // y2.t
        public final void b() {
        }

        @Override // y2.t
        public final int c() throws IOException {
            List<ImageHeaderParser> list = this.f18492b;
            ByteBuffer byteBufferC = l3.a.c(this.f18491a);
            s2.b bVar = this.f18493c;
            if (byteBufferC == null) {
                return -1;
            }
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                int iC = list.get(i10).c(byteBufferC, bVar);
                if (iC != -1) {
                    return iC;
                }
            }
            return -1;
        }

        @Override // y2.t
        public final ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.c.d(this.f18492b, l3.a.c(this.f18491a));
        }
    }

    /* JADX INFO: compiled from: ImageReader.java */
    @Instrumented
    public static final class b implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.bumptech.glide.load.data.k f18494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final s2.b f18495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<ImageHeaderParser> f18496c;

        public b(InputStream inputStream, List<ImageHeaderParser> list, s2.b bVar) {
            Objects.requireNonNull(bVar, "Argument must not be null");
            this.f18495b = bVar;
            Objects.requireNonNull(list, "Argument must not be null");
            this.f18496c = list;
            this.f18494a = new com.bumptech.glide.load.data.k(inputStream, bVar);
        }

        @Override // y2.t
        public final Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactoryInstrumentation.decodeStream(this.f18494a.a(), null, options);
        }

        @Override // y2.t
        public final void b() {
            x xVar = this.f18494a.f4519a;
            synchronized (xVar) {
                xVar.f18506j = xVar.f18504h.length;
            }
        }

        @Override // y2.t
        public final int c() throws IOException {
            return com.bumptech.glide.load.c.a(this.f18496c, this.f18494a.a(), this.f18495b);
        }

        @Override // y2.t
        public final ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.c.c(this.f18496c, this.f18494a.a(), this.f18495b);
        }
    }

    /* JADX INFO: compiled from: ImageReader.java */
    @Instrumented
    public static final class c implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s2.b f18497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<ImageHeaderParser> f18498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f18499c;

        public c(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, s2.b bVar) {
            Objects.requireNonNull(bVar, "Argument must not be null");
            this.f18497a = bVar;
            Objects.requireNonNull(list, "Argument must not be null");
            this.f18498b = list;
            this.f18499c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // y2.t
        public final Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactoryInstrumentation.decodeFileDescriptor(this.f18499c.a().getFileDescriptor(), null, options);
        }

        @Override // y2.t
        public final void b() {
        }

        @Override // y2.t
        public final int c() throws IOException {
            return com.bumptech.glide.load.c.b(this.f18498b, new com.bumptech.glide.load.b(this.f18499c, this.f18497a));
        }

        @Override // y2.t
        public final ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.c.e(this.f18498b, new com.bumptech.glide.load.a(this.f18499c, this.f18497a));
        }
    }

    Bitmap a(BitmapFactory.Options options) throws IOException;

    void b();

    int c() throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
