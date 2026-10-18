package com.newrelic.agent.android.unity;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UnityEvent {
    private Map<String, Object> attributes = new HashMap();
    private String name;

    public UnityEvent(String str) {
        this.name = str;
    }

    public void addAttribute(String str, String str2) {
        this.attributes.put(str, str2);
    }

    public Map<String, Object> getAttributes() {
        return this.attributes;
    }

    public String getName() {
        return this.name;
    }

    public void setAttributes(Map<String, Object> map) {
        this.attributes = map;
    }

    public void addAttribute(String str, Double d10) {
        this.attributes.put(str, d10);
    }
}
