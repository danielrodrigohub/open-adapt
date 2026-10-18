package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetAutoLaceResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetAutoLaceResult> CREATOR = new Creator();
    private final d eventUUID;
    private final int percent;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetAutoLaceResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetAutoLaceResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetAutoLaceResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetAutoLaceResult[] newArray(int i10) {
            return new GetAutoLaceResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAutoLaceResult(d dVar, Shoe shoe, int i10) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.percent = i10;
    }

    public static /* synthetic */ GetAutoLaceResult copy$default(GetAutoLaceResult getAutoLaceResult, d dVar, Shoe shoe, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            dVar = getAutoLaceResult.getEventUUID();
        }
        if ((i11 & 2) != 0) {
            shoe = getAutoLaceResult.shoe;
        }
        if ((i11 & 4) != 0) {
            i10 = getAutoLaceResult.percent;
        }
        return getAutoLaceResult.copy(dVar, shoe, i10);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final int component3() {
        return this.percent;
    }

    public final GetAutoLaceResult copy(d dVar, Shoe shoe, int i10) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        return new GetAutoLaceResult(dVar, shoe, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAutoLaceResult)) {
            return false;
        }
        GetAutoLaceResult getAutoLaceResult = (GetAutoLaceResult) obj;
        return h.c(getEventUUID(), getAutoLaceResult.getEventUUID()) && this.shoe == getAutoLaceResult.shoe && this.percent == getAutoLaceResult.percent;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final int getPercent() {
        return this.percent;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return Integer.hashCode(this.percent) + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        return s.a(r0.g("GetAutoLaceResult(eventUUID=", eventUUID, ", shoe=", shoe, ", percent="), this.percent, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeInt(this.percent);
    }
}
