package okhttp3.internal.cache;

import de.c;
import de.h0;
import de.m;
import fd.o;
import java.io.EOFException;
import java.io.IOException;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: FaultHidingSink.kt */
/* JADX INFO: loaded from: classes2.dex */
public class FaultHidingSink extends m {
    private boolean hasErrors;
    private final l<IOException, o> onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(h0 h0Var, l<? super IOException, o> lVar) {
        super(h0Var);
        h.j(h0Var, "delegate");
        h.j(lVar, "onException");
        this.onException = lVar;
    }

    @Override // de.m, de.h0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.hasErrors = true;
            this.onException.invoke(e10);
        }
    }

    @Override // de.m, de.h0, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.hasErrors = true;
            this.onException.invoke(e10);
        }
    }

    public final l<IOException, o> getOnException() {
        return this.onException;
    }

    @Override // de.m, de.h0
    public void write(c cVar, long j10) throws EOFException {
        h.j(cVar, "source");
        if (this.hasErrors) {
            cVar.a(j10);
            return;
        }
        try {
            super.write(cVar, j10);
        } catch (IOException e10) {
            this.hasErrors = true;
            this.onException.invoke(e10);
        }
    }
}
