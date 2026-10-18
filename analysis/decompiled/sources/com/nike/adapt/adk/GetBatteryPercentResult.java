package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.Battery;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetBatteryPercentResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetBatteryPercentResult> CREATOR = new Creator();
    private final Battery battery;
    private final d eventUUID;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetBatteryPercentResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetBatteryPercentResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetBatteryPercentResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), Battery.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetBatteryPercentResult[] newArray(int i10) {
            return new GetBatteryPercentResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetBatteryPercentResult(d dVar, Shoe shoe, Battery battery) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(battery, "battery");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.battery = battery;
    }

    public static /* synthetic */ GetBatteryPercentResult copy$default(GetBatteryPercentResult getBatteryPercentResult, d dVar, Shoe shoe, Battery battery, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getBatteryPercentResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getBatteryPercentResult.shoe;
        }
        if ((i10 & 4) != 0) {
            battery = getBatteryPercentResult.battery;
        }
        return getBatteryPercentResult.copy(dVar, shoe, battery);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final Battery component3() {
        return this.battery;
    }

    public final GetBatteryPercentResult copy(d dVar, Shoe shoe, Battery battery) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(battery, "battery");
        return new GetBatteryPercentResult(dVar, shoe, battery);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetBatteryPercentResult)) {
            return false;
        }
        GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) obj;
        return h.c(getEventUUID(), getBatteryPercentResult.getEventUUID()) && this.shoe == getBatteryPercentResult.shoe && h.c(this.battery, getBatteryPercentResult.battery);
    }

    public final Battery getBattery() {
        return this.battery;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.battery.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        Battery battery = this.battery;
        StringBuilder sbG = r0.g("GetBatteryPercentResult(eventUUID=", eventUUID, ", shoe=", shoe, ", battery=");
        sbG.append(battery);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        this.battery.writeToParcel(parcel, i10);
    }
}
