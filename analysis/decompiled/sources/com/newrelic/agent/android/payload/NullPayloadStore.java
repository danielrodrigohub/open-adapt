package com.newrelic.agent.android.payload;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NullPayloadStore<T> implements PayloadStore<T> {
    @Override // com.newrelic.agent.android.payload.PayloadStore
    public void clear() {
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public int count() {
        return 0;
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public void delete(T t10) {
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public List<T> fetchAll() {
        return new ArrayList();
    }

    @Override // com.newrelic.agent.android.payload.PayloadStore
    public boolean store(T t10) {
        return true;
    }
}
