package com.newrelic.agent.android.crash;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.payload.PayloadSender;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class CrashSender extends PayloadSender {
    private static final String CRASH_COLLECTOR_PATH = "/mobile_crash";
    public static final int CRASH_COLLECTOR_TIMEOUT = 5000;
    private final Crash crash;

    public CrashSender(Crash crash, AgentConfiguration agentConfiguration) {
        super(crash.toJsonString().getBytes(), agentConfiguration);
        this.crash = crash;
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public HttpURLConnection getConnection() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(getProtocol() + this.agentConfiguration.getCrashCollectorHost() + CRASH_COLLECTOR_PATH).openConnection();
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty(Constants.Network.CONTENT_TYPE_HEADER, Constants.Network.ContentType.JSON);
        httpURLConnection.setRequestProperty(this.agentConfiguration.getAppTokenHeader(), this.agentConfiguration.getApplicationToken());
        httpURLConnection.setRequestProperty(this.agentConfiguration.getDeviceOsNameHeader(), Agent.getDeviceInformation().getOsName());
        httpURLConnection.setRequestProperty(this.agentConfiguration.getAppVersionHeader(), Agent.getApplicationInformation().getAppVersion());
        httpURLConnection.setConnectTimeout(CRASH_COLLECTOR_TIMEOUT);
        httpURLConnection.setReadTimeout(CRASH_COLLECTOR_TIMEOUT);
        return httpURLConnection;
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public void onFailedUpload(String str) {
        PayloadSender.log.error("CrashSender: " + str);
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_FAILED_UPLOAD);
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public void onRequestException(Exception exc) {
        PayloadSender.log.error("CrashSender: Crash upload failed: " + exc);
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public void onRequestResponse(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 202) {
            StatsEngine.get().sampleTimeMs(MetricNames.SUPPORTABILITY_CRASH_UPLOAD_TIME, this.timer.peek());
            AgentLog agentLog = PayloadSender.log;
            StringBuilder sbC = b.c("CrashSender: Crash ");
            sbC.append(this.crash.getUuid().toString());
            sbC.append(" successfully submitted.");
            agentLog.info(sbC.toString());
        } else if (responseCode == 408) {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_UPLOAD_TIMEOUT);
            onFailedUpload("The request to submit the payload [" + this.payload.getUuid() + "] has timed out - (will try again later) - Response code [" + responseCode + "]");
        } else if (responseCode == 429) {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_UPLOAD_THROTTLED);
            onFailedUpload("The request to submit the payload [" + this.payload.getUuid() + "] was has timed out - (will try again later) - Response code [" + responseCode + "]");
        } else if (responseCode != 500) {
            StringBuilder sbC2 = b.c("Something went wrong while submitting a crash (will try again later) - Response code ");
            sbC2.append(httpURLConnection.getResponseCode());
            onFailedUpload(sbC2.toString());
        } else {
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_REMOVED_REJECTED);
            onFailedUpload("The crash was rejected and will be deleted - Response code " + httpURLConnection.getResponseCode());
        }
        AgentLog agentLog2 = PayloadSender.log;
        StringBuilder sbC3 = b.c("CrashSender: Crash collection took ");
        sbC3.append(this.timer.toc());
        sbC3.append("ms");
        agentLog2.debug(sbC3.toString());
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public boolean shouldUploadOpportunistically() {
        return Agent.hasReachableNetworkConnection(null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.newrelic.agent.android.payload.PayloadSender, java.util.concurrent.Callable
    public PayloadSender call() {
        setPayload(this.crash.toJsonString().getBytes());
        this.crash.incrementUploadCount();
        this.agentConfiguration.getCrashStore().store(this.crash);
        try {
            return super.call();
        } catch (Exception e10) {
            onFailedUpload("Unable to report crash to New Relic, will try again later. " + e10);
            return this;
        }
    }
}
