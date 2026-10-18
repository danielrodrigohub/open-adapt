package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LaceTightenResult extends DeviceControllerResult {
    public static final Parcelable.Creator<LaceTightenResult> CREATOR = new Creator();
    private final d eventUUID;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<LaceTightenResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LaceTightenResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new LaceTightenResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LaceTightenResult[] newArray(int i10) {
            return new LaceTightenResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaceTightenResult(d dVar, Shoe shoe) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        this.eventUUID = dVar;
        this.shoe = shoe;
    }

    public static /* synthetic */ LaceTightenResult copy$default(LaceTightenResult laceTightenResult, d dVar, Shoe shoe, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = laceTightenResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = laceTightenResult.shoe;
        }
        return laceTightenResult.copy(dVar, shoe);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final LaceTightenResult copy(d dVar, Shoe shoe) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        return new LaceTightenResult(dVar, shoe);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LaceTightenResult)) {
            return false;
        }
        LaceTightenResult laceTightenResult = (LaceTightenResult) obj;
        return h.c(getEventUUID(), laceTightenResult.getEventUUID()) && this.shoe == laceTightenResult.shoe;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.shoe.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "LaceTightenResult(eventUUID=" + getEventUUID() + ", shoe=" + this.shoe + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
    }
}
