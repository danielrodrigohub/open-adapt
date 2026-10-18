package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetLacingPercentResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetLacingPercentResult> CREATOR = new Creator();
    private final int absolutePercent;
    private final d eventUUID;
    private final int relativePercent;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetLacingPercentResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetLacingPercentResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetLacingPercentResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetLacingPercentResult[] newArray(int i10) {
            return new GetLacingPercentResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetLacingPercentResult(d dVar, Shoe shoe, int i10, int i11) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.relativePercent = i10;
        this.absolutePercent = i11;
    }

    public static /* synthetic */ GetLacingPercentResult copy$default(GetLacingPercentResult getLacingPercentResult, d dVar, Shoe shoe, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            dVar = getLacingPercentResult.getEventUUID();
        }
        if ((i12 & 2) != 0) {
            shoe = getLacingPercentResult.shoe;
        }
        if ((i12 & 4) != 0) {
            i10 = getLacingPercentResult.relativePercent;
        }
        if ((i12 & 8) != 0) {
            i11 = getLacingPercentResult.absolutePercent;
        }
        return getLacingPercentResult.copy(dVar, shoe, i10, i11);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final int component3() {
        return this.relativePercent;
    }

    public final int component4() {
        return this.absolutePercent;
    }

    public final GetLacingPercentResult copy(d dVar, Shoe shoe, int i10, int i11) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        return new GetLacingPercentResult(dVar, shoe, i10, i11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetLacingPercentResult)) {
            return false;
        }
        GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) obj;
        return h.c(getEventUUID(), getLacingPercentResult.getEventUUID()) && this.shoe == getLacingPercentResult.shoe && this.relativePercent == getLacingPercentResult.relativePercent && this.absolutePercent == getLacingPercentResult.absolutePercent;
    }

    public final int getAbsolutePercent() {
        return this.absolutePercent;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final int getRelativePercent() {
        return this.relativePercent;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return Integer.hashCode(this.absolutePercent) + r0.e(this.relativePercent, f.b(this.shoe, getEventUUID().hashCode() * 31, 31), 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        int i10 = this.relativePercent;
        int i11 = this.absolutePercent;
        StringBuilder sbG = r0.g("GetLacingPercentResult(eventUUID=", eventUUID, ", shoe=", shoe, ", relativePercent=");
        sbG.append(i10);
        sbG.append(", absolutePercent=");
        sbG.append(i11);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeInt(this.relativePercent);
        parcel.writeInt(this.absolutePercent);
    }
}
