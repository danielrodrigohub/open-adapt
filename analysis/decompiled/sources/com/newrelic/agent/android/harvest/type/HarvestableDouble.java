package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class HarvestableDouble extends HarvestableValue {
    private double value;

    public HarvestableDouble() {
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableValue, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return new JsonPrimitive((Number) Double.valueOf(this.value));
    }

    public HarvestableDouble(double d10) {
        this();
        this.value = d10;
    }
}
