package com.newrelic.com.google.gson;

/* JADX INFO: loaded from: classes.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.newrelic.com.google.gson.LongSerializationPolicy.1
        @Override // com.newrelic.com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l10) {
            return new JsonPrimitive((Number) l10);
        }
    },
    STRING { // from class: com.newrelic.com.google.gson.LongSerializationPolicy.2
        @Override // com.newrelic.com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l10) {
            return new JsonPrimitive(String.valueOf(l10));
        }
    };

    public abstract JsonElement serialize(Long l10);
}
