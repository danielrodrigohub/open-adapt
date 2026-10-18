package com.newrelic.agent.android.instrumentation.io;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class CountingOutputStream extends OutputStream implements StreamCompleteListenerSource {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final OutputStream impl;
    private long count = 0;
    private final StreamCompleteListenerManager listenerManager = new StreamCompleteListenerManager();

    public CountingOutputStream(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IOException("CountingOutputStream: output stream cannot be null");
        }
        this.impl = outputStream;
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

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.addStreamCompleteListener(streamCompleteListener);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.impl.close();
            notifyStreamComplete();
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        } catch (Exception e11) {
            log.warning(e11.toString());
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.impl.flush();
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    public long getCount() {
        return this.count;
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.removeStreamCompleteListener(streamCompleteListener);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        try {
            this.impl.write(i10);
            this.count++;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.impl.write(bArr);
            this.count += (long) bArr.length;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.impl.write(bArr, i10, i11);
            this.count += (long) i11;
        } catch (IOException e10) {
            notifyStreamError(e10);
            throw e10;
        }
    }
}
