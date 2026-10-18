package com.newrelic.agent.android.hybrid.data;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.agentdata.AgentDataReporter;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.harvest.crash.ApplicationInfo;
import com.newrelic.agent.android.hybrid.StackTrace;
import com.newrelic.agent.android.hybrid.rninterface.IStack;
import com.newrelic.agent.android.hybrid.rninterface.IStackFrame;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.mobile.fbs.HexAgentDataBundle;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DataController {
    public static final AgentConfiguration agentConfiguration = new AgentConfiguration();
    private static final AgentLog log = AgentLogManager.getAgentLog();

    /* JADX INFO: renamed from: com.newrelic.agent.android.hybrid.data.DataController$1, reason: invalid class name */
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

    public static FlatBufferBuilder buildAgentDataFromJSError(StackTrace stackTrace, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ApplicationInfo applicationInfo = new ApplicationInfo(Agent.getApplicationInformation());
        map2.put("appVersion", applicationInfo.getApplicationVersion());
        map2.put("appBuild", applicationInfo.getApplicationBuild());
        map2.put("name", stackTrace.getStackTraceException().getExceptionName());
        map2.put("message", stackTrace.getStackTraceException().getCause());
        map2.put(HexAttribute.HEX_ATTR_JSERROR_FATAL, Boolean.valueOf(stackTrace.isFatal()));
        map2.put(HexAttribute.HEX_ATTR_JSERROR_BUILDID, stackTrace.getBuildId());
        map2.put(HexAttribute.HEX_ATTR_JSERROR_BUNDLEID, stackTrace.getBuildId());
        map2.put("thread", threadSetFromStackElements(stackTrace.getStacks()));
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
        return DataBuilder.startAndFinishAgentData(map3, hashSet);
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

    public static boolean sendAgentData(StackTrace stackTrace) {
        if (FeatureFlag.featureEnabled(FeatureFlag.HandledExceptions) || FeatureFlag.featureEnabled(FeatureFlag.NativeReporting)) {
            try {
                ByteBuffer byteBufferSlice = buildAgentDataFromJSError(stackTrace).dataBuffer().slice();
                byte[] bArr = new byte[byteBufferSlice.remaining()];
                byteBufferSlice.get(bArr);
                AgentLog agentLog = log;
                agentLog.audit(DataBuilder.toJsonString(HexAgentDataBundle.getRootAsHexAgentDataBundle(ByteBuffer.wrap(bArr)), 0));
                boolean zReportAgentData = AgentDataReporter.reportAgentData(bArr);
                if (!zReportAgentData) {
                    agentLog.error("HandledJSError: exception " + stackTrace.getClass().getName() + " failed to record data.");
                }
                return zReportAgentData;
            } catch (Exception unused) {
                AgentLog agentLog2 = log;
                StringBuilder sbC = b.c("HandledJSError: exception ");
                sbC.append(stackTrace.getClass().getName());
                sbC.append(" failed to record data.");
                agentLog2.error(sbC.toString());
            }
        }
        return false;
    }

    public static List<Map<String, Object>> threadSetFromStackElements(IStack[] iStackArr) {
        ArrayList arrayList = new ArrayList();
        for (IStackFrame iStackFrame : iStackArr[0].getStackFrames()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(HexAttribute.HEX_ATTR_JSERROR_METHOD, iStackFrame.getMethodName());
            linkedHashMap.put("fileName", iStackFrame.getFileName());
            linkedHashMap.put("lineNumber", Integer.valueOf(iStackFrame.getLineNumber()));
            linkedHashMap.put(HexAttribute.HEX_ATTR_JSERROR_COLUMN, Integer.valueOf(iStackFrame.getColumnNumber()));
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    public static FlatBufferBuilder buildAgentDataFromJSError(StackTrace stackTrace) {
        return buildAgentDataFromJSError(stackTrace, new HashMap());
    }
}
