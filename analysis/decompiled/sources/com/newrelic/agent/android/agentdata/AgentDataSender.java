package com.newrelic.agent.android.agentdata;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.payload.Payload;
import com.newrelic.agent.android.payload.PayloadController;
import com.newrelic.agent.android.payload.PayloadSender;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class AgentDataSender extends PayloadSender {
    public AgentDataSender(byte[] bArr, AgentConfiguration agentConfiguration) {
        super(bArr, agentConfiguration);
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public HttpURLConnection getConnection() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(getProtocol() + this.agentConfiguration.getHexCollectorHost() + this.agentConfiguration.getHexCollectorPath()).openConnection();
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(Constants.Network.CONTENT_TYPE_HEADER, Constants.Network.ContentType.OCTET_STREAM);
        httpURLConnection.setRequestProperty(this.agentConfiguration.getAppTokenHeader(), this.agentConfiguration.getApplicationToken());
        httpURLConnection.setRequestProperty(this.agentConfiguration.getDeviceOsNameHeader(), Agent.getDeviceInformation().getOsName());
        httpURLConnection.setRequestProperty(this.agentConfiguration.getAppVersionHeader(), Agent.getApplicationInformation().getAppVersion());
        httpURLConnection.setConnectTimeout(this.agentConfiguration.getHexCollectorTimeout());
        httpURLConnection.setReadTimeout(this.agentConfiguration.getHexCollectorTimeout());
        return httpURLConnection;
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public void onFailedUpload(String str) {
        PayloadSender.log.error(str);
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_HEX_FAILED_UPLOAD);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0095  */
    @Override // com.newrelic.agent.android.payload.PayloadSender
    public void onRequestResponse(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 202) {
            StatsEngine.get().sampleTimeMs(MetricNames.SUPPORTABILITY_HEX_UPLOAD_TIME, this.timer.peek());
        } else if (responseCode == 403) {
            StringBuilder sbC = b.c("The data payload [");
            sbC.append(this.payload.getUuid());
            sbC.append("] was rejected and will be deleted - Response code [");
            sbC.append(responseCode);
            sbC.append("]");
            onFailedUpload(sbC.toString());
            StatsEngine.get().sampleTimeMs(MetricNames.SUPPORTABILITY_HEX_FAILED_UPLOAD, this.timer.peek());
        } else if (responseCode == 408) {
            StringBuilder sbC2 = b.c("The request to submit the payload [");
            sbC2.append(this.payload.getUuid());
            sbC2.append("] has timed out (will try again later) - Response code [");
            sbC2.append(responseCode);
            sbC2.append("]");
            onFailedUpload(sbC2.toString());
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_HEX_UPLOAD_TIMEOUT);
        } else if (responseCode == 429) {
            StringBuilder sbC3 = b.c("The request to submit the payload [");
            sbC3.append(this.payload.getUuid());
            sbC3.append("] was throttled (will try again later) - Response code [");
            sbC3.append(responseCode);
            sbC3.append("]");
            onFailedUpload(sbC3.toString());
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_HEX_UPLOAD_THROTTLED);
        } else if (responseCode != 500) {
            StringBuilder sbC4 = b.c("Something went wrong while submitting the payload [");
            sbC4.append(this.payload.getUuid());
            sbC4.append("] - (will try again later) - Response code [");
            sbC4.append(responseCode);
            sbC4.append("]");
            onFailedUpload(sbC4.toString());
        } else {
            StringBuilder sbC5 = b.c("The data payload [");
            sbC5.append(this.payload.getUuid());
            sbC5.append("] was rejected and will be deleted - Response code [");
            sbC5.append(responseCode);
            sbC5.append("]");
            onFailedUpload(sbC5.toString());
            StatsEngine.get().sampleTimeMs(MetricNames.SUPPORTABILITY_HEX_FAILED_UPLOAD, this.timer.peek());
        }
        AgentLog agentLog = PayloadSender.log;
        StringBuilder sbC6 = b.c("Payload [");
        sbC6.append(this.payload.getUuid());
        sbC6.append("] delivery took ");
        sbC6.append(this.timer.toc());
        sbC6.append("ms");
        agentLog.debug(sbC6.toString());
    }

    @Override // com.newrelic.agent.android.payload.PayloadSender
    public boolean shouldUploadOpportunistically() {
        return PayloadController.shouldUploadOpportunistically();
    }

    public AgentDataSender(Payload payload, AgentConfiguration agentConfiguration) {
        super(payload, agentConfiguration);
    }
}
