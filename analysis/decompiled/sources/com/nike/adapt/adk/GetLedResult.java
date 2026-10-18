package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetLedResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetLedResult> CREATOR = new Creator();
    private final d eventUUID;
    private final Shoe shoe;
    private final AdaptDeviceColor shoeLed;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetLedResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetLedResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetLedResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptDeviceColor.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetLedResult[] newArray(int i10) {
            return new GetLedResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetLedResult(d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptDeviceColor, "shoeLed");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.shoeLed = adaptDeviceColor;
    }

    public static /* synthetic */ GetLedResult copy$default(GetLedResult getLedResult, d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getLedResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getLedResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptDeviceColor = getLedResult.shoeLed;
        }
        return getLedResult.copy(dVar, shoe, adaptDeviceColor);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final AdaptDeviceColor component3() {
        return this.shoeLed;
    }

    public final GetLedResult copy(d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptDeviceColor, "shoeLed");
        return new GetLedResult(dVar, shoe, adaptDeviceColor);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetLedResult)) {
            return false;
        }
        GetLedResult getLedResult = (GetLedResult) obj;
        return h.c(getEventUUID(), getLedResult.getEventUUID()) && this.shoe == getLedResult.shoe && h.c(this.shoeLed, getLedResult.shoeLed);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public final AdaptDeviceColor getShoeLed() {
        return this.shoeLed;
    }

    public int hashCode() {
        return this.shoeLed.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        AdaptDeviceColor adaptDeviceColor = this.shoeLed;
        StringBuilder sbG = r0.g("GetLedResult(eventUUID=", eventUUID, ", shoe=", shoe, ", shoeLed=");
        sbG.append(adaptDeviceColor);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        this.shoeLed.writeToParcel(parcel, i10);
    }
}
