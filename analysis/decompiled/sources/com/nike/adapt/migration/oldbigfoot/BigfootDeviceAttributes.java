package com.nike.adapt.migration.oldbigfoot;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: BigfootDeviceAttributes.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootDeviceAttributes implements Parcelable {
    public static final Parcelable.Creator<BigfootDeviceAttributes> CREATOR = new Creator();
    private final BigfootDeviceColor bigfootDeviceColor;
    private final int percent;

    /* JADX INFO: compiled from: BigfootDeviceAttributes.kt */
    public static final class Creator implements Parcelable.Creator<BigfootDeviceAttributes> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDeviceAttributes createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new BigfootDeviceAttributes(parcel.readInt(), BigfootDeviceColor.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDeviceAttributes[] newArray(int i10) {
            return new BigfootDeviceAttributes[i10];
        }
    }

    public BigfootDeviceAttributes(int i10, BigfootDeviceColor bigfootDeviceColor) {
        h.j(bigfootDeviceColor, "bigfootDeviceColor");
        this.percent = i10;
        this.bigfootDeviceColor = bigfootDeviceColor;
    }

    public static /* synthetic */ BigfootDeviceAttributes copy$default(BigfootDeviceAttributes bigfootDeviceAttributes, int i10, BigfootDeviceColor bigfootDeviceColor, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = bigfootDeviceAttributes.percent;
        }
        if ((i11 & 2) != 0) {
            bigfootDeviceColor = bigfootDeviceAttributes.bigfootDeviceColor;
        }
        return bigfootDeviceAttributes.copy(i10, bigfootDeviceColor);
    }

    public final int component1() {
        return this.percent;
    }

    public final BigfootDeviceColor component2() {
        return this.bigfootDeviceColor;
    }

    public final BigfootDeviceAttributes copy(int i10, BigfootDeviceColor bigfootDeviceColor) {
        h.j(bigfootDeviceColor, "bigfootDeviceColor");
        return new BigfootDeviceAttributes(i10, bigfootDeviceColor);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BigfootDeviceAttributes)) {
            return false;
        }
        BigfootDeviceAttributes bigfootDeviceAttributes = (BigfootDeviceAttributes) obj;
        return this.percent == bigfootDeviceAttributes.percent && h.c(this.bigfootDeviceColor, bigfootDeviceAttributes.bigfootDeviceColor);
    }

    public final BigfootDeviceColor getBigfootDeviceColor() {
        return this.bigfootDeviceColor;
    }

    public final int getPercent() {
        return this.percent;
    }

    public int hashCode() {
        return this.bigfootDeviceColor.hashCode() + (Integer.hashCode(this.percent) * 31);
    }

    public String toString() {
        return "BigfootDeviceAttributes(percent=" + this.percent + ", bigfootDeviceColor=" + this.bigfootDeviceColor + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.percent);
        this.bigfootDeviceColor.writeToParcel(parcel, i10);
    }
}
