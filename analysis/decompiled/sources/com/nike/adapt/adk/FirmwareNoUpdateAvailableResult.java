package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareNoUpdateAvailableResult extends FirmwareUpdateResult {
    public static final FirmwareNoUpdateAvailableResult INSTANCE = new FirmwareNoUpdateAvailableResult();
    public static final Parcelable.Creator<FirmwareNoUpdateAvailableResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareNoUpdateAvailableResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareNoUpdateAvailableResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareNoUpdateAvailableResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareNoUpdateAvailableResult[] newArray(int i10) {
            return new FirmwareNoUpdateAvailableResult[i10];
        }
    }

    private FirmwareNoUpdateAvailableResult() {
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
