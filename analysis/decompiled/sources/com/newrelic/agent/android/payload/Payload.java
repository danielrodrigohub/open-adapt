package com.newrelic.agent.android.payload;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonObject;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Payload {
    private boolean isPersistable;
    private ByteBuffer payload;
    private final long timestamp;
    private final String uuid;

    public Payload() {
        this.isPersistable = true;
        this.timestamp = System.currentTimeMillis();
        this.uuid = UUID.randomUUID().toString();
        this.isPersistable = true;
    }

    public String asJsonMeta() {
        return asJsonObject().toString();
    }

    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, SafeJsonPrimitive.factory(Long.valueOf(this.timestamp)));
        jsonObject.add(AnalyticsAttribute.UUID_ATTRIBUTE, SafeJsonPrimitive.factory(this.uuid));
        return jsonObject;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Payload)) {
            return false;
        }
        return this.uuid.equalsIgnoreCase(((Payload) obj).uuid);
    }

    public byte[] getBytes() {
        return this.payload.array();
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getUuid() {
        return this.uuid;
    }

    public boolean isPersisted() {
        return this.isPersistable;
    }

    public boolean isStale(long j10) {
        return this.timestamp + j10 <= System.currentTimeMillis();
    }

    public void putBytes(byte[] bArr) {
        this.payload = ByteBuffer.wrap(bArr);
    }

    public void setPersisted(boolean z10) {
        this.isPersistable = z10;
    }

    public Payload(byte[] bArr) {
        this();
        this.payload = ByteBuffer.wrap(bArr);
    }
}
