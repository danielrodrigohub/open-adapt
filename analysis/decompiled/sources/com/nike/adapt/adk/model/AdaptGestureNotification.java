package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptGestureNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptGestureNotification implements Parcelable {
    public static final Parcelable.Creator<AdaptGestureNotification> CREATOR = new Creator();
    private final AdaptGestureConfiguration gestureConfiguration;
    private final long timestamp;

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class Creator implements Parcelable.Creator<AdaptGestureNotification> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureNotification createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptGestureNotification(parcel.readLong(), (AdaptGestureConfiguration) parcel.readParcelable(AdaptGestureNotification.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureNotification[] newArray(int i10) {
            return new AdaptGestureNotification[i10];
        }
    }

    public AdaptGestureNotification(long j10, AdaptGestureConfiguration adaptGestureConfiguration) {
        h.j(adaptGestureConfiguration, "gestureConfiguration");
        this.timestamp = j10;
        this.gestureConfiguration = adaptGestureConfiguration;
    }

    public static /* synthetic */ AdaptGestureNotification copy$default(AdaptGestureNotification adaptGestureNotification, long j10, AdaptGestureConfiguration adaptGestureConfiguration, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = adaptGestureNotification.timestamp;
        }
        if ((i10 & 2) != 0) {
            adaptGestureConfiguration = adaptGestureNotification.gestureConfiguration;
        }
        return adaptGestureNotification.copy(j10, adaptGestureConfiguration);
    }

    public final long component1() {
        return this.timestamp;
    }

    public final AdaptGestureConfiguration component2() {
        return this.gestureConfiguration;
    }

    public final AdaptGestureNotification copy(long j10, AdaptGestureConfiguration adaptGestureConfiguration) {
        h.j(adaptGestureConfiguration, "gestureConfiguration");
        return new AdaptGestureNotification(j10, adaptGestureConfiguration);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptGestureNotification)) {
            return false;
        }
        AdaptGestureNotification adaptGestureNotification = (AdaptGestureNotification) obj;
        return this.timestamp == adaptGestureNotification.timestamp && h.c(this.gestureConfiguration, adaptGestureNotification.gestureConfiguration);
    }

    public final AdaptGestureConfiguration getGestureConfiguration() {
        return this.gestureConfiguration;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return this.gestureConfiguration.hashCode() + (Long.hashCode(this.timestamp) * 31);
    }

    public String toString() {
        return "AdaptGestureNotification(timestamp=" + this.timestamp + ", gestureConfiguration=" + this.gestureConfiguration + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeLong(this.timestamp);
        parcel.writeParcelable(this.gestureConfiguration, i10);
    }
}
