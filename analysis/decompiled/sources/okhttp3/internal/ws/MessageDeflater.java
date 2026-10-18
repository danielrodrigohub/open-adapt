package okhttp3.internal.ws;

import d3.e;
import de.c;
import de.g;
import de.h;
import de.h0;
import de.n0;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: MessageDeflater.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MessageDeflater implements Closeable {
    private final c deflatedBytes;
    private final Deflater deflater;
    private final h deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z10) {
        this.noContextTakeover = z10;
        c cVar = new c();
        this.deflatedBytes = cVar;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new h((h0) cVar, deflater);
    }

    private final boolean endsWith(c cVar, g gVar) {
        return cVar.a0(cVar.f6199i - ((long) gVar.j()), gVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.deflaterSink.close();
    }

    public final void deflate(c cVar) throws IOException {
        p4.h.j(cVar, "buffer");
        if (!(this.deflatedBytes.f6199i == 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.deflater.reset();
        }
        this.deflaterSink.write(cVar, cVar.f6199i);
        this.deflaterSink.flush();
        if (endsWith(this.deflatedBytes, MessageDeflaterKt.EMPTY_DEFLATE_BLOCK)) {
            c cVar2 = this.deflatedBytes;
            long j10 = cVar2.f6199i - ((long) 4);
            c.a aVarM0 = cVar2.m0(n0.f6257a);
            try {
                aVarM0.x(j10);
                e.d(aVarM0, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    e.d(aVarM0, th);
                    throw th2;
                }
            }
        } else {
            this.deflatedBytes.y0(0);
        }
        c cVar3 = this.deflatedBytes;
        cVar.write(cVar3, cVar3.f6199i);
    }
}
