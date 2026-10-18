package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareReconnectingResult extends FirmwareUpdateResult {
    public static final FirmwareReconnectingResult INSTANCE = new FirmwareReconnectingResult();
    public static final Parcelable.Creator<FirmwareReconnectingResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareReconnectingResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareReconnectingResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareReconnectingResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareReconnectingResult[] newArray(int i10) {
            return new FirmwareReconnectingResult[i10];
        }
    }

    private FirmwareReconnectingResult() {
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
