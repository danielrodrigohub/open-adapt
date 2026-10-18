package com.newrelic.agent.android.util;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public class UiBackgroundListener implements ComponentCallbacks2 {
    public final ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("UiBackgroundListener"));

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        if (i10 != 20) {
            return;
        }
        this.executor.submit(new Runnable() { // from class: com.newrelic.agent.android.util.UiBackgroundListener.1
            @Override // java.lang.Runnable
            public void run() {
                ApplicationStateMonitor.getInstance().uiHidden();
            }
        });
    }
}
