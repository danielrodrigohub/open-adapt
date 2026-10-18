package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrors extends HarvestableArray {
    private final Collection<HttpError> httpErrors = new CopyOnWriteArrayList();

    public void addHttpError(HttpError httpError) {
        String hash = httpError.getHash();
        for (HttpError httpError2 : this.httpErrors) {
            if (hash.equals(httpError2.getHash())) {
                httpError2.incrementCount();
                return;
            }
        }
        this.httpErrors.add(httpError);
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<HttpError> it = this.httpErrors.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public void clear() {
        this.httpErrors.clear();
    }

    public int count() {
        return this.httpErrors.size();
    }

    public Collection<HttpError> getHttpErrors() {
        return this.httpErrors;
    }

    public void removeHttpError(HttpError httpError) {
        this.httpErrors.remove(httpError);
    }
}
