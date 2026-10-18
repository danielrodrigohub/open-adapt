package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.nike.adapt.adk.AdaptMarshaller;
import rd.h;

/* JADX INFO: compiled from: AdaptShoeColor.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdaptShoeColor implements Parcelable {
    private final AdaptDeviceLEDIntensityADK intensity;
    private final AdaptMarshaller.AdaptPreset leftAdaptPreset;
    private final AdaptMarshaller.AdaptPreset rightAdaptPreset;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AdaptShoeColor> CREATOR = new Creator();

    /* JADX INFO: compiled from: AdaptShoeColor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public static /* synthetic */ AdaptShoeColor create$default(Companion companion, ShoeColor shoeColor, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                adaptDeviceLEDIntensityADK = AdaptDeviceLEDIntensityADK.HIGHEST;
            }
            return companion.create(shoeColor, adaptDeviceLEDIntensityADK);
        }

        public final AdaptShoeColor create(AdaptDeviceColor adaptDeviceColor, AdaptDeviceColor adaptDeviceColor2) {
            p4.h.j(adaptDeviceColor, "leftAdaptDeviceColor");
            p4.h.j(adaptDeviceColor2, "rightAdaptDeviceColor");
            return new AdaptShoeColor(adaptDeviceColor.getAdaptColorPreset(), adaptDeviceColor2.getAdaptColorPreset(), adaptDeviceColor.getIntensity());
        }

        public final AdaptShoeColor create(ShoeColor shoeColor, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK) {
            p4.h.j(shoeColor, "shoeColor");
            p4.h.j(adaptDeviceLEDIntensityADK, "intensity");
            return new AdaptShoeColor(shoeColor.getLeftLightColor().getAdaptColorPreset(), shoeColor.getRightLightColor().getAdaptColorPreset(), adaptDeviceLEDIntensityADK);
        }
    }

    /* JADX INFO: compiled from: AdaptShoeColor.kt */
    public static final class Creator implements Parcelable.Creator<AdaptShoeColor> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptShoeColor createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new AdaptShoeColor(AdaptMarshaller.AdaptPreset.valueOf(parcel.readString()), AdaptMarshaller.AdaptPreset.valueOf(parcel.readString()), AdaptDeviceLEDIntensityADK.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptShoeColor[] newArray(int i10) {
            return new AdaptShoeColor[i10];
        }
    }

    public AdaptShoeColor(AdaptMarshaller.AdaptPreset adaptPreset, AdaptMarshaller.AdaptPreset adaptPreset2, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK) {
        p4.h.j(adaptPreset, "leftAdaptPreset");
        p4.h.j(adaptPreset2, "rightAdaptPreset");
        p4.h.j(adaptDeviceLEDIntensityADK, "intensity");
        this.leftAdaptPreset = adaptPreset;
        this.rightAdaptPreset = adaptPreset2;
        this.intensity = adaptDeviceLEDIntensityADK;
    }

    public static /* synthetic */ AdaptShoeColor copy$default(AdaptShoeColor adaptShoeColor, AdaptMarshaller.AdaptPreset adaptPreset, AdaptMarshaller.AdaptPreset adaptPreset2, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adaptPreset = adaptShoeColor.leftAdaptPreset;
        }
        if ((i10 & 2) != 0) {
            adaptPreset2 = adaptShoeColor.rightAdaptPreset;
        }
        if ((i10 & 4) != 0) {
            adaptDeviceLEDIntensityADK = adaptShoeColor.intensity;
        }
        return adaptShoeColor.copy(adaptPreset, adaptPreset2, adaptDeviceLEDIntensityADK);
    }

    public final AdaptMarshaller.AdaptPreset component1() {
        return this.leftAdaptPreset;
    }

    public final AdaptMarshaller.AdaptPreset component2() {
        return this.rightAdaptPreset;
    }

    public final AdaptDeviceLEDIntensityADK component3() {
        return this.intensity;
    }

    public final AdaptShoeColor copy(AdaptMarshaller.AdaptPreset adaptPreset, AdaptMarshaller.AdaptPreset adaptPreset2, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK) {
        p4.h.j(adaptPreset, "leftAdaptPreset");
        p4.h.j(adaptPreset2, "rightAdaptPreset");
        p4.h.j(adaptDeviceLEDIntensityADK, "intensity");
        return new AdaptShoeColor(adaptPreset, adaptPreset2, adaptDeviceLEDIntensityADK);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptShoeColor)) {
            return false;
        }
        AdaptShoeColor adaptShoeColor = (AdaptShoeColor) obj;
        return this.leftAdaptPreset == adaptShoeColor.leftAdaptPreset && this.rightAdaptPreset == adaptShoeColor.rightAdaptPreset && this.intensity == adaptShoeColor.intensity;
    }

    public final AdaptDeviceLEDIntensityADK getIntensity() {
        return this.intensity;
    }

    public final AdaptMarshaller.AdaptPreset getLeftAdaptPreset() {
        return this.leftAdaptPreset;
    }

    public final AdaptMarshaller.AdaptPreset getRightAdaptPreset() {
        return this.rightAdaptPreset;
    }

    public int hashCode() {
        return this.intensity.hashCode() + ((this.rightAdaptPreset.hashCode() + (this.leftAdaptPreset.hashCode() * 31)) * 31);
    }

    public final boolean isOff() {
        return this.leftAdaptPreset == AdaptMarshaller.AdaptPreset.LIGHT_OFF;
    }

    public String toString() {
        return "AdaptShoeColor(leftAdaptPreset=" + this.leftAdaptPreset + ", rightAdaptPreset=" + this.rightAdaptPreset + ", intensity=" + this.intensity + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.leftAdaptPreset.name());
        parcel.writeString(this.rightAdaptPreset.name());
        parcel.writeString(this.intensity.name());
    }

    public /* synthetic */ AdaptShoeColor(AdaptMarshaller.AdaptPreset adaptPreset, AdaptMarshaller.AdaptPreset adaptPreset2, AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK, int i10, h hVar) {
        this(adaptPreset, adaptPreset2, (i10 & 4) != 0 ? AdaptDeviceLEDIntensityADK.HIGHEST : adaptDeviceLEDIntensityADK);
    }
}
