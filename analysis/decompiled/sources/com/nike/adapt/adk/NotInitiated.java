package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import ea.m;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NotInitiated extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<NotInitiated> CREATOR = new Creator();
    private final d eventUUID;
    private final m notInitiatedDevice;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<NotInitiated> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NotInitiated createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new NotInitiated(d.CREATOR.createFromParcel(parcel), (m) parcel.readParcelable(NotInitiated.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NotInitiated[] newArray(int i10) {
            return new NotInitiated[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotInitiated(d dVar, m mVar) {
        super(dVar, Shoe.BOTH, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(mVar, "notInitiatedDevice");
        this.eventUUID = dVar;
        this.notInitiatedDevice = mVar;
    }

    public static /* synthetic */ NotInitiated copy$default(NotInitiated notInitiated, d dVar, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = notInitiated.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            mVar = notInitiated.notInitiatedDevice;
        }
        return notInitiated.copy(dVar, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final m component2() {
        return this.notInitiatedDevice;
    }

    public final NotInitiated copy(d dVar, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(mVar, "notInitiatedDevice");
        return new NotInitiated(dVar, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotInitiated)) {
            return false;
        }
        NotInitiated notInitiated = (NotInitiated) obj;
        return h.c(getEventUUID(), notInitiated.getEventUUID()) && h.c(this.notInitiatedDevice, notInitiated.notInitiatedDevice);
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final m getNotInitiatedDevice() {
        return this.notInitiatedDevice;
    }

    public int hashCode() {
        return this.notInitiatedDevice.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "NotInitiated(eventUUID=" + getEventUUID() + ", notInitiatedDevice=" + this.notInitiatedDevice + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.notInitiatedDevice, i10);
    }
}
