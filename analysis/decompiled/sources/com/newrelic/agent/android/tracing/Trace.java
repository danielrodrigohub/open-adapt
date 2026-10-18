package com.newrelic.agent.android.tracing;

import a0.b;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.MetricCategory;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class Trace {
    private static final String CATEGORY_PARAMETER = "category";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public long childExclusiveTime;
    private volatile Set<UUID> children;
    public String displayName;
    public long entryTimestamp;
    public long exclusiveTime;
    public long exitTimestamp;
    private boolean isComplete;
    public String metricBackgroundName;
    public String metricName;
    public final UUID myUUID;
    private volatile Map<String, Object> params;
    public final UUID parentUUID;
    private List<String> rawAnnotationParams;
    public String scope;
    public long threadId;
    public String threadName;
    public TraceMachine traceMachine;
    private TraceType type;

    public Trace() {
        this.myUUID = new UUID(Util.getRandom().nextLong(), Util.getRandom().nextLong());
        this.entryTimestamp = 0L;
        this.exitTimestamp = 0L;
        this.exclusiveTime = 0L;
        this.childExclusiveTime = 0L;
        this.threadId = 0L;
        this.threadName = "main";
        this.type = TraceType.TRACE;
        this.isComplete = false;
        this.parentUUID = null;
    }

    private static Object createParameter(String str, String str2, String str3) {
        try {
            Class<?> cls = Class.forName(str2);
            if (MetricCategory.class == cls) {
                return MetricCategory.valueOf(str3);
            }
            if (String.class == cls) {
                return str3;
            }
            return null;
        } catch (ClassNotFoundException e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Unable to resolve parameter class in enterMethod: ");
            sbC.append(e10.getMessage());
            agentLog.error(sbC.toString(), e10);
            return null;
        }
    }

    public void addChild(Trace trace) {
        if (this.children == null) {
            synchronized (this) {
                if (this.children == null) {
                    this.children = Collections.synchronizedSet(new HashSet());
                }
            }
        }
        this.children.add(trace.myUUID);
    }

    public void complete() throws TracingInactiveException {
        if (this.isComplete) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Attempted to double complete trace ");
            sbC.append(this.myUUID.toString());
            agentLog.warning(sbC.toString());
            return;
        }
        if (this.exitTimestamp == 0) {
            this.exitTimestamp = System.currentTimeMillis();
        }
        this.exclusiveTime = getDurationAsMilliseconds() - this.childExclusiveTime;
        this.isComplete = true;
        try {
            this.traceMachine.storeCompletedTrace(this);
        } catch (NullPointerException unused) {
            throw new TracingInactiveException();
        }
    }

    public Map<String, Object> getAnnotationParams() {
        HashMap map = new HashMap();
        List<String> list = this.rawAnnotationParams;
        if (list != null && list.size() > 0) {
            Iterator<String> it = this.rawAnnotationParams.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Object objCreateParameter = createParameter(next, it.next(), it.next());
                if (objCreateParameter != null) {
                    map.put(next, objCreateParameter);
                }
            }
        }
        return map;
    }

    public MetricCategory getCategory() {
        if (!getAnnotationParams().containsKey("category")) {
            return null;
        }
        Object obj = getAnnotationParams().get("category");
        if (obj instanceof MetricCategory) {
            return (MetricCategory) obj;
        }
        log.error("Category annotation parameter is not of type MetricCategory");
        return null;
    }

    public Set<UUID> getChildren() {
        if (this.children == null) {
            synchronized (this) {
                if (this.children == null) {
                    this.children = Collections.synchronizedSet(new HashSet());
                }
            }
        }
        return this.children;
    }

    public long getDurationAsMilliseconds() {
        return this.exitTimestamp - this.entryTimestamp;
    }

    public float getDurationAsSeconds() {
        return (this.exitTimestamp - this.entryTimestamp) / 1000.0f;
    }

    public Map<String, Object> getParams() {
        if (this.params == null) {
            synchronized (this) {
                if (this.params == null) {
                    this.params = new ConcurrentHashMap();
                }
            }
        }
        return this.params;
    }

    public TraceType getType() {
        return this.type;
    }

    public boolean isComplete() {
        return this.isComplete;
    }

    public void prepareForSerialization() {
        getParams().put(AnalyticsAttribute.TYPE_ATTRIBUTE, this.type.toString());
    }

    public void setAnnotationParams(List<String> list) {
        this.rawAnnotationParams = list;
    }

    public void setType(TraceType traceType) {
        this.type = traceType;
    }

    public Trace(String str, UUID uuid, TraceMachine traceMachine) {
        this.myUUID = new UUID(Util.getRandom().nextLong(), Util.getRandom().nextLong());
        this.entryTimestamp = 0L;
        this.exitTimestamp = 0L;
        this.exclusiveTime = 0L;
        this.childExclusiveTime = 0L;
        this.threadId = 0L;
        this.threadName = "main";
        this.type = TraceType.TRACE;
        this.isComplete = false;
        this.displayName = str;
        this.parentUUID = uuid;
        this.traceMachine = traceMachine;
    }
}
