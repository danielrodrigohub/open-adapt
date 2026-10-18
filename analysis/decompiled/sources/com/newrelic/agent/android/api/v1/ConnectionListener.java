package com.newrelic.agent.android.api.v1;

/* JADX INFO: loaded from: classes.dex */
public interface ConnectionListener {
    void connected(ConnectionEvent connectionEvent);

    void disconnected(ConnectionEvent connectionEvent);
}
