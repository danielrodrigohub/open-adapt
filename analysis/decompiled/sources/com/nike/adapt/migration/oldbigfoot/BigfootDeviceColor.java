package com.nike.adapt.migration.oldbigfoot;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: BigfootDeviceColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootDeviceColor implements Parcelable {
    public static final Parcelable.Creator<BigfootDeviceColor> CREATOR = new Creator();
    private final BigfootColorPreset bigfootColorPreset;
    private final BigfootDeviceLEDIntensity intensity;

    /* JADX INFO: compiled from: BigfootDeviceColor.kt */
    public static final class Creator implements Parcelable.Creator<BigfootDeviceColor> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDeviceColor createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new BigfootDeviceColor(BigfootColorPreset.valueOf(parcel.readString()), BigfootDeviceLEDIntensity.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDeviceColor[] newArray(int i10) {
            return new BigfootDeviceColor[i10];
        }
    }

    public BigfootDeviceColor(BigfootColorPreset bigfootColorPreset, BigfootDeviceLEDIntensity bigfootDeviceLEDIntensity) {
        h.j(bigfootColorPreset, "bigfootColorPreset");
        h.j(bigfootDeviceLEDIntensity, "intensity");
        this.bigfootColorPreset = bigfootColorPreset;
        this.intensity = bigfootDeviceLEDIntensity;
    }

    public static /* synthetic */ BigfootDeviceColor copy$default(BigfootDeviceColor bigfootDeviceColor, BigfootColorPreset bigfootColorPreset, BigfootDeviceLEDIntensity bigfootDeviceLEDIntensity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bigfootColorPreset = bigfootDeviceColor.bigfootColorPreset;
        }
        if ((i10 & 2) != 0) {
            bigfootDeviceLEDIntensity = bigfootDeviceColor.intensity;
        }
        return bigfootDeviceColor.copy(bigfootColorPreset, bigfootDeviceLEDIntensity);
    }

    public final BigfootColorPreset component1() {
        return this.bigfootColorPreset;
    }

    public final BigfootDeviceLEDIntensity component2() {
        return this.intensity;
    }

    public final BigfootDeviceColor copy(BigfootColorPreset bigfootColorPreset, BigfootDeviceLEDIntensity bigfootDeviceLEDIntensity) {
        h.j(bigfootColorPreset, "bigfootColorPreset");
        h.j(bigfootDeviceLEDIntensity, "intensity");
        return new BigfootDeviceColor(bigfootColorPreset, bigfootDeviceLEDIntensity);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BigfootDeviceColor)) {
            return false;
        }
        BigfootDeviceColor bigfootDeviceColor = (BigfootDeviceColor) obj;
        return this.bigfootColorPreset == bigfootDeviceColor.bigfootColorPreset && this.intensity == bigfootDeviceColor.intensity;
    }

    public final BigfootColorPreset getBigfootColorPreset() {
        return this.bigfootColorPreset;
    }

    public final BigfootDeviceLEDIntensity getIntensity() {
        return this.intensity;
    }

    public int hashCode() {
        return this.intensity.hashCode() + (this.bigfootColorPreset.hashCode() * 31);
    }

    public String toString() {
        return "BigfootDeviceColor(bigfootColorPreset=" + this.bigfootColorPreset + ", intensity=" + this.intensity + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.bigfootColorPreset.name());
        parcel.writeString(this.intensity.name());
    }

    public /* synthetic */ BigfootDeviceColor(BigfootColorPreset bigfootColorPreset, BigfootDeviceLEDIntensity bigfootDeviceLEDIntensity, int i10, rd.h hVar) {
        this(bigfootColorPreset, (i10 & 2) != 0 ? BigfootDeviceLEDIntensity.HIGHEST : bigfootDeviceLEDIntensity);
    }
}
