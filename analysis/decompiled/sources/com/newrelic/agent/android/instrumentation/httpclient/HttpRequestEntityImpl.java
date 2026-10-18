package com.newrelic.agent.android.instrumentation.httpclient;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.instrumentation.io.CountingOutputStream;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteEvent;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListener;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HttpRequestEntityImpl implements HttpEntity, StreamCompleteListener {
    private final HttpEntity impl;
    private final TransactionState transactionState;

    public HttpRequestEntityImpl(HttpEntity httpEntity, TransactionState transactionState) {
        this.impl = httpEntity;
        this.transactionState = transactionState;
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        try {
            this.impl.consumeContent();
        } catch (IOException e10) {
            handleException(e10);
            throw e10;
        }
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        try {
            if (this.transactionState.isSent()) {
                return this.impl.getContent();
            }
            CountingInputStream countingInputStream = new CountingInputStream(this.impl.getContent());
            countingInputStream.addStreamCompleteListener(this);
            return countingInputStream;
        } catch (IOException e10) {
            handleException(e10);
            throw e10;
        } catch (IllegalStateException e11) {
            handleException(e11);
            throw e11;
        }
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.impl.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.impl.getContentLength();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.impl.getContentType();
    }

    public void handleException(Exception exc) {
        handleException(exc, null);
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.impl.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.impl.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.impl.isStreaming();
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        this.transactionState.setBytesSent(streamCompleteEvent.getBytes());
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
    public void streamError(StreamCompleteEvent streamCompleteEvent) {
        ((StreamCompleteListenerSource) streamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        handleException(streamCompleteEvent.getException(), Long.valueOf(streamCompleteEvent.getBytes()));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            if (this.transactionState.isSent()) {
                this.impl.writeTo(outputStream);
                return;
            }
            CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
            this.impl.writeTo(countingOutputStream);
            this.transactionState.setBytesSent(countingOutputStream.getCount());
        } catch (IOException e10) {
            handleException(e10);
            throw e10;
        }
    }

    public void handleException(Exception exc, Long l10) {
        TransactionStateUtil.setErrorCodeFromException(this.transactionState, exc);
        if (this.transactionState.isComplete()) {
            return;
        }
        if (l10 != null) {
            this.transactionState.setBytesSent(l10.longValue());
        }
        TransactionData transactionDataEnd = this.transactionState.end();
        if (transactionDataEnd != null) {
            transactionDataEnd.setResponseBody(exc.toString());
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        }
    }
}
