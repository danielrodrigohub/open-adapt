package com.newrelic.agent.android.stores;

import a0.b;
import android.content.Context;
import android.content.SharedPreferences;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsAttributeStore;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SharedPrefsAnalyticsAttributeStore extends SharedPrefsStore implements AnalyticsAttributeStore {
    private static final String STORE_FILE = "NRAnalyticsAttributeStore";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    /* JADX INFO: renamed from: com.newrelic.agent.android.stores.SharedPrefsAnalyticsAttributeStore$1, reason: invalid class name */
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

    public SharedPrefsAnalyticsAttributeStore(Context context) {
        super(context, STORE_FILE);
    }

    @Override // com.newrelic.agent.android.stores.SharedPrefsStore, com.newrelic.agent.android.analytics.AnalyticsAttributeStore, com.newrelic.agent.android.payload.PayloadStore
    public List<AnalyticsAttribute> fetchAll() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : this.sharedPrefs.getAll().entrySet()) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("SharedPrefsAnalyticsAttributeStore contains attribute [");
            sbC.append((Object) entry.getKey());
            sbC.append("=");
            sbC.append(entry.getValue());
            sbC.append("]");
            agentLog.audit(sbC.toString());
            if (entry.getValue() instanceof String) {
                arrayList.add(new AnalyticsAttribute(entry.getKey().toString(), entry.getValue().toString(), true));
            } else if (entry.getValue() instanceof Float) {
                arrayList.add(new AnalyticsAttribute(entry.getKey().toString(), Double.valueOf(entry.getValue().toString()).doubleValue(), true));
            } else if (entry.getValue() instanceof Long) {
                arrayList.add(new AnalyticsAttribute(entry.getKey().toString(), Double.longBitsToDouble(Long.valueOf(entry.getValue().toString()).longValue()), true));
            } else if (entry.getValue() instanceof Boolean) {
                arrayList.add(new AnalyticsAttribute(entry.getKey().toString(), Boolean.valueOf(entry.getValue().toString()).booleanValue(), true));
            } else {
                StringBuilder sbC2 = b.c("SharedPrefsAnalyticsAttributeStore.fetchAll(): unsupported attribute [");
                sbC2.append((Object) entry.getKey());
                sbC2.append("=");
                sbC2.append(entry.getValue());
                sbC2.append("]");
                agentLog.error(sbC2.toString());
            }
        }
        return arrayList;
    }

    public SharedPrefsAnalyticsAttributeStore(Context context, String str) {
        super(context, str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.newrelic.agent.android.payload.PayloadStore
    public void delete(AnalyticsAttribute analyticsAttribute) {
        synchronized (this) {
            log.audit("SharedPrefsAnalyticsAttributeStore.delete(" + analyticsAttribute.getName() + ")");
            super.delete(analyticsAttribute.getName());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.newrelic.agent.android.payload.PayloadStore
    public boolean store(AnalyticsAttribute analyticsAttribute) {
        synchronized (this) {
            if (!analyticsAttribute.isPersistent()) {
                return false;
            }
            SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
            int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[analyticsAttribute.getAttributeDataType().ordinal()];
            if (i10 == 1) {
                log.audit("SharedPrefsAnalyticsAttributeStore.store(" + analyticsAttribute + ")");
                editorEdit.putString(analyticsAttribute.getName(), analyticsAttribute.getStringValue());
            } else if (i10 == 2) {
                log.audit("SharedPrefsAnalyticsAttributeStore.store(" + analyticsAttribute + ")");
                editorEdit.putLong(analyticsAttribute.getName(), Double.doubleToLongBits(analyticsAttribute.getDoubleValue()));
            } else {
                if (i10 != 3) {
                    log.error("SharedPrefsAnalyticsAttributeStore.store - unsupported analytic attribute data type" + analyticsAttribute.getName());
                    return false;
                }
                log.audit("SharedPrefsAnalyticsAttributeStore.store(" + analyticsAttribute + ")");
                editorEdit.putBoolean(analyticsAttribute.getName(), analyticsAttribute.getBooleanValue());
            }
            return applyOrCommitEditor(editorEdit);
        }
    }
}
