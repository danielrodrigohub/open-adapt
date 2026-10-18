package okhttp3.internal.ws;

import de.c;
import de.e;
import de.g;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import p4.h;

/* JADX INFO: compiled from: WebSocketWriter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final c.a maskCursor;
    private final byte[] maskKey;
    private final c messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final e sink;
    private final c sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z10, e eVar, Random random, boolean z11, boolean z12, long j10) {
        h.j(eVar, "sink");
        h.j(random, "random");
        this.isClient = z10;
        this.sink = eVar;
        this.random = random;
        this.perMessageDeflate = z11;
        this.noContextTakeover = z12;
        this.minimumDeflateSize = j10;
        this.messageBuffer = new c();
        this.sinkBuffer = eVar.b();
        this.maskKey = z10 ? new byte[4] : null;
        this.maskCursor = z10 ? new c.a() : null;
    }

    private final void writeControlFrame(int i10, g gVar) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        int iJ = gVar.j();
        if (!(((long) iJ) <= 125)) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
        }
        this.sinkBuffer.y0(i10 | 128);
        if (this.isClient) {
            this.sinkBuffer.y0(iJ | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            h.g(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.w0(this.maskKey);
            if (iJ > 0) {
                c cVar = this.sinkBuffer;
                long j10 = cVar.f6199i;
                cVar.u0(gVar);
                c cVar2 = this.sinkBuffer;
                c.a aVar = this.maskCursor;
                h.g(aVar);
                cVar2.m0(aVar);
                this.maskCursor.Y(j10);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.y0(iJ);
            this.sinkBuffer.u0(gVar);
        }
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final e getSink() {
        return this.sink;
    }

    public final void writeClose(int i10, g gVar) throws IOException {
        g gVarI = g.f6228l;
        if (i10 != 0 || gVar != null) {
            if (i10 != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i10);
            }
            c cVar = new c();
            cVar.D0(i10);
            if (gVar != null) {
                cVar.u0(gVar);
            }
            gVarI = cVar.i();
        }
        try {
            writeControlFrame(8, gVarI);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i10, g gVar) throws IOException {
        h.j(gVar, "data");
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        this.messageBuffer.u0(gVar);
        int i11 = i10 | 128;
        if (this.perMessageDeflate && gVar.j() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i11 |= 64;
        }
        long j10 = this.messageBuffer.f6199i;
        this.sinkBuffer.y0(i11);
        int i12 = this.isClient ? 128 : 0;
        if (j10 <= 125) {
            this.sinkBuffer.y0(((int) j10) | i12);
        } else if (j10 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            this.sinkBuffer.y0(i12 | 126);
            this.sinkBuffer.D0((int) j10);
        } else {
            this.sinkBuffer.y0(i12 | 127);
            this.sinkBuffer.C0(j10);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            h.g(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.w0(this.maskKey);
            if (j10 > 0) {
                c cVar = this.messageBuffer;
                c.a aVar = this.maskCursor;
                h.g(aVar);
                cVar.m0(aVar);
                this.maskCursor.Y(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, j10);
        this.sink.m();
    }

    public final void writePing(g gVar) throws IOException {
        h.j(gVar, "payload");
        writeControlFrame(9, gVar);
    }

    public final void writePong(g gVar) throws IOException {
        h.j(gVar, "payload");
        writeControlFrame(10, gVar);
    }
}
