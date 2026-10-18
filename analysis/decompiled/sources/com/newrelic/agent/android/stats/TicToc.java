package com.newrelic.agent.android.stats;

/* JADX INFO: loaded from: classes.dex */
public class TicToc {
    private long endTime;
    private long startTime;
    private State state;

    public enum State {
        STOPPED,
        STARTED
    }

    public long peek() {
        if (this.state == State.STARTED) {
            return System.currentTimeMillis() - this.startTime;
        }
        return 0L;
    }

    public void tic() {
        this.state = State.STARTED;
        this.startTime = System.currentTimeMillis();
    }

    public long toc() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.endTime = jCurrentTimeMillis;
        if (this.state != State.STARTED) {
            return -1L;
        }
        this.state = State.STOPPED;
        return jCurrentTimeMillis - this.startTime;
    }
}
