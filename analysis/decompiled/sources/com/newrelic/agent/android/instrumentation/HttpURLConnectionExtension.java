package com.newrelic.agent.android.instrumentation;

import a0.b;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.instrumentation.io.CountingOutputStream;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteEvent;
import com.newrelic.agent.android.instrumentation.io.StreamCompleteListener;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class HttpURLConnectionExtension extends HttpURLConnection {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private CountingInputStream errorStream;
    private HttpURLConnection impl;
    private TransactionState transactionState;

    public HttpURLConnectionExtension(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.errorStream = null;
        this.impl = httpURLConnection;
        this.transactionState = getTransactionState();
        TransactionStateUtil.setCrossProcessHeader(httpURLConnection);
        TransactionStateUtil.setTrace(this.transactionState);
        TransactionStateUtil.setDistributedTraceHeaders(this.transactionState, httpURLConnection);
    }

    private void checkResponse() {
        if (getTransactionState().isComplete()) {
            return;
        }
        TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), this.impl);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.impl.addRequestProperty(str, str2);
    }

    public void addTransactionAndErrorData(TransactionState transactionState) {
        String bufferAsString;
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd == null) {
            return;
        }
        if (transactionState.isErrorOrFailure()) {
            try {
                InputStream errorStream = getErrorStream();
                bufferAsString = errorStream instanceof CountingInputStream ? ((CountingInputStream) errorStream).getBufferAsString() : "";
            } catch (Exception e10) {
                AgentLog agentLog = log;
                StringBuilder sbC = b.c("HttpURLConnectionExtension.addTransactionAndErrorData: ");
                sbC.append(e10.toString());
                agentLog.error(sbC.toString());
            }
            TreeMap treeMap = new TreeMap();
            String contentType = this.impl.getContentType();
            if (contentType != null && !"".equals(contentType)) {
                treeMap.put(Constants.Transactions.CONTENT_TYPE, contentType);
            }
            treeMap.put(Constants.Transactions.CONTENT_LENGTH, transactionState.getBytesReceived() + "");
            transactionDataEnd.setResponseBody(bufferAsString);
            transactionDataEnd.setParams(treeMap);
            Measurements.addHttpError(transactionDataEnd);
        }
        TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        getTransactionState();
        try {
            this.impl.connect();
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        TransactionState transactionState = this.transactionState;
        if (transactionState != null && !transactionState.isComplete()) {
            addTransactionAndErrorData(this.transactionState);
        }
        this.impl.disconnect();
    }

    public void error(Exception exc) {
        TransactionState transactionState = getTransactionState();
        TransactionStateUtil.setErrorCodeFromException(transactionState, exc);
        if (transactionState.isComplete()) {
            return;
        }
        TransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd != null) {
            String string = exc.toString();
            try {
                InputStream errorStream = getErrorStream();
                if (errorStream != null && (errorStream instanceof CountingInputStream)) {
                    string = ((CountingInputStream) errorStream).getBufferAsString();
                }
            } catch (Exception e10) {
                AgentLog agentLog = log;
                StringBuilder sbC = b.c("HttpsURLConnectionExtension.error: ");
                sbC.append(e10.toString());
                agentLog.error(sbC.toString());
            }
            transactionDataEnd.setResponseBody(string);
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        }
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.impl.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.impl.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        getTransactionState();
        try {
            Object content = this.impl.getContent();
            int contentLength = this.impl.getContentLength();
            if (contentLength >= 0) {
                TransactionState transactionState = getTransactionState();
                if (!transactionState.isComplete()) {
                    transactionState.setBytesReceived(contentLength);
                    addTransactionAndErrorData(transactionState);
                }
            }
            return content;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        getTransactionState();
        String contentEncoding = this.impl.getContentEncoding();
        checkResponse();
        return contentEncoding;
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        getTransactionState();
        int contentLength = this.impl.getContentLength();
        checkResponse();
        return contentLength;
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        getTransactionState();
        String contentType = this.impl.getContentType();
        checkResponse();
        return contentType;
    }

    @Override // java.net.URLConnection
    public long getDate() {
        getTransactionState();
        long date = this.impl.getDate();
        checkResponse();
        return date;
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.impl.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.impl.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.impl.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        getTransactionState();
        try {
            CountingInputStream countingInputStream = this.errorStream;
            if (countingInputStream == null || countingInputStream.available() == 0) {
                this.errorStream = new CountingInputStream(this.impl.getErrorStream(), true);
            }
            return this.errorStream;
        } catch (Exception e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("HttpsURLConnectionExtension: ");
            sbC.append(e10.toString());
            agentLog.error(sbC.toString());
            return this.impl.getErrorStream();
        }
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        getTransactionState();
        long expiration = this.impl.getExpiration();
        checkResponse();
        return expiration;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i10) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(i10);
        checkResponse();
        return headerField;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j10) {
        getTransactionState();
        long headerFieldDate = this.impl.getHeaderFieldDate(str, j10);
        checkResponse();
        return headerFieldDate;
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i10) {
        getTransactionState();
        int headerFieldInt = this.impl.getHeaderFieldInt(str, i10);
        checkResponse();
        return headerFieldInt;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i10) {
        getTransactionState();
        String headerFieldKey = this.impl.getHeaderFieldKey(i10);
        checkResponse();
        return headerFieldKey;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        getTransactionState();
        Map<String, List<String>> headerFields = this.impl.getHeaderFields();
        checkResponse();
        return headerFields;
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        getTransactionState();
        long ifModifiedSince = this.impl.getIfModifiedSince();
        checkResponse();
        return ifModifiedSince;
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        final TransactionState transactionState = getTransactionState();
        try {
            CountingInputStream countingInputStream = new CountingInputStream(this.impl.getInputStream());
            TransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
            countingInputStream.addStreamCompleteListener(new StreamCompleteListener() { // from class: com.newrelic.agent.android.instrumentation.HttpURLConnectionExtension.1
                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
                    if (transactionState.isComplete()) {
                        return;
                    }
                    try {
                        transactionState.setStatusCode(HttpURLConnectionExtension.this.impl.getResponseCode());
                    } catch (IOException unused) {
                        HttpURLConnectionExtension.log.error("HttpURLConnectionExtension.getInputStream.streamComplete: " + streamCompleteEvent);
                    }
                    long contentLength = HttpURLConnectionExtension.this.impl.getContentLength();
                    long bytes = streamCompleteEvent.getBytes();
                    if (contentLength < 0) {
                        contentLength = bytes;
                    }
                    transactionState.setBytesReceived(contentLength);
                    HttpURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                }

                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamError(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesReceived(streamCompleteEvent.getBytes());
                    }
                    HttpURLConnectionExtension.this.error(streamCompleteEvent.getException());
                }
            });
            return countingInputStream;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.impl.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        getTransactionState();
        long lastModified = this.impl.getLastModified();
        checkResponse();
        return lastModified;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        final TransactionState transactionState = getTransactionState();
        try {
            CountingOutputStream countingOutputStream = new CountingOutputStream(this.impl.getOutputStream());
            countingOutputStream.addStreamCompleteListener(new StreamCompleteListener() { // from class: com.newrelic.agent.android.instrumentation.HttpURLConnectionExtension.2
                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamComplete(StreamCompleteEvent streamCompleteEvent) {
                    if (transactionState.isComplete()) {
                        return;
                    }
                    try {
                        transactionState.setStatusCode(HttpURLConnectionExtension.this.impl.getResponseCode());
                    } catch (IOException unused) {
                        HttpURLConnectionExtension.log.error("HttpURLConnectionExtension.getOutputStream.streamComplete: " + streamCompleteEvent);
                    }
                    String requestProperty = HttpURLConnectionExtension.this.impl.getRequestProperty(Constants.Network.CONTENT_LENGTH_HEADER);
                    long bytes = streamCompleteEvent.getBytes();
                    if (requestProperty != null) {
                        try {
                            bytes = Long.parseLong(requestProperty);
                        } catch (NumberFormatException unused2) {
                        }
                    }
                    transactionState.setBytesSent(bytes);
                    HttpURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                }

                @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListener
                public void streamError(StreamCompleteEvent streamCompleteEvent) {
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesSent(streamCompleteEvent.getBytes());
                    }
                    HttpURLConnectionExtension.this.error(streamCompleteEvent.getException());
                }
            });
            return countingOutputStream;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.impl.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.impl.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.impl.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.impl.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.impl.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        getTransactionState();
        try {
            int responseCode = this.impl.getResponseCode();
            checkResponse();
            return responseCode;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        getTransactionState();
        try {
            String responseMessage = this.impl.getResponseMessage();
            checkResponse();
            return responseMessage;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    public TransactionState getTransactionState() {
        if (this.transactionState == null) {
            TransactionState transactionState = new TransactionState();
            this.transactionState = transactionState;
            TransactionStateUtil.inspectAndInstrument(transactionState, this.impl);
        }
        return this.transactionState;
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.impl.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.impl.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z10) {
        this.impl.setAllowUserInteraction(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i10) {
        this.impl.setChunkedStreamingMode(i10);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i10) {
        this.impl.setConnectTimeout(i10);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z10) {
        this.impl.setDefaultUseCaches(z10);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z10) {
        this.impl.setDoInput(z10);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z10) {
        this.impl.setDoOutput(z10);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i10) {
        this.impl.setFixedLengthStreamingMode(i10);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j10) {
        this.impl.setIfModifiedSince(j10);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z10) {
        this.impl.setInstanceFollowRedirects(z10);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i10) {
        this.impl.setReadTimeout(i10);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        getTransactionState();
        try {
            this.impl.setRequestMethod(str);
        } catch (ProtocolException e10) {
            error(e10);
            throw e10;
        }
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.impl.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z10) {
        this.impl.setUseCaches(z10);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.impl.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.impl.usingProxy();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(str);
        checkResponse();
        return headerField;
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        getTransactionState();
        try {
            Object content = this.impl.getContent(clsArr);
            checkResponse();
            return content;
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }
}
