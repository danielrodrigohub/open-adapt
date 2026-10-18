package com.newrelic.agent.android.instrumentation.io;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class StreamCompleteListenerManager {
    private boolean streamComplete = false;
    private ArrayList<StreamCompleteListener> streamCompleteListeners = new ArrayList<>();

    private boolean checkComplete() {
        boolean zIsComplete;
        synchronized (this) {
            zIsComplete = isComplete();
            if (!zIsComplete) {
                this.streamComplete = true;
            }
        }
        return zIsComplete;
    }

    private List<StreamCompleteListener> getStreamCompleteListeners() {
        ArrayList arrayList;
        synchronized (this.streamCompleteListeners) {
            arrayList = new ArrayList(this.streamCompleteListeners);
            this.streamCompleteListeners.clear();
        }
        return arrayList;
    }

    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        synchronized (this.streamCompleteListeners) {
            this.streamCompleteListeners.add(streamCompleteListener);
        }
    }

    public boolean isComplete() {
        boolean z10;
        synchronized (this) {
            z10 = this.streamComplete;
        }
        return z10;
    }

    public void notifyStreamComplete(StreamCompleteEvent streamCompleteEvent) {
        if (checkComplete()) {
            return;
        }
        Iterator<StreamCompleteListener> it = getStreamCompleteListeners().iterator();
        while (it.hasNext()) {
            it.next().streamComplete(streamCompleteEvent);
        }
    }

    public void notifyStreamError(StreamCompleteEvent streamCompleteEvent) {
        if (checkComplete()) {
            return;
        }
        Iterator<StreamCompleteListener> it = getStreamCompleteListeners().iterator();
        while (it.hasNext()) {
            it.next().streamError(streamCompleteEvent);
        }
    }

    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        synchronized (this.streamCompleteListeners) {
            this.streamCompleteListeners.remove(streamCompleteListener);
        }
    }
}
