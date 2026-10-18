package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.model.AdaptFirmwareUpdateState;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareFailureResult extends FirmwareUpdateResult {
    public static final Parcelable.Creator<FirmwareFailureResult> CREATOR = new Creator();
    private final AdaptFirmwareUpdateState errorState;

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareFailureResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFailureResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new FirmwareFailureResult((AdaptFirmwareUpdateState) parcel.readParcelable(FirmwareFailureResult.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFailureResult[] newArray(int i10) {
            return new FirmwareFailureResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirmwareFailureResult(AdaptFirmwareUpdateState adaptFirmwareUpdateState) {
        super(null);
        h.j(adaptFirmwareUpdateState, "errorState");
        this.errorState = adaptFirmwareUpdateState;
    }

    public static /* synthetic */ FirmwareFailureResult copy$default(FirmwareFailureResult firmwareFailureResult, AdaptFirmwareUpdateState adaptFirmwareUpdateState, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adaptFirmwareUpdateState = firmwareFailureResult.errorState;
        }
        return firmwareFailureResult.copy(adaptFirmwareUpdateState);
    }

    public final AdaptFirmwareUpdateState component1() {
        return this.errorState;
    }

    public final FirmwareFailureResult copy(AdaptFirmwareUpdateState adaptFirmwareUpdateState) {
        h.j(adaptFirmwareUpdateState, "errorState");
        return new FirmwareFailureResult(adaptFirmwareUpdateState);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FirmwareFailureResult) && h.c(this.errorState, ((FirmwareFailureResult) obj).errorState);
    }

    public final AdaptFirmwareUpdateState getErrorState() {
        return this.errorState;
    }

    public int hashCode() {
        return this.errorState.hashCode();
    }

    public String toString() {
        return "FirmwareFailureResult(errorState=" + this.errorState + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeParcelable(this.errorState, i10);
    }
}
