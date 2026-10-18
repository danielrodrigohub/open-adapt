package com.newrelic.agent.android;

import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.Encoder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Agent {
    public static final String DEFAULT_BUILD_ID = "";
    public static final String MONO_INSTRUMENTATION_FLAG = "NO";
    private static final AgentImpl NULL_AGENT_IMPL;
    public static final String UNITY_INSTRUMENTATION_FLAG = "NO";
    public static final String VERSION = "6.8.0";
    private static String buildId;
    private static AgentImpl impl;
    private static Object implLock;

    static {
        NullAgentImpl nullAgentImpl = new NullAgentImpl();
        NULL_AGENT_IMPL = nullAgentImpl;
        implLock = new Object();
        impl = nullAgentImpl;
        buildId = null;
    }

    public static void addTransactionData(TransactionData transactionData) {
        getImpl().addTransactionData(transactionData);
    }

    public static void disable() {
        getImpl().disable();
    }

    public static String getActiveNetworkCarrier() {
        return getImpl().getNetworkCarrier();
    }

    public static String getActiveNetworkWanType() {
        return getImpl().getNetworkWanType();
    }

    public static List<TransactionData> getAndClearTransactionData() {
        return getImpl().getAndClearTransactionData();
    }

    public static ApplicationInformation getApplicationInformation() {
        return getImpl().getApplicationInformation();
    }

    public static String getBuildId() {
        synchronized (implLock) {
            if (buildId == null) {
                String string = "";
                if (getUnityInstrumentationFlag().equals("YES") || getMonoInstrumentationFlag().equals("YES")) {
                    string = "";
                } else {
                    try {
                        string = Agent.class.getClassLoader().loadClass("com.newrelic.agent.android.NewRelicConfig").getDeclaredField("BUILD_ID").get(null).toString();
                    } catch (Exception unused) {
                        AgentLogManager.getAgentLog().error("Agent.getBuildId() was unable to find a valid build Id. Crashes and handled exceptions will not be accepted.");
                    }
                }
                buildId = string;
            }
        }
        return buildId;
    }

    public static String getCrossProcessId() {
        return getImpl().getCrossProcessId();
    }

    public static DeviceInformation getDeviceInformation() {
        return getImpl().getDeviceInformation();
    }

    public static Encoder getEncoder() {
        return getImpl().getEncoder();
    }

    public static AgentImpl getImpl() {
        AgentImpl agentImpl;
        synchronized (implLock) {
            agentImpl = impl;
        }
        return agentImpl;
    }

    public static String getMonoInstrumentationFlag() {
        return "NO";
    }

    public static int getResponseBodyLimit() {
        return getImpl().getResponseBodyLimit();
    }

    public static int getStackTraceLimit() {
        return getImpl().getStackTraceLimit();
    }

    public static String getUnityInstrumentationFlag() {
        return "NO";
    }

    public static String getVersion() {
        return "6.8.0";
    }

    public static boolean hasReachableNetworkConnection(String str) {
        return getImpl().hasReachableNetworkConnection(str);
    }

    public static boolean isDisabled() {
        return getImpl().isDisabled();
    }

    public static boolean isInstantApp() {
        return getImpl().isInstantApp();
    }

    public static void mergeTransactionData(List<TransactionData> list) {
        getImpl().mergeTransactionData(list);
    }

    public static void setImpl(AgentImpl agentImpl) {
        synchronized (implLock) {
            try {
                if (agentImpl == null) {
                    impl = NULL_AGENT_IMPL;
                } else {
                    impl = agentImpl;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setLocation(String str, String str2) {
        getImpl().setLocation(str, str2);
    }

    public static void start() {
        getImpl().start();
    }

    public static void stop() {
        getImpl().stop();
    }
}
