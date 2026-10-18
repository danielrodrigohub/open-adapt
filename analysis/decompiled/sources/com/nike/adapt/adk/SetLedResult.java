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
public final class SetLedResult extends DeviceControllerResult {
    public static final Parcelable.Creator<SetLedResult> CREATOR = new Creator();
    private final d eventUUID;
    private final Shoe shoe;
    private final AdaptDeviceColor shoeLed;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<SetLedResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetLedResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new SetLedResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptDeviceColor.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetLedResult[] newArray(int i10) {
            return new SetLedResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetLedResult(d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptDeviceColor, "shoeLed");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.shoeLed = adaptDeviceColor;
    }

    public static /* synthetic */ SetLedResult copy$default(SetLedResult setLedResult, d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = setLedResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = setLedResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptDeviceColor = setLedResult.shoeLed;
        }
        return setLedResult.copy(dVar, shoe, adaptDeviceColor);
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

    public final SetLedResult copy(d dVar, Shoe shoe, AdaptDeviceColor adaptDeviceColor) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptDeviceColor, "shoeLed");
        return new SetLedResult(dVar, shoe, adaptDeviceColor);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetLedResult)) {
            return false;
        }
        SetLedResult setLedResult = (SetLedResult) obj;
        return h.c(getEventUUID(), setLedResult.getEventUUID()) && this.shoe == setLedResult.shoe && h.c(this.shoeLed, setLedResult.shoeLed);
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
        StringBuilder sbG = r0.g("SetLedResult(eventUUID=", eventUUID, ", shoe=", shoe, ", shoeLed=");
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
