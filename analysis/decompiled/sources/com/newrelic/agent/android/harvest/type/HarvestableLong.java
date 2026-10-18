package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class HarvestableLong extends HarvestableValue {
    private long value;

    public HarvestableLong() {
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableValue, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return new JsonPrimitive((Number) Long.valueOf(this.value));
    }

    public HarvestableLong(long j10) {
        this();
        this.value = j10;
    }
}
