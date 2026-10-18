package g1;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ViewOverlayApi18.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements p2.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f7552h;

    @Override // p2.d
    public final boolean c(Object obj, File file, p2.h hVar) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = (InputStream) obj;
        byte[] bArr = (byte[]) ((s2.b) this.f7552h).d(65536, byte[].class);
        boolean z10 = false;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i10 = inputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        } catch (IOException e10) {
                            e = e10;
                            fileOutputStream2 = fileOutputStream;
                            if (Log.isLoggable("StreamEncoder", 3)) {
                                Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                            }
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                            ((s2.b) this.f7552h).c(bArr);
                            return z10;
                        } catch (Throwable th) {
                            th = th;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            ((s2.b) this.f7552h).c(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    z10 = true;
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException e11) {
                e = e11;
            }
        } catch (IOException unused2) {
        }
        ((s2.b) this.f7552h).c(bArr);
        return z10;
    }
}
