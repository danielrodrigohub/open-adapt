package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.model.AdaptFirmwareCheckStatuses;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetFirmwareVersionResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetFirmwareVersionResult> CREATOR = new Creator();
    private final d eventUUID;
    private final AdaptFirmwareCheckStatuses firmwareStatus;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetFirmwareVersionResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetFirmwareVersionResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetFirmwareVersionResult(d.CREATOR.createFromParcel(parcel), AdaptFirmwareCheckStatuses.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetFirmwareVersionResult[] newArray(int i10) {
            return new GetFirmwareVersionResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetFirmwareVersionResult(d dVar, AdaptFirmwareCheckStatuses adaptFirmwareCheckStatuses) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(adaptFirmwareCheckStatuses, "firmwareStatus");
        this.eventUUID = dVar;
        this.firmwareStatus = adaptFirmwareCheckStatuses;
    }

    public static /* synthetic */ GetFirmwareVersionResult copy$default(GetFirmwareVersionResult getFirmwareVersionResult, d dVar, AdaptFirmwareCheckStatuses adaptFirmwareCheckStatuses, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getFirmwareVersionResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            adaptFirmwareCheckStatuses = getFirmwareVersionResult.firmwareStatus;
        }
        return getFirmwareVersionResult.copy(dVar, adaptFirmwareCheckStatuses);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final AdaptFirmwareCheckStatuses component2() {
        return this.firmwareStatus;
    }

    public final GetFirmwareVersionResult copy(d dVar, AdaptFirmwareCheckStatuses adaptFirmwareCheckStatuses) {
        h.j(dVar, "eventUUID");
        h.j(adaptFirmwareCheckStatuses, "firmwareStatus");
        return new GetFirmwareVersionResult(dVar, adaptFirmwareCheckStatuses);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetFirmwareVersionResult)) {
            return false;
        }
        GetFirmwareVersionResult getFirmwareVersionResult = (GetFirmwareVersionResult) obj;
        return h.c(getEventUUID(), getFirmwareVersionResult.getEventUUID()) && h.c(this.firmwareStatus, getFirmwareVersionResult.firmwareStatus);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final AdaptFirmwareCheckStatuses getFirmwareStatus() {
        return this.firmwareStatus;
    }

    public int hashCode() {
        return this.firmwareStatus.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "GetFirmwareVersionResult(eventUUID=" + getEventUUID() + ", firmwareStatus=" + this.firmwareStatus + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        this.firmwareStatus.writeToParcel(parcel, i10);
    }
}
