package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetDeviceStatsResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetDeviceStatsResult> CREATOR = new Creator();
    private final d eventUUID;
    private final Shoe shoe;
    private final a8.d shoeStats;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetDeviceStatsResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetDeviceStatsResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetDeviceStatsResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), (a8.d) parcel.readValue(GetDeviceStatsResult.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetDeviceStatsResult[] newArray(int i10) {
            return new GetDeviceStatsResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetDeviceStatsResult(d dVar, Shoe shoe, a8.d dVar2) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(dVar2, "shoeStats");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.shoeStats = dVar2;
    }

    public static /* synthetic */ GetDeviceStatsResult copy$default(GetDeviceStatsResult getDeviceStatsResult, d dVar, Shoe shoe, a8.d dVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getDeviceStatsResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getDeviceStatsResult.shoe;
        }
        if ((i10 & 4) != 0) {
            dVar2 = getDeviceStatsResult.shoeStats;
        }
        return getDeviceStatsResult.copy(dVar, shoe, dVar2);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final a8.d component3() {
        return this.shoeStats;
    }

    public final GetDeviceStatsResult copy(d dVar, Shoe shoe, a8.d dVar2) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(dVar2, "shoeStats");
        return new GetDeviceStatsResult(dVar, shoe, dVar2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetDeviceStatsResult)) {
            return false;
        }
        GetDeviceStatsResult getDeviceStatsResult = (GetDeviceStatsResult) obj;
        return h.c(getEventUUID(), getDeviceStatsResult.getEventUUID()) && this.shoe == getDeviceStatsResult.shoe && h.c(this.shoeStats, getDeviceStatsResult.shoeStats);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public final a8.d getShoeStats() {
        return this.shoeStats;
    }

    public int hashCode() {
        return this.shoeStats.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        a8.d dVar = this.shoeStats;
        StringBuilder sbG = r0.g("GetDeviceStatsResult(eventUUID=", eventUUID, ", shoe=", shoe, ", shoeStats=");
        sbG.append(dVar);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeValue(this.shoeStats);
    }
}
