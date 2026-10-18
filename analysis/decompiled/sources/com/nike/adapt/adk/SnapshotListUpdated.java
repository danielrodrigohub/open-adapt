package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import ea.m;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SnapshotListUpdated extends DeviceControllerResult {
    public static final Parcelable.Creator<SnapshotListUpdated> CREATOR = new Creator();
    private final m device;
    private final d eventUUID;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<SnapshotListUpdated> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SnapshotListUpdated createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new SnapshotListUpdated(d.CREATOR.createFromParcel(parcel), (m) parcel.readParcelable(SnapshotListUpdated.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SnapshotListUpdated[] newArray(int i10) {
            return new SnapshotListUpdated[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotListUpdated(d dVar, m mVar) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(mVar, "device");
        this.eventUUID = dVar;
        this.device = mVar;
    }

    public static /* synthetic */ SnapshotListUpdated copy$default(SnapshotListUpdated snapshotListUpdated, d dVar, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = snapshotListUpdated.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            mVar = snapshotListUpdated.device;
        }
        return snapshotListUpdated.copy(dVar, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final m component2() {
        return this.device;
    }

    public final SnapshotListUpdated copy(d dVar, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(mVar, "device");
        return new SnapshotListUpdated(dVar, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SnapshotListUpdated)) {
            return false;
        }
        SnapshotListUpdated snapshotListUpdated = (SnapshotListUpdated) obj;
        return h.c(getEventUUID(), snapshotListUpdated.getEventUUID()) && h.c(this.device, snapshotListUpdated.device);
    }

    public final m getDevice() {
        return this.device;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        return this.device.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "SnapshotListUpdated(eventUUID=" + getEventUUID() + ", device=" + this.device + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.device, i10);
    }
}
