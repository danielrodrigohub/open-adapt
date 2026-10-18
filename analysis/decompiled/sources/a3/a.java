package a3;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import l3.l;
import p2.h;
import p2.j;
import r2.w;

/* JADX INFO: compiled from: AnimatedWebpDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.b f204b;

    /* JADX INFO: renamed from: a3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AnimatedWebpDecoder.java */
    public static final class C0003a implements w<Drawable> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AnimatedImageDrawable f205h;

        public C0003a(AnimatedImageDrawable animatedImageDrawable) {
            this.f205h = animatedImageDrawable;
        }

        @Override // r2.w
        public final int a() {
            return l.d(Bitmap.Config.ARGB_8888) * this.f205h.getIntrinsicHeight() * this.f205h.getIntrinsicWidth() * 2;
        }

        @Override // r2.w
        public final Class<Drawable> b() {
            return Drawable.class;
        }

        @Override // r2.w
        public final void c() {
            this.f205h.stop();
            this.f205h.clearAnimationCallbacks();
        }

        @Override // r2.w
        public final Drawable get() {
            return this.f205h;
        }
    }

    /* JADX INFO: compiled from: AnimatedWebpDecoder.java */
    public static final class b implements j<ByteBuffer, Drawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f206a;

        public b(a aVar) {
            this.f206a = aVar;
        }

        @Override // p2.j
        public final boolean a(ByteBuffer byteBuffer, h hVar) throws IOException {
            return com.bumptech.glide.load.c.d(this.f206a.f203a, byteBuffer) == ImageHeaderParser.ImageType.ANIMATED_WEBP;
        }

        @Override // p2.j
        public final w<Drawable> b(ByteBuffer byteBuffer, int i10, int i11, h hVar) throws IOException {
            return this.f206a.a(ImageDecoder.createSource(byteBuffer), i10, i11, hVar);
        }
    }

    /* JADX INFO: compiled from: AnimatedWebpDecoder.java */
    public static final class c implements j<InputStream, Drawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f207a;

        public c(a aVar) {
            this.f207a = aVar;
        }

        @Override // p2.j
        public final boolean a(InputStream inputStream, h hVar) throws IOException {
            a aVar = this.f207a;
            return com.bumptech.glide.load.c.c(aVar.f203a, inputStream, aVar.f204b) == ImageHeaderParser.ImageType.ANIMATED_WEBP;
        }

        @Override // p2.j
        public final w<Drawable> b(InputStream inputStream, int i10, int i11, h hVar) throws IOException {
            return this.f207a.a(ImageDecoder.createSource(l3.a.b(inputStream)), i10, i11, hVar);
        }
    }

    public a(List<ImageHeaderParser> list, s2.b bVar) {
        this.f203a = list;
        this.f204b = bVar;
    }

    public final w<Drawable> a(ImageDecoder.Source source, int i10, int i11, h hVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new x2.a(i10, i11, hVar));
        if (drawableDecodeDrawable instanceof AnimatedImageDrawable) {
            return new C0003a((AnimatedImageDrawable) drawableDecodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated webp, failing: " + drawableDecodeDrawable);
    }
}
