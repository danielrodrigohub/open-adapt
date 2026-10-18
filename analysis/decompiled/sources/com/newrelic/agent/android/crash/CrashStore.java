package com.newrelic.agent.android.crash;

import com.newrelic.agent.android.payload.PayloadStore;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CrashStore extends PayloadStore<Crash> {
    @Override // com.newrelic.agent.android.payload.PayloadStore
    void clear();

    @Override // com.newrelic.agent.android.payload.PayloadStore
    int count();

    void delete(Crash crash);

    @Override // com.newrelic.agent.android.payload.PayloadStore
    List<Crash> fetchAll();

    boolean store(Crash crash);
}
