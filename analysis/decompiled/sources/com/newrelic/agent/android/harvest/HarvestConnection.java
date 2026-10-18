package com.newrelic.agent.android.harvest;

import a0.b;
import a1.f;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.harvest.type.Harvestable;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.Constants;
import com.newrelic.agent.android.util.Deflator;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class HarvestConnection implements HarvestErrorCodes {
    private static final String COLLECTOR_CONNECT_URI = "/mobile/v4/connect";
    private static final String COLLECTOR_DATA_URI = "/mobile/v3/data";
    private static final int CONNECTION_TIMEOUT;
    private static final int MAX_PLAINTEXT_MESSAGE_SIZE = 512;
    private static final int READ_TIMEOUT;
    private static final int READ_TIMEOUT_IN_SECONDS = 4;
    private static final int RESPONSE_BUFFER_SIZE = 8192;
    private static final int TIMEOUT_IN_SECONDS = 20;
    private String applicationToken;
    private String collectorHost;
    private ConnectInformation connectInformation;
    private long serverTimestamp;
    private final AgentLog log = AgentLogManager.getAgentLog();
    private boolean useSsl = true;

    static {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        CONNECTION_TIMEOUT = (int) timeUnit.convert(20L, timeUnit2);
        READ_TIMEOUT = (int) timeUnit.convert(4L, timeUnit2);
    }

    private String getCollectorConnectUri() {
        return getCollectorUri(COLLECTOR_CONNECT_URI);
    }

    private String getCollectorDataUri() {
        return getCollectorUri(COLLECTOR_DATA_URI);
    }

    private String getCollectorUri(String str) {
        return f.d(b.c("https://"), this.collectorHost, str);
    }

    private void recordCollectorError(Exception exc) {
        AgentLog agentLog = this.log;
        StringBuilder sbC = b.c("HarvestConnection: Attempting to convert network exception ");
        sbC.append(exc.getClass().getName());
        sbC.append(" to error code.");
        agentLog.error(sbC.toString());
        StatsEngine statsEngine = StatsEngine.get();
        StringBuilder sbC2 = b.c("Supportability/AgentHealth/Collector/ResponseErrorCodes/");
        sbC2.append(ExceptionHelper.exceptionToErrorCode(exc));
        statsEngine.inc(sbC2.toString());
    }

    public HttpURLConnection createConnectPost() {
        return createPost(getCollectorConnectUri());
    }

    public HttpURLConnection createDataPost() {
        return createPost(getCollectorDataUri());
    }

    public HttpURLConnection createPost(String str) {
        Exception e10;
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setConnectTimeout(CONNECTION_TIMEOUT);
                httpURLConnection.setReadTimeout(READ_TIMEOUT);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty(Constants.Network.APPLICATION_LICENSE_HEADER, this.applicationToken);
                httpURLConnection.setRequestProperty(Constants.Network.CONTENT_TYPE_HEADER, Constants.Network.ContentType.JSON);
                String property = System.getProperty("http.agent");
                if (property != null && property.length() > 0) {
                    httpURLConnection.setRequestProperty(Constants.Network.USER_AGENT_HEADER, property);
                }
                long j10 = this.serverTimestamp;
                if (j10 != 0) {
                    httpURLConnection.setRequestProperty(Constants.Network.CONNECT_TIME_HEADER, Long.valueOf(j10).toString());
                }
            } catch (Exception e11) {
                e10 = e11;
                StatsEngine.get().inc("Supportability/AgentHealth/Collector/Connection/Errors");
                AgentLog agentLog = this.log;
                StringBuilder sbC = b.c("Failed to create data POST: ");
                sbC.append(e10.getMessage());
                agentLog.error(sbC.toString());
            }
        } catch (Exception e12) {
            e10 = e12;
            httpURLConnection = null;
        }
        return httpURLConnection;
    }

    public String readResponse(HttpURLConnection httpURLConnection) throws IOException {
        try {
            return readStream(httpURLConnection.getInputStream());
        } catch (IOException unused) {
            return readStream(httpURLConnection.getErrorStream());
        }
    }

    public String readStream(InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (inputStream != null) {
            char[] cArr = new char[RESPONSE_BUFFER_SIZE];
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    int i10 = bufferedReader.read(cArr);
                    if (i10 < 0) {
                        break;
                    }
                    sb2.append(cArr, 0, i10);
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            bufferedReader.close();
        }
        return sb2.toString();
    }

    public HarvestResponse send(HttpURLConnection httpURLConnection, String str) {
        HarvestResponse harvestResponse = new HarvestResponse();
        String str2 = str.length() <= MAX_PLAINTEXT_MESSAGE_SIZE ? Constants.Network.ContentType.IDENTITY : Constants.Network.ContentType.DEFLATE;
        try {
            try {
                TicToc ticToc = new TicToc();
                ticToc.tic();
                ByteBuffer byteBufferWrap = Constants.Network.ContentType.DEFLATE.equals(str2.toLowerCase()) ? ByteBuffer.wrap(Deflator.deflate(str.getBytes())) : ByteBuffer.wrap(str.getBytes());
                httpURLConnection.setFixedLengthStreamingMode(byteBufferWrap.array().length);
                httpURLConnection.setRequestProperty(Constants.Network.CONTENT_ENCODING_HEADER, str2);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                try {
                    bufferedOutputStream.write(byteBufferWrap.array());
                    bufferedOutputStream.close();
                    harvestResponse.setResponseTime(ticToc.toc());
                    harvestResponse.setStatusCode(httpURLConnection.getResponseCode());
                    harvestResponse.setResponseBody(readResponse(httpURLConnection));
                    String strReplace = MetricNames.SUPPORTABILITY_SUBDESTINATION_OUTPUT_BYTES.replace(MetricNames.TAG_FRAMEWORK, Agent.getDeviceInformation().getApplicationFramework().name()).replace(MetricNames.TAG_DESTINATION, MetricNames.SUPPORTABILITY_DATA_USAGE_COLLECTOR);
                    if (httpURLConnection.getURL().getFile().contains(COLLECTOR_CONNECT_URI)) {
                        strReplace = strReplace.replace(MetricNames.TAG_SUBDESTINATION, "connect");
                    } else if (httpURLConnection.getURL().getFile().contains(COLLECTOR_DATA_URI)) {
                        strReplace = strReplace.replace(MetricNames.TAG_SUBDESTINATION, "data");
                    }
                    StatsEngine.get().sampleMetricDataUsage(strReplace, byteBufferWrap.array().length, httpURLConnection.getContentLength());
                } catch (Throwable th) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                httpURLConnection.disconnect();
                throw th3;
            }
        } catch (IOException e10) {
            this.log.error("Failed to retrieve collector response: " + e10.getMessage());
            recordCollectorError(e10);
        } catch (Exception e11) {
            this.log.error("Failed to send POST to collector: " + e11.getMessage());
            recordCollectorError(e11);
            httpURLConnection.disconnect();
            return null;
        }
        httpURLConnection.disconnect();
        return harvestResponse;
    }

    public HarvestResponse sendConnect() {
        if (this.connectInformation == null) {
            throw new IllegalArgumentException();
        }
        HttpURLConnection httpURLConnectionCreateConnectPost = createConnectPost();
        if (httpURLConnectionCreateConnectPost == null) {
            this.log.error("Failed to create connect POST");
            return null;
        }
        TicToc ticToc = new TicToc();
        ticToc.tic();
        HarvestResponse harvestResponseSend = send(httpURLConnectionCreateConnectPost, this.connectInformation.toJsonString());
        StatsEngine.get().sampleTimeMs("Supportability/AgentHealth/Collector/Connect", ticToc.toc());
        return harvestResponseSend;
    }

    public HarvestResponse sendData(Harvestable harvestable) {
        if (harvestable == null) {
            throw new IllegalArgumentException();
        }
        HttpURLConnection httpURLConnectionCreateDataPost = createDataPost();
        if (httpURLConnectionCreateDataPost != null) {
            return send(httpURLConnectionCreateDataPost, harvestable.toJsonString());
        }
        this.log.error("Failed to create data POST");
        return null;
    }

    public void setApplicationToken(String str) {
        this.applicationToken = str;
    }

    public void setCollectorHost(String str) {
        this.collectorHost = str;
    }

    public void setConnectInformation(ConnectInformation connectInformation) {
        this.connectInformation = connectInformation;
    }

    public void setServerTimestamp(long j10) {
        this.log.debug("Setting server timestamp: " + j10);
        this.serverTimestamp = j10;
    }

    public void useSsl(boolean z10) {
        if (!z10) {
            this.log.error("Unencrypted http requests are no longer supported");
        }
        this.useSsl = true;
    }
}
