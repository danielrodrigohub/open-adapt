package com.newrelic.agent.android.background;

/* JADX INFO: loaded from: classes.dex */
public interface ApplicationStateListener {
    void applicationBackgrounded(ApplicationStateEvent applicationStateEvent);

    void applicationForegrounded(ApplicationStateEvent applicationStateEvent);
}
