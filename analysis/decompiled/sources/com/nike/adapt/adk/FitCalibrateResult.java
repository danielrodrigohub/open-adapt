package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FitCalibrateResult extends DeviceControllerResult {
    public static final Parcelable.Creator<FitCalibrateResult> CREATOR = new Creator();
    private final d eventUUID;
    private final String maxPercent;
    private final CalibrateResult result;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<FitCalibrateResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FitCalibrateResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new FitCalibrateResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), CalibrateResult.valueOf(parcel.readString()), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FitCalibrateResult[] newArray(int i10) {
            return new FitCalibrateResult[i10];
        }
    }

    public /* synthetic */ FitCalibrateResult(d dVar, Shoe shoe, CalibrateResult calibrateResult, String str, int i10, rd.h hVar) {
        this(dVar, shoe, calibrateResult, (i10 & 8) != 0 ? null : str);
    }

    public static /* synthetic */ FitCalibrateResult copy$default(FitCalibrateResult fitCalibrateResult, d dVar, Shoe shoe, CalibrateResult calibrateResult, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = fitCalibrateResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = fitCalibrateResult.shoe;
        }
        if ((i10 & 4) != 0) {
            calibrateResult = fitCalibrateResult.result;
        }
        if ((i10 & 8) != 0) {
            str = fitCalibrateResult.maxPercent;
        }
        return fitCalibrateResult.copy(dVar, shoe, calibrateResult, str);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final CalibrateResult component3() {
        return this.result;
    }

    public final String component4() {
        return this.maxPercent;
    }

    public final FitCalibrateResult copy(d dVar, Shoe shoe, CalibrateResult calibrateResult, String str) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(calibrateResult, "result");
        return new FitCalibrateResult(dVar, shoe, calibrateResult, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FitCalibrateResult)) {
            return false;
        }
        FitCalibrateResult fitCalibrateResult = (FitCalibrateResult) obj;
        return h.c(getEventUUID(), fitCalibrateResult.getEventUUID()) && this.shoe == fitCalibrateResult.shoe && this.result == fitCalibrateResult.result && h.c(this.maxPercent, fitCalibrateResult.maxPercent);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final String getMaxPercent() {
        return this.maxPercent;
    }

    public final CalibrateResult getResult() {
        return this.result;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        int iHashCode = (this.result.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31)) * 31;
        String str = this.maxPercent;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        CalibrateResult calibrateResult = this.result;
        String str = this.maxPercent;
        StringBuilder sbG = r0.g("FitCalibrateResult(eventUUID=", eventUUID, ", shoe=", shoe, ", result=");
        sbG.append(calibrateResult);
        sbG.append(", maxPercent=");
        sbG.append(str);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeString(this.result.name());
        parcel.writeString(this.maxPercent);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FitCalibrateResult(d dVar, Shoe shoe, CalibrateResult calibrateResult, String str) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(calibrateResult, "result");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.result = calibrateResult;
        this.maxPercent = str;
    }
}
