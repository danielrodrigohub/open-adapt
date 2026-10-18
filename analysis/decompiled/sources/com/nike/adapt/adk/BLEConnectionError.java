package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import ea.m;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BLEConnectionError extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<BLEConnectionError> CREATOR = new Creator();
    private final m BleErrorDevice;
    private final d eventUUID;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<BLEConnectionError> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BLEConnectionError createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new BLEConnectionError(d.CREATOR.createFromParcel(parcel), (m) parcel.readParcelable(BLEConnectionError.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BLEConnectionError[] newArray(int i10) {
            return new BLEConnectionError[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLEConnectionError(d dVar, m mVar) {
        super(dVar, Shoe.BOTH, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(mVar, "BleErrorDevice");
        this.eventUUID = dVar;
        this.BleErrorDevice = mVar;
    }

    public static /* synthetic */ BLEConnectionError copy$default(BLEConnectionError bLEConnectionError, d dVar, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = bLEConnectionError.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            mVar = bLEConnectionError.BleErrorDevice;
        }
        return bLEConnectionError.copy(dVar, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final m component2() {
        return this.BleErrorDevice;
    }

    public final BLEConnectionError copy(d dVar, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(mVar, "BleErrorDevice");
        return new BLEConnectionError(dVar, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BLEConnectionError)) {
            return false;
        }
        BLEConnectionError bLEConnectionError = (BLEConnectionError) obj;
        return h.c(getEventUUID(), bLEConnectionError.getEventUUID()) && h.c(this.BleErrorDevice, bLEConnectionError.BleErrorDevice);
    }

    public final m getBleErrorDevice() {
        return this.BleErrorDevice;
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        return this.BleErrorDevice.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "BLEConnectionError(eventUUID=" + getEventUUID() + ", BleErrorDevice=" + this.BleErrorDevice + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.BleErrorDevice, i10);
    }
}
