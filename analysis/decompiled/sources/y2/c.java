package y2;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: BitmapEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements p2.k<Bitmap> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final p2.g<Integer> f18433i = p2.g.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final p2.g<Bitmap.CompressFormat> f18434j = new p2.g<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, p2.g.f12643e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s2.b f18435h;

    public c(s2.b bVar) {
        this.f18435h = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0075 A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #1 {, blocks: (B:10:0x0026, B:32:0x006b, B:34:0x006f, B:36:0x0075, B:40:0x00bf, B:41:0x00c2), top: B:46:0x0026 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x0075, please report this as an issue */
    @Override // p2.d
    public final boolean c(Object obj, File file, p2.h hVar) {
        FileOutputStream fileOutputStream;
        Bitmap bitmap = (Bitmap) ((r2.w) obj).get();
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) hVar.c(f18434j);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i10 = l3.h.f9935b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) hVar.c(f18433i)).intValue();
        boolean z10 = false;
        OutputStream cVar = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        cVar = this.f18435h != null ? new com.bumptech.glide.load.data.c(fileOutputStream, this.f18435h) : fileOutputStream;
                        bitmap.compress(compressFormat, iIntValue, cVar);
                        cVar.close();
                        z10 = true;
                    } catch (IOException e10) {
                        e = e10;
                        cVar = fileOutputStream;
                        if (Log.isLoggable("BitmapEncoder", 3)) {
                            Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                        }
                        if (cVar != null) {
                        }
                        if (Log.isLoggable("BitmapEncoder", 2)) {
                            Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + l3.l.c(bitmap) + " in " + l3.h.a(jElapsedRealtimeNanos) + ", options format: " + hVar.c(f18434j) + ", hasAlpha: " + bitmap.hasAlpha());
                        }
                        return z10;
                    } catch (Throwable th) {
                        th = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException e11) {
                e = e11;
            }
            cVar.close();
        } catch (IOException unused2) {
        }
        if (Log.isLoggable("BitmapEncoder", 2)) {
            Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + l3.l.c(bitmap) + " in " + l3.h.a(jElapsedRealtimeNanos) + ", options format: " + hVar.c(f18434j) + ", hasAlpha: " + bitmap.hasAlpha());
        }
        return z10;
    }

    @Override // p2.k
    public final p2.c d(p2.h hVar) {
        return p2.c.TRANSFORMED;
    }
}
