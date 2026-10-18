package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetCurrentFirmwareVersionsResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetCurrentFirmwareVersionsResult> CREATOR = new Creator();
    private final d eventUUID;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetCurrentFirmwareVersionsResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetCurrentFirmwareVersionsResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetCurrentFirmwareVersionsResult(d.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetCurrentFirmwareVersionsResult[] newArray(int i10) {
            return new GetCurrentFirmwareVersionsResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCurrentFirmwareVersionsResult(d dVar) {
        super(null);
        h.j(dVar, "eventUUID");
        this.eventUUID = dVar;
    }

    public static /* synthetic */ GetCurrentFirmwareVersionsResult copy$default(GetCurrentFirmwareVersionsResult getCurrentFirmwareVersionsResult, d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getCurrentFirmwareVersionsResult.getEventUUID();
        }
        return getCurrentFirmwareVersionsResult.copy(dVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final GetCurrentFirmwareVersionsResult copy(d dVar) {
        h.j(dVar, "eventUUID");
        return new GetCurrentFirmwareVersionsResult(dVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetCurrentFirmwareVersionsResult) && h.c(getEventUUID(), ((GetCurrentFirmwareVersionsResult) obj).getEventUUID());
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        return getEventUUID().hashCode();
    }

    public String toString() {
        return "GetCurrentFirmwareVersionsResult(eventUUID=" + getEventUUID() + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
    }
}
