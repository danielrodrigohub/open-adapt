package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class HarvestableArray extends BaseHarvestable {
    public HarvestableArray() {
        super(Harvestable.Type.ARRAY);
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public abstract JsonArray asJsonArray();
}
