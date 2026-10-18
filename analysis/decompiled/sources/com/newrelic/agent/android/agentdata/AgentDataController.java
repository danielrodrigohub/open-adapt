package com.newrelic.agent.android.agentdata;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.agentdata.builder.AgentDataBuilder;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.crash.Crash;
import com.newrelic.agent.android.harvest.crash.ApplicationInfo;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.ExceptionHelper;
import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.mobile.fbs.HexAgentDataBundle;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AgentDataController {
    public static final AgentConfiguration agentConfiguration = new AgentConfiguration();
    private static final AgentLog log = AgentLogManager.getAgentLog();

    /* JADX INFO: renamed from: com.newrelic.agent.android.agentdata.AgentDataController$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType;

        static {
            int[] iArr = new int[AnalyticsAttribute.AttributeDataType.values().length];
            $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType = iArr;
            try {
                iArr[AnalyticsAttribute.AttributeDataType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static FlatBufferBuilder buildAgentDataFromHandledException(Throwable th, Map<String, Object> map) {
        UUID uuidFromString;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ApplicationInfo applicationInfo = new ApplicationInfo(Agent.getApplicationInformation());
        try {
            uuidFromString = UUID.fromString(Crash.getSafeBuildId());
        } catch (IllegalArgumentException e10) {
            UUID uuidRandomUUID = UUID.randomUUID();
            ExceptionHelper.recordSupportabilityMetric(e10, "RandomUUID");
            uuidFromString = uuidRandomUUID;
        }
        map2.put(HexAttribute.HEX_ATTR_APP_UUID_HI, Long.valueOf(uuidFromString.getLeastSignificantBits()));
        map2.put(HexAttribute.HEX_ATTR_APP_UUID_LO, Long.valueOf(uuidFromString.getMostSignificantBits()));
        map2.put("appVersion", applicationInfo.getApplicationVersion());
        map2.put("appBuild", applicationInfo.getApplicationBuild());
        map2.put("sessionId", agentConfiguration.getSessionID());
        map2.put(HexAttribute.HEX_ATTR_TIMESTAMP_MS, Long.valueOf(System.currentTimeMillis()));
        map2.put("message", th.getMessage());
        map2.put(HexAttribute.HEX_ATTR_CAUSE, getRootCause(th).toString());
        map2.put("name", th.getClass().toString());
        map2.put("thread", threadSetFromStackElements(th.getStackTrace()));
        map2.putAll(map);
        for (AnalyticsAttribute analyticsAttribute : AnalyticsControllerImpl.getInstance().getSessionAttributes()) {
            int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[analyticsAttribute.getAttributeDataType().ordinal()];
            if (i10 == 1) {
                map3.put(analyticsAttribute.getName(), analyticsAttribute.getStringValue());
            } else if (i10 == 2) {
                map3.put(analyticsAttribute.getName(), Double.valueOf(analyticsAttribute.getDoubleValue()));
            } else if (i10 == 3) {
                map3.put(analyticsAttribute.getName(), Boolean.valueOf(analyticsAttribute.getBooleanValue()));
            }
        }
        long sessionDurationMillis = Agent.getImpl().getSessionDurationMillis();
        if (0 == sessionDurationMillis) {
            log.error("Harvest instance is not running! Session duration will be invalid");
        } else {
            map3.put(AnalyticsAttribute.SESSION_TIME_SINCE_LOAD_ATTRIBUTE, Float.valueOf(sessionDurationMillis / 1000.0f));
        }
        map3.putAll(map);
        HashSet hashSet = new HashSet();
        hashSet.add(map2);
        return AgentDataBuilder.startAndFinishAgentData(map3, hashSet);
    }

    public static Throwable getRootCause(Throwable th) {
        if (th == null) {
            return new Throwable("Unknown cause");
        }
        try {
            Throwable cause = th.getCause();
            return cause == null ? th : getRootCause(cause);
        } catch (Exception unused) {
            return th;
        }
    }

    public static boolean sendAgentData(Throwable th, Map<String, Object> map) {
        if (FeatureFlag.featureEnabled(FeatureFlag.HandledExceptions) || FeatureFlag.featureEnabled(FeatureFlag.NativeReporting)) {
            try {
                ByteBuffer byteBufferSlice = buildAgentDataFromHandledException(th, map).dataBuffer().slice();
                byte[] bArr = new byte[byteBufferSlice.remaining()];
                byteBufferSlice.get(bArr);
                AgentLog agentLog = log;
                agentLog.audit(AgentDataBuilder.toJsonString(HexAgentDataBundle.getRootAsHexAgentDataBundle(ByteBuffer.wrap(bArr)), 0));
                boolean zReportAgentData = AgentDataReporter.reportAgentData(bArr);
                if (!zReportAgentData) {
                    agentLog.error("HandledException: exception " + th.getClass().getName() + " failed to record data.");
                }
                return zReportAgentData;
            } catch (Exception unused) {
                AgentLog agentLog2 = log;
                StringBuilder sbC = b.c("HandledException: exception ");
                sbC.append(th.getClass().getName());
                sbC.append(" failed to record data.");
                agentLog2.error(sbC.toString());
            }
        }
        return false;
    }

    public static List<Map<String, Object>> threadSetFromStackElements(StackTraceElement[] stackTraceElementArr) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(HexAttribute.HEX_ATTR_CLASS_NAME, stackTraceElement.getClassName());
            linkedHashMap.put(HexAttribute.HEX_ATTR_METHOD_NAME, stackTraceElement.getMethodName());
            linkedHashMap.put("lineNumber", Integer.valueOf(stackTraceElement.getLineNumber()));
            linkedHashMap.put("fileName", stackTraceElement.getFileName());
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    public static FlatBufferBuilder buildAgentDataFromHandledException(Throwable th) {
        return buildAgentDataFromHandledException(th, new HashMap());
    }
}
