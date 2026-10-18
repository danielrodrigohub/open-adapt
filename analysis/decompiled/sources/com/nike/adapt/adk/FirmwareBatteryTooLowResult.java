package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareBatteryTooLowResult extends FirmwareUpdateResult {
    public static final FirmwareBatteryTooLowResult INSTANCE = new FirmwareBatteryTooLowResult();
    public static final Parcelable.Creator<FirmwareBatteryTooLowResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareBatteryTooLowResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareBatteryTooLowResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareBatteryTooLowResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareBatteryTooLowResult[] newArray(int i10) {
            return new FirmwareBatteryTooLowResult[i10];
        }
    }

    private FirmwareBatteryTooLowResult() {
        super(null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
