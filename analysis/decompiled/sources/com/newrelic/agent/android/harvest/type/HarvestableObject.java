package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonObject;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class HarvestableObject extends BaseHarvestable {
    public HarvestableObject() {
        super(Harvestable.Type.OBJECT);
    }

    public static HarvestableObject fromMap(final Map<String, String> map) {
        return new HarvestableObject() { // from class: com.newrelic.agent.android.harvest.type.HarvestableObject.1
            @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
            public JsonObject asJsonObject() {
                return (JsonObject) new Gson().toJsonTree(map, BaseHarvestable.GSON_STRING_MAP_TYPE);
            }
        };
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public abstract JsonObject asJsonObject();
}
