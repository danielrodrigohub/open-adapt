package d3;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import p2.h;
import r2.w;

/* JADX INFO: compiled from: BitmapBytesTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c<Bitmap, byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bitmap.CompressFormat f5990h = Bitmap.CompressFormat.JPEG;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5991i = 100;

    @Override // d3.c
    public final w<byte[]> b(w<Bitmap> wVar, h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        wVar.get().compress(this.f5990h, this.f5991i, byteArrayOutputStream);
        wVar.c();
        return new z2.b(byteArrayOutputStream.toByteArray());
    }
}
