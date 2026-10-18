package com.newrelic.agent.android.instrumentation;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum MetricCategory {
    NONE("None"),
    VIEW_LOADING("View Loading"),
    VIEW_LAYOUT("Layout"),
    DATABASE("Database"),
    IMAGE("Images"),
    JSON("JSON"),
    NETWORK("Network");

    private static final Map<String, MetricCategory> methodMap = new HashMap<String, MetricCategory>() { // from class: com.newrelic.agent.android.instrumentation.MetricCategory.1
        {
            put("onCreate", MetricCategory.VIEW_LOADING);
        }
    };
    private String categoryName;

    MetricCategory(String str) {
        this.categoryName = str;
    }

    public static MetricCategory categoryForMethod(String str) {
        if (str == null) {
            return NONE;
        }
        int iIndexOf = str.indexOf("#");
        MetricCategory metricCategory = methodMap.get(iIndexOf >= 0 ? str.substring(iIndexOf + 1) : null);
        return metricCategory == null ? NONE : metricCategory;
    }

    public String getCategoryName() {
        return this.categoryName;
    }
}
