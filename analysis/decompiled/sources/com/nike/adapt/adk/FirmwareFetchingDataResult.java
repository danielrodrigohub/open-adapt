package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareFetchingDataResult extends FirmwareUpdateResult {
    public static final FirmwareFetchingDataResult INSTANCE = new FirmwareFetchingDataResult();
    public static final Parcelable.Creator<FirmwareFetchingDataResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareFetchingDataResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFetchingDataResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareFetchingDataResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareFetchingDataResult[] newArray(int i10) {
            return new FirmwareFetchingDataResult[i10];
        }
    }

    private FirmwareFetchingDataResult() {
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
