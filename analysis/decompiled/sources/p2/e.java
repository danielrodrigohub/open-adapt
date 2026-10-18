package p2;

import java.io.IOException;

/* JADX INFO: compiled from: HttpException.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends IOException {
    public e(String str, int i10, Throwable th) {
        super(str + ", status code: " + i10, th);
    }
}
