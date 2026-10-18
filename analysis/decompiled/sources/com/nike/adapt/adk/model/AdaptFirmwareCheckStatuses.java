package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptFirmwareModels.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptFirmwareCheckStatuses implements Parcelable {
    public static final Parcelable.Creator<AdaptFirmwareCheckStatuses> CREATOR = new Creator();
    private final AdaptFirmwareStatus leftStatus;
    private final AdaptFirmwareStatus rightStatus;

    /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
    public static final class Creator implements Parcelable.Creator<AdaptFirmwareCheckStatuses> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptFirmwareCheckStatuses createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptFirmwareCheckStatuses((AdaptFirmwareStatus) parcel.readParcelable(AdaptFirmwareCheckStatuses.class.getClassLoader()), (AdaptFirmwareStatus) parcel.readParcelable(AdaptFirmwareCheckStatuses.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptFirmwareCheckStatuses[] newArray(int i10) {
            return new AdaptFirmwareCheckStatuses[i10];
        }
    }

    public AdaptFirmwareCheckStatuses(AdaptFirmwareStatus adaptFirmwareStatus, AdaptFirmwareStatus adaptFirmwareStatus2) {
        h.j(adaptFirmwareStatus, "leftStatus");
        h.j(adaptFirmwareStatus2, "rightStatus");
        this.leftStatus = adaptFirmwareStatus;
        this.rightStatus = adaptFirmwareStatus2;
    }

    public static /* synthetic */ AdaptFirmwareCheckStatuses copy$default(AdaptFirmwareCheckStatuses adaptFirmwareCheckStatuses, AdaptFirmwareStatus adaptFirmwareStatus, AdaptFirmwareStatus adaptFirmwareStatus2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adaptFirmwareStatus = adaptFirmwareCheckStatuses.leftStatus;
        }
        if ((i10 & 2) != 0) {
            adaptFirmwareStatus2 = adaptFirmwareCheckStatuses.rightStatus;
        }
        return adaptFirmwareCheckStatuses.copy(adaptFirmwareStatus, adaptFirmwareStatus2);
    }

    public final AdaptFirmwareStatus component1() {
        return this.leftStatus;
    }

    public final AdaptFirmwareStatus component2() {
        return this.rightStatus;
    }

    public final AdaptFirmwareCheckStatuses copy(AdaptFirmwareStatus adaptFirmwareStatus, AdaptFirmwareStatus adaptFirmwareStatus2) {
        h.j(adaptFirmwareStatus, "leftStatus");
        h.j(adaptFirmwareStatus2, "rightStatus");
        return new AdaptFirmwareCheckStatuses(adaptFirmwareStatus, adaptFirmwareStatus2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptFirmwareCheckStatuses)) {
            return false;
        }
        AdaptFirmwareCheckStatuses adaptFirmwareCheckStatuses = (AdaptFirmwareCheckStatuses) obj;
        return h.c(this.leftStatus, adaptFirmwareCheckStatuses.leftStatus) && h.c(this.rightStatus, adaptFirmwareCheckStatuses.rightStatus);
    }

    public final AdaptFirmwareStatus getLeftStatus() {
        return this.leftStatus;
    }

    public final AdaptFirmwareStatus getRightStatus() {
        return this.rightStatus;
    }

    public int hashCode() {
        return this.rightStatus.hashCode() + (this.leftStatus.hashCode() * 31);
    }

    public String toString() {
        return "AdaptFirmwareCheckStatuses(leftStatus=" + this.leftStatus + ", rightStatus=" + this.rightStatus + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeParcelable(this.leftStatus, i10);
        parcel.writeParcelable(this.rightStatus, i10);
    }
}
