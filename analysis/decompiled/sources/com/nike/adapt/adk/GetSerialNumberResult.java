package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetSerialNumberResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetSerialNumberResult> CREATOR = new Creator();
    private final d eventUUID;
    private final String serialNumber;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetSerialNumberResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetSerialNumberResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetSerialNumberResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetSerialNumberResult[] newArray(int i10) {
            return new GetSerialNumberResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSerialNumberResult(d dVar, Shoe shoe, String str) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(str, "serialNumber");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.serialNumber = str;
    }

    public static /* synthetic */ GetSerialNumberResult copy$default(GetSerialNumberResult getSerialNumberResult, d dVar, Shoe shoe, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getSerialNumberResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getSerialNumberResult.shoe;
        }
        if ((i10 & 4) != 0) {
            str = getSerialNumberResult.serialNumber;
        }
        return getSerialNumberResult.copy(dVar, shoe, str);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final String component3() {
        return this.serialNumber;
    }

    public final GetSerialNumberResult copy(d dVar, Shoe shoe, String str) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(str, "serialNumber");
        return new GetSerialNumberResult(dVar, shoe, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetSerialNumberResult)) {
            return false;
        }
        GetSerialNumberResult getSerialNumberResult = (GetSerialNumberResult) obj;
        return h.c(getEventUUID(), getSerialNumberResult.getEventUUID()) && this.shoe == getSerialNumberResult.shoe && h.c(this.serialNumber, getSerialNumberResult.serialNumber);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final String getSerialNumber() {
        return this.serialNumber;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.serialNumber.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        return f.d(r0.g("GetSerialNumberResult(eventUUID=", eventUUID, ", shoe=", shoe, ", serialNumber="), this.serialNumber, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeString(this.serialNumber);
    }
}
