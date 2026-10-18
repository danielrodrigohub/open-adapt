package de;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: JvmOkio.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i0 extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Socket f6242a;

    public i0(Socket socket) {
        p4.h.j(socket, "socket");
        this.f6242a = socket;
    }

    @Override // de.a
    public final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // de.a
    public final void timedOut() {
        try {
            this.f6242a.close();
        } catch (AssertionError e10) {
            if (!w.c(e10)) {
                throw e10;
            }
            Logger logger = x.f6278a;
            Level level = Level.WARNING;
            StringBuilder sbC = a0.b.c("Failed to close timed out socket ");
            sbC.append(this.f6242a);
            logger.log(level, sbC.toString(), (Throwable) e10);
        } catch (Exception e11) {
            Logger logger2 = x.f6278a;
            Level level2 = Level.WARNING;
            StringBuilder sbC2 = a0.b.c("Failed to close timed out socket ");
            sbC2.append(this.f6242a);
            logger2.log(level2, sbC2.toString(), (Throwable) e11);
        }
    }
}
