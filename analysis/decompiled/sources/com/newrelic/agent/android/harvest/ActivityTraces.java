package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.com.google.gson.JsonArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ActivityTraces extends HarvestableArray {
    private final Collection<ActivityTrace> activityTraces = new ArrayList();

    public synchronized void add(ActivityTrace activityTrace) {
        this.activityTraces.add(activityTrace);
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<ActivityTrace> it = this.activityTraces.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public void clear() {
        this.activityTraces.clear();
    }

    public int count() {
        return this.activityTraces.size();
    }

    public Collection<ActivityTrace> getActivityTraces() {
        return this.activityTraces;
    }

    public synchronized void remove(ActivityTrace activityTrace) {
        this.activityTraces.remove(activityTrace);
    }
}
