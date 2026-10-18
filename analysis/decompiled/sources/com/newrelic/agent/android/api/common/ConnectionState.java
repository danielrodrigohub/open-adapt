package com.newrelic.agent.android.api.common;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionState {
    public static final ConnectionState NULL = new ConnectionState();
    private final boolean collectingNetworkErrors;
    private final String crossProcessId;
    private final Object dataToken;
    private final int errorLimit;
    private final long harvestInterval;
    private final TimeUnit harvestIntervalTimeUnit;
    private final long maxTransactionAge;
    private final TimeUnit maxTransactionAgeTimeUnit;
    private final long maxTransactionCount;
    private final int responseBodyLimit;
    private final long serverTimestamp;
    private final int stackTraceLimit;

    private ConnectionState() {
        this.dataToken = null;
        this.crossProcessId = null;
        this.serverTimestamp = 0L;
        this.harvestInterval = 60L;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.harvestIntervalTimeUnit = timeUnit;
        this.maxTransactionAge = 600L;
        this.maxTransactionAgeTimeUnit = timeUnit;
        this.maxTransactionCount = 1000L;
        this.stackTraceLimit = 50;
        this.responseBodyLimit = 1024;
        this.collectingNetworkErrors = true;
        this.errorLimit = 10;
    }

    public String getCrossProcessId() {
        return this.crossProcessId;
    }

    public Object getDataToken() {
        return this.dataToken;
    }

    public int getErrorLimit() {
        return this.errorLimit;
    }

    public long getHarvestIntervalInMilliseconds() {
        return TimeUnit.MILLISECONDS.convert(this.harvestInterval, this.harvestIntervalTimeUnit);
    }

    public long getHarvestIntervalInSeconds() {
        return TimeUnit.SECONDS.convert(this.harvestInterval, this.harvestIntervalTimeUnit);
    }

    public long getMaxTransactionAgeInMilliseconds() {
        return TimeUnit.MILLISECONDS.convert(this.maxTransactionAge, this.maxTransactionAgeTimeUnit);
    }

    public long getMaxTransactionAgeInSeconds() {
        return TimeUnit.SECONDS.convert(this.maxTransactionAge, this.maxTransactionAgeTimeUnit);
    }

    public long getMaxTransactionCount() {
        return this.maxTransactionCount;
    }

    public int getResponseBodyLimit() {
        return this.responseBodyLimit;
    }

    public long getServerTimestamp() {
        return this.serverTimestamp;
    }

    public int getStackTraceLimit() {
        return this.stackTraceLimit;
    }

    public boolean isCollectingNetworkErrors() {
        return this.collectingNetworkErrors;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.dataToken);
        return sb2.toString();
    }

    public ConnectionState(Object obj, String str, long j10, long j11, TimeUnit timeUnit, long j12, TimeUnit timeUnit2, long j13, int i10, int i11, boolean z10, int i12) {
        this.dataToken = obj;
        this.crossProcessId = str;
        this.serverTimestamp = j10;
        this.harvestInterval = j11;
        this.harvestIntervalTimeUnit = timeUnit;
        this.maxTransactionAge = j12;
        this.maxTransactionAgeTimeUnit = timeUnit2;
        this.maxTransactionCount = j13;
        this.stackTraceLimit = i10;
        this.responseBodyLimit = i11;
        this.collectingNetworkErrors = z10;
        this.errorLimit = i12;
    }
}
