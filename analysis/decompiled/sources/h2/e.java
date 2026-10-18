package h2;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: NetworkCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f8112a;

    public e(d dVar) {
        this.f8112a = dVar;
    }

    public static String a(String str, c cVar, boolean z10) {
        String str2;
        StringBuilder sbC = a0.b.c("lottie_cache_");
        sbC.append(str.replaceAll("\\W+", ""));
        if (z10) {
            Objects.requireNonNull(cVar);
            str2 = ".temp" + cVar.f8111h;
        } else {
            str2 = cVar.f8111h;
        }
        sbC.append(str2);
        return sbC.toString();
    }

    public final File b() {
        y1.c cVar = (y1.c) this.f8112a;
        Objects.requireNonNull(cVar);
        File file = new File(cVar.f18293a.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File c(String str, InputStream inputStream, c cVar) throws IOException {
        File file = new File(b(), a(str, cVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            inputStream.close();
            throw th2;
        }
    }
}
