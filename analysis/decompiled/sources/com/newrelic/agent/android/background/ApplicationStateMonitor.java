package com.newrelic.agent.android.background;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationStateMonitor {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static ApplicationStateMonitor instance = null;
    public final ArrayList<ApplicationStateListener> applicationStateListeners = new ArrayList<>();
    public AtomicBoolean foregrounded = new AtomicBoolean(true);
    private AtomicLong activityCount = new AtomicLong(0);
    public final ExecutorService executor = Executors.newSingleThreadExecutor(new NamedThreadFactory("AppStateMon"));

    public ApplicationStateMonitor() {
        log.info("Application state monitor has started");
    }

    public static ApplicationStateMonitor getInstance() {
        if (instance == null) {
            setInstance(new ApplicationStateMonitor());
        }
        return instance;
    }

    public static boolean isAppInBackground() {
        return !getInstance().getForegrounded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyApplicationInBackground() {
        ArrayList arrayList;
        log.verbose("Application appears to have gone to the background");
        synchronized (this.applicationStateListeners) {
            arrayList = new ArrayList(this.applicationStateListeners);
        }
        ApplicationStateEvent applicationStateEvent = new ApplicationStateEvent(this);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ApplicationStateListener) it.next()).applicationBackgrounded(applicationStateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyApplicationInForeground() {
        ArrayList arrayList;
        synchronized (this.applicationStateListeners) {
            arrayList = new ArrayList(this.applicationStateListeners);
        }
        ApplicationStateEvent applicationStateEvent = new ApplicationStateEvent(this);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ApplicationStateListener) it.next()).applicationForegrounded(applicationStateEvent);
        }
    }

    public static void setInstance(ApplicationStateMonitor applicationStateMonitor) {
        instance = applicationStateMonitor;
    }

    public void activityStarted() {
        this.executor.execute(new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.3
            @Override // java.lang.Runnable
            public void run() {
                if (ApplicationStateMonitor.this.activityCount.incrementAndGet() != 1 || ApplicationStateMonitor.this.foregrounded.get()) {
                    return;
                }
                ApplicationStateMonitor.this.foregrounded.set(true);
                ApplicationStateMonitor.this.notifyApplicationInForeground();
            }
        });
    }

    public void activityStopped() {
        this.executor.execute(new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.2
            @Override // java.lang.Runnable
            public void run() {
                if (ApplicationStateMonitor.this.activityCount.decrementAndGet() == 0) {
                    ApplicationStateMonitor.this.uiHidden();
                }
            }
        });
    }

    public void addApplicationStateListener(ApplicationStateListener applicationStateListener) {
        synchronized (this.applicationStateListeners) {
            this.applicationStateListeners.add(applicationStateListener);
        }
    }

    public ExecutorService getExecutor() {
        return this.executor;
    }

    public boolean getForegrounded() {
        return this.foregrounded.get();
    }

    public void removeApplicationStateListener(ApplicationStateListener applicationStateListener) {
        synchronized (this.applicationStateListeners) {
            this.applicationStateListeners.remove(applicationStateListener);
        }
    }

    public void uiHidden() {
        this.executor.execute(new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.1
            @Override // java.lang.Runnable
            public void run() {
                if (ApplicationStateMonitor.this.foregrounded.get()) {
                    ApplicationStateMonitor.log.info("UI has become hidden (app backgrounded)");
                    ApplicationStateMonitor.this.notifyApplicationInBackground();
                    ApplicationStateMonitor.this.foregrounded.set(false);
                }
            }
        });
    }
}
