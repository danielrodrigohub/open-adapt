package l5;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: HttpDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public class x extends k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10152j;

    public x() {
        super(a(2008, 1));
        this.f10152j = 1;
    }

    public static int a(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public static x b(IOException iOException, m mVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else {
            i11 = (message == null || !androidx.activity.k.s(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        return i11 == 2007 ? new w(iOException, mVar) : new x(iOException, i11, i10);
    }

    public x(String str, int i10) {
        super(str, a(i10, 1));
        this.f10152j = 1;
    }

    public x(IOException iOException, int i10, int i11) {
        super(iOException, a(i10, i11));
        this.f10152j = i11;
    }

    public x(String str, IOException iOException, int i10) {
        super(str, iOException, a(i10, 1));
        this.f10152j = 1;
    }
}
