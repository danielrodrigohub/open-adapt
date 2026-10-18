package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.nike.adapt.adk.AdaptMarshaller;
import p4.h;

/* JADX INFO: compiled from: AdaptDeviceColor.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdaptDeviceColor implements Parcelable {
    public static final Parcelable.Creator<AdaptDeviceColor> CREATOR = new Creator();
    private final AdaptMarshaller.AdaptPreset adaptColorPreset;
    private final AdaptDeviceLEDIntensityADK intensity;

    /* JADX INFO: compiled from: AdaptDeviceColor.kt */
    public static final class Creator implements Parcelable.Creator<AdaptDeviceColor> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptDeviceColor createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptDeviceColor(AdaptMarshaller.AdaptPreset.valueOf(parcel.readString()), AdaptDeviceLEDIntensityADK.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptDeviceColor[] newArray(int i10) {
            return new AdaptDeviceColor[i10];
        }
    }

    public AdaptDeviceColor(AdaptMarshaller.AdaptPreset adaptPreset, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK) {
        h.j(adaptPreset, "adaptColorPreset");
        h.j(adaptDeviceLEDIntensityADK, "intensity");
        this.adaptColorPreset = adaptPreset;
        this.intensity = adaptDeviceLEDIntensityADK;
    }

    public static /* synthetic */ AdaptDeviceColor copy$default(AdaptDeviceColor adaptDeviceColor, AdaptMarshaller.AdaptPreset adaptPreset, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adaptPreset = adaptDeviceColor.adaptColorPreset;
        }
        if ((i10 & 2) != 0) {
            adaptDeviceLEDIntensityADK = adaptDeviceColor.intensity;
        }
        return adaptDeviceColor.copy(adaptPreset, adaptDeviceLEDIntensityADK);
    }

    public final AdaptMarshaller.AdaptPreset component1() {
        return this.adaptColorPreset;
    }

    public final AdaptDeviceLEDIntensityADK component2() {
        return this.intensity;
    }

    public final AdaptDeviceColor copy(AdaptMarshaller.AdaptPreset adaptPreset, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK) {
        h.j(adaptPreset, "adaptColorPreset");
        h.j(adaptDeviceLEDIntensityADK, "intensity");
        return new AdaptDeviceColor(adaptPreset, adaptDeviceLEDIntensityADK);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptDeviceColor)) {
            return false;
        }
        AdaptDeviceColor adaptDeviceColor = (AdaptDeviceColor) obj;
        return this.adaptColorPreset == adaptDeviceColor.adaptColorPreset && this.intensity == adaptDeviceColor.intensity;
    }

    public final AdaptMarshaller.AdaptPreset getAdaptColorPreset() {
        return this.adaptColorPreset;
    }

    public final AdaptDeviceLEDIntensityADK getIntensity() {
        return this.intensity;
    }

    public int hashCode() {
        return this.intensity.hashCode() + (this.adaptColorPreset.hashCode() * 31);
    }

    public String toString() {
        return "AdaptDeviceColor(adaptColorPreset=" + this.adaptColorPreset + ", intensity=" + this.intensity + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.adaptColorPreset.name());
        parcel.writeString(this.intensity.name());
    }

    public /* synthetic */ AdaptDeviceColor(AdaptMarshaller.AdaptPreset adaptPreset, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK, int i10, rd.h hVar) {
        this(adaptPreset, (i10 & 2) != 0 ? AdaptDeviceLEDIntensityADK.HIGHEST : adaptDeviceLEDIntensityADK);
    }
}
