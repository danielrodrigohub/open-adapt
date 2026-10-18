package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransactions extends HarvestableArray {
    private final Collection<HttpTransaction> httpTransactions = new CopyOnWriteArrayList();

    public synchronized void add(HttpTransaction httpTransaction) {
        this.httpTransactions.add(httpTransaction);
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Iterator<HttpTransaction> it = this.httpTransactions.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public void clear() {
        this.httpTransactions.clear();
    }

    public int count() {
        return this.httpTransactions.size();
    }

    public Collection<HttpTransaction> getHttpTransactions() {
        return this.httpTransactions;
    }

    public synchronized void remove(HttpTransaction httpTransaction) {
        this.httpTransactions.remove(httpTransaction);
    }

    public String toString() {
        StringBuilder sbC = b.c("HttpTransactions{httpTransactions=");
        sbC.append(this.httpTransactions);
        sbC.append('}');
        return sbC.toString();
    }
}
