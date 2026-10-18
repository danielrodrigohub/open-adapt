package com.newrelic.agent.android;

import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.Encoder;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NullAgentImpl implements AgentImpl {
    public static final NullAgentImpl instance = new NullAgentImpl();
    public DeviceInformation devInfo;
    private int responseBodyLimit = 1024;
    private TicToc sessionDurationMillis = new TicToc();

    @Override // com.newrelic.agent.android.AgentImpl
    public void addTransactionData(TransactionData transactionData) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void disable() {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public List<TransactionData> getAndClearTransactionData() {
        return new ArrayList();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public ApplicationInformation getApplicationInformation() {
        return new ApplicationInformation(SafeJsonPrimitive.NULL_STRING, "0.0", SafeJsonPrimitive.NULL_STRING, AgentConfiguration.DEFAULT_DEVICE_UUID);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getCrossProcessId() {
        return null;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public DeviceInformation getDeviceInformation() {
        if (this.devInfo == null) {
            DeviceInformation deviceInformation = new DeviceInformation();
            this.devInfo = deviceInformation;
            deviceInformation.setOsName("Android");
            this.devInfo.setOsVersion("12");
            this.devInfo.setOsBuild("12.0.1");
            this.devInfo.setManufacturer("NullAgent");
            this.devInfo.setModel("NullAgent");
            this.devInfo.setAgentName("AndroidAgent");
            this.devInfo.setAgentVersion("6.5.1");
            this.devInfo.setDeviceId("389C9738-A761-44DE-8A66-1668CFD67DA1");
            this.devInfo.setArchitecture("Fake Arch");
            this.devInfo.setRunTime("1.8.0");
            this.devInfo.setSize("Fake Size");
            this.devInfo.setApplicationFramework(ApplicationFramework.Native);
        }
        return this.devInfo;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public Encoder getEncoder() {
        return new Encoder() { // from class: com.newrelic.agent.android.NullAgentImpl.1
            @Override // com.newrelic.agent.android.util.Encoder
            public String encode(byte[] bArr) {
                return new String(bArr);
            }

            @Override // com.newrelic.agent.android.util.Encoder
            public String encodeNoWrap(byte[] bArr) {
                return encode(bArr);
            }
        };
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public EnvironmentInformation getEnvironmentInformation() {
        return new EnvironmentInformation(0L, 1, "none", "none", new long[]{0, 0});
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkCarrier() {
        return "unknown";
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkWanType() {
        return "unknown";
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getResponseBodyLimit() {
        return this.responseBodyLimit;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public long getSessionDurationMillis() {
        return this.sessionDurationMillis.peek();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getStackTraceLimit() {
        return 0;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean hasReachableNetworkConnection(String str) {
        return true;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isDisabled() {
        return true;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isInstantApp() {
        return false;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void mergeTransactionData(List<TransactionData> list) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void setLocation(String str, String str2) {
    }

    public void setResponseBodyLimit(int i10) {
        this.responseBodyLimit = i10;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void start() {
        this.sessionDurationMillis.tic();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void stop() {
        this.sessionDurationMillis.toc();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean updateSavedConnectInformation() {
        return false;
    }
}
