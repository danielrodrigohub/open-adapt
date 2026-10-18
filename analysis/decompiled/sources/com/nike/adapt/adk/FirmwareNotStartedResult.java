package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareNotStartedResult extends FirmwareUpdateResult {
    public static final FirmwareNotStartedResult INSTANCE = new FirmwareNotStartedResult();
    public static final Parcelable.Creator<FirmwareNotStartedResult> CREATOR = new Creator();

    /* JADX INFO: compiled from: FirmwareUpdateResults.kt */
    public static final class Creator implements Parcelable.Creator<FirmwareNotStartedResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareNotStartedResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return FirmwareNotStartedResult.INSTANCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FirmwareNotStartedResult[] newArray(int i10) {
            return new FirmwareNotStartedResult[i10];
        }
    }

    private FirmwareNotStartedResult() {
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
