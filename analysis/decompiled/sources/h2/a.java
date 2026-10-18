package h2;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: compiled from: DefaultLottieFetchResult.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HttpURLConnection f8107h;

    public a(HttpURLConnection httpURLConnection) {
        this.f8107h = httpURLConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8107h.disconnect();
    }

    public final String x() {
        boolean z10 = false;
        try {
            if (this.f8107h.getResponseCode() / 100 == 2) {
                z10 = true;
            }
        } catch (IOException unused) {
        }
        if (z10) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to fetch ");
            sb2.append(this.f8107h.getURL());
            sb2.append(". Failed with ");
            sb2.append(this.f8107h.getResponseCode());
            sb2.append("\n");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f8107h.getErrorStream()));
            StringBuilder sb3 = new StringBuilder();
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb3.append(line);
                        sb3.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused2) {
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            sb2.append(sb3.toString());
            return sb2.toString();
        } catch (IOException e10) {
            k2.c.c("get error failed ", e10);
            return e10.getMessage();
        }
    }
}
