package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class Events extends HarvestableArray {
    private final Collection<Event> events = new ArrayList();

    public void addEvent(Event event) {
        this.events.add(event);
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<Event> it = this.events.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }
}
