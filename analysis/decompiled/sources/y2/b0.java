package y2;

import android.graphics.Bitmap;
import java.io.IOException;

/* JADX INFO: compiled from: UnitBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements p2.j<Bitmap, Bitmap> {

    /* JADX INFO: compiled from: UnitBitmapDecoder.java */
    public static final class a implements r2.w<Bitmap> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Bitmap f18432h;

        public a(Bitmap bitmap) {
            this.f18432h = bitmap;
        }

        @Override // r2.w
        public final int a() {
            return l3.l.c(this.f18432h);
        }

        @Override // r2.w
        public final Class<Bitmap> b() {
            return Bitmap.class;
        }

        @Override // r2.w
        public final void c() {
        }

        @Override // r2.w
        public final Bitmap get() {
            return this.f18432h;
        }
    }

    @Override // p2.j
    public final /* bridge */ /* synthetic */ boolean a(Bitmap bitmap, p2.h hVar) throws IOException {
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(Bitmap bitmap, int i10, int i11, p2.h hVar) throws IOException {
        return new a(bitmap);
    }
}
