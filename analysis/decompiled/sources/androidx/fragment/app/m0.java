package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: compiled from: LogWriter.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 extends Writer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public StringBuilder f2000i = new StringBuilder(128);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f1999h = "FragmentManager";

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        x();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        x();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c10 = cArr[i10 + i12];
            if (c10 == '\n') {
                x();
            } else {
                this.f2000i.append(c10);
            }
        }
    }

    public final void x() {
        if (this.f2000i.length() > 0) {
            Log.d(this.f1999h, this.f2000i.toString());
            StringBuilder sb2 = this.f2000i;
            sb2.delete(0, sb2.length());
        }
    }
}
