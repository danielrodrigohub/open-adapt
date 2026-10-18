package com.newrelic.agent.android.payload;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.Constants;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public abstract class PayloadSender implements Callable<PayloadSender> {
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public final AgentConfiguration agentConfiguration;
    public Payload payload;
    public int responseCode;
    public final TicToc timer;

    public interface CompletionHandler {
        void onException(PayloadSender payloadSender, Exception exc);

        void onResponse(PayloadSender payloadSender);
    }

    public PayloadSender(AgentConfiguration agentConfiguration) {
        this.agentConfiguration = agentConfiguration;
        this.timer = new TicToc();
        this.responseCode = 0;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof PayloadSender) && getPayload() == ((PayloadSender) obj).getPayload();
    }

    public abstract HttpURLConnection getConnection() throws IOException;

    public Payload getPayload() {
        return this.payload;
    }

    public String getProtocol() {
        return "https://";
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public boolean isSuccessfulResponse() {
        int i10 = this.responseCode;
        return i10 == 200 || i10 == 202 || i10 == 500;
    }

    public void onFailedUpload(String str) {
        log.error(str);
    }

    public void onRequestContent(String str) {
    }

    public void onRequestException(Exception exc) {
        StringBuilder sbC = b.c("Payload [");
        sbC.append(this.payload.getUuid());
        sbC.append("] upload failed: ");
        sbC.append(exc);
        onFailedUpload(sbC.toString());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0084  */
    public void onRequestResponse(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 202) {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                onRequestContent(readStream(inputStream, inputStream.available()));
            }
        } else if (responseCode == 403) {
            StringBuilder sbC = b.c("Payload [");
            sbC.append(this.payload.getUuid());
            sbC.append("] was rejected and will be deleted - Response code [");
            sbC.append(responseCode);
            sbC.append("]");
            onFailedUpload(sbC.toString());
        } else if (responseCode == 408) {
            StringBuilder sbC2 = b.c("The request to submit the payload [");
            sbC2.append(this.payload.getUuid());
            sbC2.append("] has timed out (will try again later) - Response code [");
            sbC2.append(responseCode);
            sbC2.append("]");
            onFailedUpload(sbC2.toString());
        } else if (responseCode == 429) {
            StringBuilder sbC3 = b.c("The request to submit the payload [");
            sbC3.append(this.payload.getUuid());
            sbC3.append("] was throttled (will try again later) - Response code [");
            sbC3.append(responseCode);
            sbC3.append("]");
            onFailedUpload(sbC3.toString());
        } else if (responseCode != 500) {
            StringBuilder sbC4 = b.c("Something went wrong while submitting the payload [");
            sbC4.append(this.payload.getUuid());
            sbC4.append("] (will try again later) - Response code [");
            sbC4.append(responseCode);
            sbC4.append("]");
            onFailedUpload(sbC4.toString());
        } else {
            StringBuilder sbC5 = b.c("Payload [");
            sbC5.append(this.payload.getUuid());
            sbC5.append("] was rejected and will be deleted - Response code [");
            sbC5.append(responseCode);
            sbC5.append("]");
            onFailedUpload(sbC5.toString());
        }
        AgentLog agentLog = log;
        StringBuilder sbC6 = b.c("Payload [");
        sbC6.append(this.payload.getUuid());
        sbC6.append("] delivery took ");
        sbC6.append(this.timer.toc());
        sbC6.append("ms");
        agentLog.debug(sbC6.toString());
    }

    public String readStream(InputStream inputStream, int i10) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
        try {
            char[] cArr = new char[i10];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10 && i12 != -1) {
                i11 += i12;
                i12 = inputStreamReader.read(cArr, i11, i10 - i11);
            }
            String str = i11 != -1 ? new String(cArr, 0, Math.min(i11, i10)) : null;
            inputStreamReader.close();
            return str;
        } catch (Throwable th) {
            try {
                inputStreamReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void setPayload(byte[] bArr) {
        this.payload.putBytes(bArr);
    }

    public boolean shouldRetry() {
        return false;
    }

    public boolean shouldUploadOpportunistically() {
        return Agent.hasReachableNetworkConnection(null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public PayloadSender call() throws Exception {
        try {
            this.timer.tic();
            HttpURLConnection connection = getConnection();
            connection.setFixedLengthStreamingMode(this.payload.getBytes().length);
            connection.setRequestProperty(Constants.Network.CONTENT_LENGTH_HEADER, Integer.toString(this.payload.getBytes().length));
            try {
                try {
                    connection.connect();
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(connection.getOutputStream());
                    try {
                        bufferedOutputStream.write(this.payload.getBytes());
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        this.responseCode = connection.getResponseCode();
                        onRequestResponse(connection);
                    } catch (Throwable th) {
                        try {
                            bufferedOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    connection.disconnect();
                    throw th3;
                }
            } catch (Exception e10) {
                onRequestException(e10);
            }
            connection.disconnect();
            return this;
        } catch (Exception e11) {
            StringBuilder sbC = b.c("Unable to upload payload [");
            sbC.append(this.payload.getUuid());
            sbC.append("]  to New Relic, will try again later. ");
            sbC.append(e11);
            onFailedUpload(sbC.toString());
            return this;
        }
    }

    public PayloadSender(Payload payload, AgentConfiguration agentConfiguration) {
        this(agentConfiguration);
        this.payload = payload;
    }

    public PayloadSender(byte[] bArr, AgentConfiguration agentConfiguration) {
        this(agentConfiguration);
        this.payload = new Payload(bArr);
    }
}
