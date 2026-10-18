package com.newrelic.agent.android.stores;

import android.content.Context;
import com.newrelic.agent.android.payload.Payload;
import com.newrelic.agent.android.payload.PayloadStore;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SharedPrefsPayloadStore extends SharedPrefsStore implements PayloadStore<Payload> {
    public static final String STORE_FILE = "NRPayloadStore";

    public SharedPrefsPayloadStore(Context context) {
        this(context, STORE_FILE);
    }

    private String toJsonString(Payload payload) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("payload", payload.asJsonMeta());
        jsonObject.addProperty("encodedPayload", encodePayload(payload));
        return jsonObject.toString();
    }

    public byte[] decodePayload(String str) {
        return decodeStringToBytes(str);
    }

    public String decodePayloadToString(byte[] bArr) {
        return decodeBytesToString(bArr);
    }

    public String encodePayload(Payload payload) {
        return encodeBytes(payload.getBytes());
    }

    @Override // com.newrelic.agent.android.stores.SharedPrefsStore, com.newrelic.agent.android.analytics.AnalyticsAttributeStore, com.newrelic.agent.android.payload.PayloadStore
    public List<Payload> fetchAll() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : super.fetchAll()) {
            try {
                if (obj instanceof String) {
                    JsonObject jsonObject = (JsonObject) new Gson().fromJson((String) obj, JsonObject.class);
                    Payload payload = (Payload) new Gson().fromJson(jsonObject.get("payload").getAsString(), Payload.class);
                    payload.putBytes(decodePayload(jsonObject.get("encodedPayload").toString()));
                    arrayList.add(payload);
                } else if (obj instanceof HashSet) {
                    Iterator it = ((HashSet) obj).iterator();
                    ((Payload) new Gson().fromJson((String) it.next(), Payload.class)).putBytes(decodePayload((String) it.next()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return arrayList;
    }

    public SharedPrefsPayloadStore(Context context, String str) {
        super(context, str);
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public void delete(Payload payload) {
        super.delete(payload.getUuid());
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public boolean store(Payload payload) {
        return super.store(payload.getUuid(), toJsonString(payload));
    }
}
