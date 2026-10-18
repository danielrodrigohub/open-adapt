package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: AdaptCustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptAppAnimationFrame implements Parcelable {
    public static final Parcelable.Creator<AdaptAppAnimationFrame> CREATOR = new Creator();
    private final float duration;
    private final List<AdaptAppAnimationColor> ledColors;

    /* JADX INFO: compiled from: AdaptCustomAnimation.kt */
    public static final class Creator implements Parcelable.Creator<AdaptAppAnimationFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptAppAnimationFrame createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            float f10 = parcel.readFloat();
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = a.c(AdaptAppAnimationColor.CREATOR, parcel, arrayList, iC, 1);
            }
            return new AdaptAppAnimationFrame(f10, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptAppAnimationFrame[] newArray(int i10) {
            return new AdaptAppAnimationFrame[i10];
        }
    }

    public AdaptAppAnimationFrame(float f10, List<AdaptAppAnimationColor> list) {
        h.j(list, "ledColors");
        this.duration = f10;
        this.ledColors = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdaptAppAnimationFrame copy$default(AdaptAppAnimationFrame adaptAppAnimationFrame, float f10, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = adaptAppAnimationFrame.duration;
        }
        if ((i10 & 2) != 0) {
            list = adaptAppAnimationFrame.ledColors;
        }
        return adaptAppAnimationFrame.copy(f10, list);
    }

    public final float component1() {
        return this.duration;
    }

    public final List<AdaptAppAnimationColor> component2() {
        return this.ledColors;
    }

    public final AdaptAppAnimationFrame copy(float f10, List<AdaptAppAnimationColor> list) {
        h.j(list, "ledColors");
        return new AdaptAppAnimationFrame(f10, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptAppAnimationFrame)) {
            return false;
        }
        AdaptAppAnimationFrame adaptAppAnimationFrame = (AdaptAppAnimationFrame) obj;
        return h.c(Float.valueOf(this.duration), Float.valueOf(adaptAppAnimationFrame.duration)) && h.c(this.ledColors, adaptAppAnimationFrame.ledColors);
    }

    public final float getDuration() {
        return this.duration;
    }

    public final List<AdaptAppAnimationColor> getLedColors() {
        return this.ledColors;
    }

    public int hashCode() {
        return this.ledColors.hashCode() + (Float.hashCode(this.duration) * 31);
    }

    public String toString() {
        return "AdaptAppAnimationFrame(duration=" + this.duration + ", ledColors=" + this.ledColors + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeFloat(this.duration);
        Iterator itD = ca.a.d(this.ledColors, parcel);
        while (itD.hasNext()) {
            ((AdaptAppAnimationColor) itD.next()).writeToParcel(parcel, i10);
        }
    }
}
