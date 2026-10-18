package com.newrelic.agent.android.instrumentation.io;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class CountingInputStream extends InputStream implements StreamCompleteListenerSource {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private ByteBuffer buffer;
    private long count;
    private final boolean enableBuffering;
    private final InputStream impl;
    private final StreamCompleteListenerManager listenerManager;

    public CountingInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    private boolean bufferEmpty() {
        return !this.buffer.hasRemaining();
    }

    private boolean bufferHasBytes(long j10) {
        return ((long) this.buffer.remaining()) >= j10;
    }

    private void notifyStreamComplete() {
        if (this.listenerManager.isComplete()) {
            return;
        }
        this.listenerManager.notifyStreamComplete(new StreamCompleteEvent(this, this.count));
    }

    private void notifyStreamError(Exception exc) {
        if (this.listenerManager.isComplete()) {
            return;
        }
        this.listenerManager.notifyStreamError(new StreamCompleteEvent(this, this.count, exc));
    }

    private int readBuffer() {
        if (bufferEmpty()) {
            return -1;
        }
        return this.buffer.get();
    }

    private int readBufferBytes(byte[] bArr) {
        return readBufferBytes(bArr, 0, bArr.length);
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.addStreamCompleteListener(streamCompleteListener);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return (this.enableBuffering ? this.buffer.remaining() : 0) + this.impl.available();
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.impl.close();
            notifyStreamComplete();
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        } catch (Exception e11) {
            log.error(e11.getLocalizedMessage());
        }
    }

    public void fillBuffer() {
        int i10;
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer == null || !byteBuffer.hasArray()) {
            return;
        }
        synchronized (this.buffer) {
            int i11 = 0;
            while (i11 < this.buffer.capacity() && (i10 = this.impl.read(this.buffer.array(), i11, this.buffer.capacity() - i11)) > 0) {
                try {
                    i11 += i10;
                } catch (Exception e10) {
                    log.error(e10.getLocalizedMessage());
                } catch (NoSuchMethodError e11) {
                    log.error(e11.toString());
                    try {
                        this.buffer.limit(i11);
                    } catch (NoSuchMethodError e12) {
                        log.error(e12.toString());
                        try {
                            this.buffer = ByteBuffer.wrap(this.buffer.array(), 0, i11);
                        } catch (IndexOutOfBoundsException e13) {
                            log.error(e13.toString());
                        }
                    }
                }
            }
        }
    }

    public String getBufferAsString() {
        String str;
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer == null) {
            return "";
        }
        synchronized (byteBuffer) {
            byte[] bArr = new byte[this.buffer.limit()];
            for (int i10 = 0; i10 < this.buffer.limit(); i10++) {
                bArr[i10] = this.buffer.get(i10);
            }
            str = new String(bArr);
        }
        return str;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        if (markSupported()) {
            this.impl.mark(i10);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.impl.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(1L)) {
                    int buffer = readBuffer();
                    if (buffer >= 0) {
                        this.count++;
                    }
                    return buffer;
                }
            }
        }
        try {
            int i10 = this.impl.read();
            if (i10 >= 0) {
                this.count++;
            } else {
                notifyStreamComplete();
            }
            return i10;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.removeStreamCompleteListener(streamCompleteListener);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (markSupported()) {
            try {
                this.impl.reset();
            } catch (IOException e10) {
                notifyStreamError(e10);
                throw e10;
            }
        }
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(j10)) {
                    this.count += j10;
                    return j10;
                }
                j10 -= (long) this.buffer.remaining();
                if (j10 <= 0) {
                    throw new IOException("partial read from buffer (skip) failed");
                }
                ByteBuffer byteBuffer = this.buffer;
            }
        }
        try {
            long jSkip = this.impl.skip(j10);
            this.count += jSkip;
            return jSkip;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    public CountingInputStream(InputStream inputStream, boolean z10) throws IOException {
        this(inputStream, z10, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
    }

    private int readBufferBytes(byte[] bArr, int i10, int i11) {
        if (bufferEmpty()) {
            return -1;
        }
        int iRemaining = this.buffer.remaining();
        this.buffer.get(bArr, i10, i11);
        return iRemaining - this.buffer.remaining();
    }

    public CountingInputStream(InputStream inputStream, boolean z10, int i10) throws IOException {
        this(inputStream, z10 ? ByteBuffer.allocate(i10) : null);
    }

    public CountingInputStream(InputStream inputStream, ByteBuffer byteBuffer) throws IOException {
        this.count = 0L;
        if (inputStream != null) {
            this.impl = inputStream;
            this.buffer = byteBuffer;
            boolean z10 = byteBuffer != null;
            this.enableBuffering = z10;
            this.listenerManager = new StreamCompleteListenerManager();
            if (z10) {
                fillBuffer();
                return;
            }
            return;
        }
        throw new IOException("CountingInputStream: input stream cannot be null");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int length = bArr.length;
        int bufferBytes = 0;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(length)) {
                    int bufferBytes2 = readBufferBytes(bArr);
                    if (bufferBytes2 >= 0) {
                        this.count += (long) bufferBytes2;
                        return bufferBytes2;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                int iRemaining = this.buffer.remaining();
                if (iRemaining > 0) {
                    bufferBytes = readBufferBytes(bArr, 0, iRemaining);
                    if (bufferBytes >= 0) {
                        length -= bufferBytes;
                        this.count += (long) bufferBytes;
                    } else {
                        throw new IOException("partial read from buffer failed");
                    }
                }
            }
        }
        try {
            int i10 = this.impl.read(bArr, bufferBytes, length);
            if (i10 >= 0) {
                this.count += (long) i10;
                return i10 + bufferBytes;
            }
            if (bufferBytes > 0) {
                return bufferBytes;
            }
            notifyStreamComplete();
            return i10;
        } catch (IOException e10) {
            log.error(e10.toString());
            System.out.println("NOTIFY STREAM ERROR: " + e10);
            e10.printStackTrace();
            notifyStreamError(e10);
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int bufferBytes = 0;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(i11)) {
                    int bufferBytes2 = readBufferBytes(bArr, i10, i11);
                    if (bufferBytes2 >= 0) {
                        this.count += (long) bufferBytes2;
                        return bufferBytes2;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                int iRemaining = this.buffer.remaining();
                if (iRemaining > 0) {
                    bufferBytes = readBufferBytes(bArr, i10, iRemaining);
                    if (bufferBytes >= 0) {
                        i11 -= bufferBytes;
                        this.count += (long) bufferBytes;
                    } else {
                        throw new IOException("partial read from buffer failed");
                    }
                }
            }
        }
        try {
            int i12 = this.impl.read(bArr, i10 + bufferBytes, i11);
            if (i12 >= 0) {
                this.count += (long) i12;
                return i12 + bufferBytes;
            }
            if (bufferBytes > 0) {
                return bufferBytes;
            }
            notifyStreamComplete();
            return i12;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }
}
