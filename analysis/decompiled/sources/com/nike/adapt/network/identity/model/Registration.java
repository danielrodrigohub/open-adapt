package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Registration {

    @b(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE)
    private final Long timestamp;

    public Registration(Long l10) {
        this.timestamp = l10;
    }

    public static /* synthetic */ Registration copy$default(Registration registration, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = registration.timestamp;
        }
        return registration.copy(l10);
    }

    public final Long component1() {
        return this.timestamp;
    }

    public final Registration copy(Long l10) {
        return new Registration(l10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Registration) && h.c(this.timestamp, ((Registration) obj).timestamp);
    }

    public final Long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        Long l10 = this.timestamp;
        if (l10 == null) {
            return 0;
        }
        return l10.hashCode();
    }

    public String toString() {
        return "Registration(timestamp=" + this.timestamp + ")";
    }
}
