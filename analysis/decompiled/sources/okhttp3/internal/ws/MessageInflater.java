package okhttp3.internal.ws;

import de.c;
import de.j0;
import de.r;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Settings;
import p4.h;

/* JADX INFO: compiled from: MessageInflater.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MessageInflater implements Closeable {
    private final c deflatedBytes;
    private final Inflater inflater;
    private final r inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z10) {
        this.noContextTakeover = z10;
        c cVar = new c();
        this.deflatedBytes = cVar;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new r((j0) cVar, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(c cVar) throws IOException {
        h.j(cVar, "buffer");
        if (!(this.deflatedBytes.f6199i == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.s(cVar);
        this.deflatedBytes.B0(Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.f6199i;
        do {
            this.inflaterSource.x(cVar, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < bytesRead);
    }
}
