package com.newrelic.agent.android.harvest;

/* JADX INFO: loaded from: classes.dex */
public interface HarvestLifecycleAware {
    void onHarvest();

    void onHarvestBefore();

    void onHarvestComplete();

    void onHarvestConnected();

    void onHarvestDisabled();

    void onHarvestDisconnected();

    void onHarvestError();

    void onHarvestFinalize();

    void onHarvestSendFailed();

    void onHarvestStart();

    void onHarvestStop();
}
