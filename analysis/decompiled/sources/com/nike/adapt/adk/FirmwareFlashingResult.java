package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareFlashingResult extends FirmwareUpdateResult {
    public static final FirmwareFlashingResult INSTANCE = new FirmwareFlashingResult();
    public static final Parcelable.Creator<FirmwareFlashingResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareFlashingResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFlashingResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareFlashingResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFlashingResult[] newArray(int i10) {
            return new FirmwareFlashingResult[i10];
        }
    }

    private FirmwareFlashingResult() {
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
