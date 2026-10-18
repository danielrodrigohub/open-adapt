package com.newrelic.agent.android.metric;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MetricStore {
    private final Map<String, Map<String, Metric>> metricStore = new ConcurrentHashMap();

    public void add(Metric metric) {
        String stringScope = metric.getStringScope();
        String name = metric.getName();
        if (!this.metricStore.containsKey(stringScope)) {
            this.metricStore.put(stringScope, new HashMap());
        }
        if (this.metricStore.get(stringScope).containsKey(name)) {
            this.metricStore.get(stringScope).get(name).aggregate(metric);
        } else {
            this.metricStore.get(stringScope).put(name, metric);
        }
    }

    public void clear() {
        this.metricStore.clear();
    }

    public Metric get(String str) {
        return get(str, "");
    }

    public List<Metric> getAll() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, Map<String, Metric>>> it = this.metricStore.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<Map.Entry<String, Metric>> it2 = it.next().getValue().entrySet().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getValue());
            }
        }
        return arrayList;
    }

    public List<Metric> getAllByScope(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<Map.Entry<String, Metric>> it = this.metricStore.get(str).entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
        } catch (NullPointerException unused) {
        }
        return arrayList;
    }

    public List<Metric> getAllUnscoped() {
        return getAllByScope("");
    }

    public boolean isEmpty() {
        return this.metricStore.isEmpty();
    }

    public void remove(Metric metric) {
        String stringScope = metric.getStringScope();
        String name = metric.getName();
        if (this.metricStore.containsKey(stringScope) && this.metricStore.get(stringScope).containsKey(name)) {
            this.metricStore.get(stringScope).remove(name);
        }
    }

    public void removeAll(List<Metric> list) {
        synchronized (this.metricStore) {
            Iterator<Metric> it = list.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
        }
    }

    public List<Metric> removeAllWithScope(String str) {
        List<Metric> allByScope = getAllByScope(str);
        if (!allByScope.isEmpty()) {
            removeAll(allByScope);
        }
        return allByScope;
    }

    public Metric get(String str, String str2) {
        try {
            Map<String, Map<String, Metric>> map = this.metricStore;
            if (str2 == null) {
                str2 = "";
            }
            return map.get(str2).get(str);
        } catch (NullPointerException unused) {
            return null;
        }
    }
}
