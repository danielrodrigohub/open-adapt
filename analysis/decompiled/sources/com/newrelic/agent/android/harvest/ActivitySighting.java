package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes.dex */
public class ActivitySighting extends HarvestableArray {
    private long durationMs = 0;
    private String name;
    private final long timestampMs;

    public ActivitySighting(long j10, String str) {
        this.timestampMs = j10;
        this.name = str;
    }

    public static ActivitySighting newFromJson(JsonArray jsonArray) {
        return new ActivitySighting(jsonArray.get(0).getAsLong(), jsonArray.get(1).getAsString());
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        synchronized (this) {
            jsonArray.add(SafeJsonPrimitive.factory(this.name));
            jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.timestampMs)));
            jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.durationMs)));
        }
        return jsonArray;
    }

    public JsonArray asJsonArrayWithoutDuration() {
        JsonArray jsonArray = new JsonArray();
        synchronized (this) {
            jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.timestampMs)));
            jsonArray.add(SafeJsonPrimitive.factory(this.name));
        }
        return jsonArray;
    }

    public void end(long j10) {
        synchronized (this) {
            this.durationMs = j10 - this.timestampMs;
        }
    }

    public long getDuration() {
        return this.durationMs;
    }

    public String getName() {
        return this.name;
    }

    public long getTimestampMs() {
        return this.timestampMs;
    }

    public void setName(String str) {
        synchronized (this) {
            this.name = str;
        }
    }
}
