package com.newrelic.agent.android.harvest;

import a0.b;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class DataToken extends HarvestableArray {
    private int accountId;
    private int agentId;

    public DataToken() {
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.accountId)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.agentId)));
        return jsonArray;
    }

    public void clear() {
        this.accountId = 0;
        this.agentId = 0;
    }

    public int getAccountId() {
        return this.accountId;
    }

    public int getAgentId() {
        return this.agentId;
    }

    public boolean isValid() {
        return this.accountId > 0 && this.agentId > 0;
    }

    public void setAccountId(int i10) {
        this.accountId = i10;
    }

    public void setAgentId(int i10) {
        this.agentId = i10;
    }

    public String toString() {
        StringBuilder sbC = b.c("DataToken{accountId=");
        sbC.append(this.accountId);
        sbC.append(", agentId=");
        return b.b(sbC, this.agentId, '}');
    }

    public DataToken(int i10, int i11) {
        this.accountId = i10;
        this.agentId = i11;
    }
}
