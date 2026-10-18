package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import p4.h;

/* JADX INFO: compiled from: AdaptCustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptAppAnimationColor implements Parcelable {
    public static final Parcelable.Creator<AdaptAppAnimationColor> CREATOR = new Creator();
    private final int blue;
    private final int green;
    private final int red;

    /* JADX INFO: compiled from: AdaptCustomAnimation.kt */
    public static final class Creator implements Parcelable.Creator<AdaptAppAnimationColor> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptAppAnimationColor createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptAppAnimationColor(parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptAppAnimationColor[] newArray(int i10) {
            return new AdaptAppAnimationColor[i10];
        }
    }

    public AdaptAppAnimationColor(int i10, int i11, int i12) {
        this.red = i10;
        this.green = i11;
        this.blue = i12;
    }

    public static /* synthetic */ AdaptAppAnimationColor copy$default(AdaptAppAnimationColor adaptAppAnimationColor, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = adaptAppAnimationColor.red;
        }
        if ((i13 & 2) != 0) {
            i11 = adaptAppAnimationColor.green;
        }
        if ((i13 & 4) != 0) {
            i12 = adaptAppAnimationColor.blue;
        }
        return adaptAppAnimationColor.copy(i10, i11, i12);
    }

    public final int component1$app_prodRelease() {
        return this.red;
    }

    public final int component2$app_prodRelease() {
        return this.green;
    }

    public final int component3$app_prodRelease() {
        return this.blue;
    }

    public final AdaptAppAnimationColor copy(int i10, int i11, int i12) {
        return new AdaptAppAnimationColor(i10, i11, i12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptAppAnimationColor)) {
            return false;
        }
        AdaptAppAnimationColor adaptAppAnimationColor = (AdaptAppAnimationColor) obj;
        return this.red == adaptAppAnimationColor.red && this.green == adaptAppAnimationColor.green && this.blue == adaptAppAnimationColor.blue;
    }

    public final int getBlue$app_prodRelease() {
        return this.blue;
    }

    public final int getGreen$app_prodRelease() {
        return this.green;
    }

    public final int getRed$app_prodRelease() {
        return this.red;
    }

    public int hashCode() {
        return Integer.hashCode(this.blue) + r0.e(this.green, Integer.hashCode(this.red) * 31, 31);
    }

    public String toString() {
        int i10 = this.red;
        int i11 = this.green;
        return s.a(s.b("AdaptAppAnimationColor(red=", i10, ", green=", i11, ", blue="), this.blue, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.red);
        parcel.writeInt(this.green);
        parcel.writeInt(this.blue);
    }
}
