package com.newrelic.agent.android.measurement;

import a0.b;

/* JADX INFO: loaded from: classes.dex */
public class ThreadInfo {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private long f5633id;
    private String name;

    public ThreadInfo() {
        this(Thread.currentThread());
    }

    public static ThreadInfo fromThread(Thread thread) {
        return new ThreadInfo(thread);
    }

    public long getId() {
        return this.f5633id;
    }

    public String getName() {
        return this.name;
    }

    public void setId(long j10) {
        this.f5633id = j10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        StringBuilder sbC = b.c("ThreadInfo{id=");
        sbC.append(this.f5633id);
        sbC.append(", name='");
        sbC.append(this.name);
        sbC.append('\'');
        sbC.append('}');
        return sbC.toString();
    }

    public ThreadInfo(long j10, String str) {
        this.f5633id = j10;
        this.name = str;
    }

    public ThreadInfo(Thread thread) {
        this(thread.getId(), thread.getName());
    }
}
