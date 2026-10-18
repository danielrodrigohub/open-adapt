package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public abstract class HarvestableValue extends BaseHarvestable {
    public HarvestableValue() {
        super(Harvestable.Type.VALUE);
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public abstract JsonPrimitive asJsonPrimitive();
}
