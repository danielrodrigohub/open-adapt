package y2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.IOException;

/* JADX INFO: compiled from: BitmapDrawableDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<DataType> implements p2.j<DataType, BitmapDrawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p2.j<DataType, Bitmap> f18423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f18424b;

    public a(Resources resources, p2.j<DataType, Bitmap> jVar) {
        this.f18424b = resources;
        this.f18423a = jVar;
    }

    @Override // p2.j
    public final boolean a(DataType datatype, p2.h hVar) throws IOException {
        return this.f18423a.a(datatype, hVar);
    }

    @Override // p2.j
    public final r2.w<BitmapDrawable> b(DataType datatype, int i10, int i11, p2.h hVar) throws IOException {
        return v.d(this.f18424b, this.f18423a.b(datatype, i10, i11, hVar));
    }
}
