package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import p4.h;

/* JADX INFO: compiled from: AdaptGestureStatistics.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptGestureStatistics implements Parcelable {
    public static final Parcelable.Creator<AdaptGestureStatistics> CREATOR = new Creator();
    private final int doubleTapEventsDetected;
    private final int invalidGestures;
    private final int validGestures;

    /* JADX INFO: compiled from: AdaptGestureStatistics.kt */
    public static final class Creator implements Parcelable.Creator<AdaptGestureStatistics> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureStatistics createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptGestureStatistics(parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureStatistics[] newArray(int i10) {
            return new AdaptGestureStatistics[i10];
        }
    }

    public AdaptGestureStatistics(int i10, int i11, int i12) {
        this.doubleTapEventsDetected = i10;
        this.invalidGestures = i11;
        this.validGestures = i12;
    }

    public static /* synthetic */ AdaptGestureStatistics copy$default(AdaptGestureStatistics adaptGestureStatistics, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = adaptGestureStatistics.doubleTapEventsDetected;
        }
        if ((i13 & 2) != 0) {
            i11 = adaptGestureStatistics.invalidGestures;
        }
        if ((i13 & 4) != 0) {
            i12 = adaptGestureStatistics.validGestures;
        }
        return adaptGestureStatistics.copy(i10, i11, i12);
    }

    public final int component1() {
        return this.doubleTapEventsDetected;
    }

    public final int component2() {
        return this.invalidGestures;
    }

    public final int component3() {
        return this.validGestures;
    }

    public final AdaptGestureStatistics copy(int i10, int i11, int i12) {
        return new AdaptGestureStatistics(i10, i11, i12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptGestureStatistics)) {
            return false;
        }
        AdaptGestureStatistics adaptGestureStatistics = (AdaptGestureStatistics) obj;
        return this.doubleTapEventsDetected == adaptGestureStatistics.doubleTapEventsDetected && this.invalidGestures == adaptGestureStatistics.invalidGestures && this.validGestures == adaptGestureStatistics.validGestures;
    }

    public final int getDoubleTapEventsDetected() {
        return this.doubleTapEventsDetected;
    }

    public final int getInvalidGestures() {
        return this.invalidGestures;
    }

    public final int getValidGestures() {
        return this.validGestures;
    }

    public int hashCode() {
        return Integer.hashCode(this.validGestures) + r0.e(this.invalidGestures, Integer.hashCode(this.doubleTapEventsDetected) * 31, 31);
    }

    public String toString() {
        int i10 = this.doubleTapEventsDetected;
        int i11 = this.invalidGestures;
        return s.a(s.b("AdaptGestureStatistics(doubleTapEventsDetected=", i10, ", invalidGestures=", i11, ", validGestures="), this.validGestures, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.doubleTapEventsDetected);
        parcel.writeInt(this.invalidGestures);
        parcel.writeInt(this.validGestures);
    }
}
