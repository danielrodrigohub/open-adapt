package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareInProgressResult extends FirmwareUpdateResult {
    public static final Parcelable.Creator<FirmwareInProgressResult> CREATOR = new Creator();
    private final float percent;

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareInProgressResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareInProgressResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new FirmwareInProgressResult(parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareInProgressResult[] newArray(int i10) {
            return new FirmwareInProgressResult[i10];
        }
    }

    public FirmwareInProgressResult(float f10) {
        super(null);
        this.percent = f10;
    }

    public static /* synthetic */ FirmwareInProgressResult copy$default(FirmwareInProgressResult firmwareInProgressResult, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = firmwareInProgressResult.percent;
        }
        return firmwareInProgressResult.copy(f10);
    }

    public final float component1() {
        return this.percent;
    }

    public final FirmwareInProgressResult copy(float f10) {
        return new FirmwareInProgressResult(f10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FirmwareInProgressResult) && h.c(Float.valueOf(this.percent), Float.valueOf(((FirmwareInProgressResult) obj).percent));
    }

    public final float getPercent() {
        return this.percent;
    }

    public int hashCode() {
        return Float.hashCode(this.percent);
    }

    public String toString() {
        return "FirmwareInProgressResult(percent=" + this.percent + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeFloat(this.percent);
    }
}
