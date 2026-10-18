package com.newrelic.agent.android.payload;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PayloadStore<T> {
    void clear();

    int count();

    void delete(T t10);

    List<T> fetchAll();

    boolean store(T t10);
}
