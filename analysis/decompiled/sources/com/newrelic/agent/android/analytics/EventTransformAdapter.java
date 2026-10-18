package com.newrelic.agent.android.analytics;

import com.newrelic.agent.android.agentdata.AgentDataController;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class EventTransformAdapter implements EventListener {
    public final String REPLACEMENT = "*";
    public final Map<String, Map<Pattern, String>> attributeTransforms = new HashMap();
    public EventManagerImpl em = null;

    public String onAttributeTransform(String str, String str2) {
        Map<Pattern, String> map = this.attributeTransforms.get(str);
        if (map != null) {
            for (Pattern pattern : map.keySet()) {
                str2 = onPatternTransform(pattern, map.get(pattern), str2);
            }
        }
        return str2;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventAdded(AnalyticsEvent analyticsEvent) {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            return eventManagerImpl.onEventAdded(analyticsEvent);
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventEvicted(AnalyticsEvent analyticsEvent) {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            return eventManagerImpl.onEventEvicted(analyticsEvent);
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventFlush() {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            eventManagerImpl.onEventFlush();
        }
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventOverflow(AnalyticsEvent analyticsEvent) {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            return eventManagerImpl.onEventOverflow(analyticsEvent);
        }
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventQueueSizeExceeded(int i10) {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            eventManagerImpl.onEventQueueSizeExceeded(i10);
        }
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventQueueTimeExceeded(int i10) {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            eventManagerImpl.onEventQueueTimeExceeded(i10);
        }
    }

    public void onEventTransform(AnalyticsEvent analyticsEvent) {
        for (AnalyticsAttribute analyticsAttribute : analyticsEvent.getAttributeSet()) {
            if (this.attributeTransforms.containsKey(analyticsAttribute.getName())) {
                analyticsAttribute.setStringValue(onAttributeTransform(analyticsAttribute.getName(), analyticsAttribute.getStringValue()));
            }
        }
    }

    public String onPatternTransform(Pattern pattern, String str, String str2) {
        Matcher matcher = pattern.matcher(str2);
        if (!matcher.find()) {
            return str2;
        }
        StringBuilder sb2 = new StringBuilder();
        if (str == null) {
            sb2.append(str2);
            for (int i10 = 1; i10 <= matcher.groupCount(); i10++) {
                int iStart = matcher.start(i10);
                while (iStart < matcher.end(i10)) {
                    int i11 = iStart + 1;
                    sb2.replace(iStart, i11, "*");
                    iStart = i11;
                }
            }
        } else {
            sb2.append(matcher.replaceAll(str));
        }
        return sb2.toString();
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onShutdown() {
        EventManagerImpl eventManagerImpl = this.em;
        if (eventManagerImpl != null) {
            eventManagerImpl.onShutdown();
            this.em = null;
        }
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onStart(EventManager eventManager) {
        EventManagerImpl eventManagerImpl = (EventManagerImpl) eventManager;
        this.em = eventManagerImpl;
        if (eventManagerImpl != null) {
            eventManagerImpl.onStart(eventManager);
        }
    }

    public EventTransformAdapter withAttributeTransform(String str, Map<String, String> map) {
        Map<Pattern, String> map2 = this.attributeTransforms.get(str);
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    map2.put(Pattern.compile(entry.getKey()), entry.getValue());
                } catch (Exception e10) {
                    AgentDataController.sendAgentData(e10, new HashMap<String, Object>(entry) { // from class: com.newrelic.agent.android.analytics.EventTransformAdapter.1
                        public final /* synthetic */ Map.Entry val$entry;

                        {
                            this.val$entry = entry;
                            put("transform", ((String) entry.getKey()) + "/" + ((String) entry.getValue()));
                        }
                    });
                }
            }
        }
        if (!map2.isEmpty()) {
            this.attributeTransforms.put(str, map2);
        }
        return this;
    }
}
