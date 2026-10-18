package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptGestureNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public enum AdaptGestureClassification implements Parcelable {
    CLASSIFICATION_UNKNOWN(0, "Unknown"),
    CLASSIFICATION_NONE(1, "None"),
    CLASSIFICATION_DOUBLETAP(2, "DoubleTap"),
    CLASSIFICATION_DOUBLETAP_TRAINING(3, "Training");

    private final int state;
    private final String type;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AdaptGestureClassification> CREATOR = new Parcelable.Creator<AdaptGestureClassification>() { // from class: com.nike.adapt.adk.model.AdaptGestureClassification.Creator
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureClassification createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return AdaptGestureClassification.valueOf(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureClassification[] newArray(int i10) {
            return new AdaptGestureClassification[i10];
        }
    };

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ga.a.f.values().length];
                iArr[1] = 1;
                iArr[2] = 2;
                iArr[3] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final AdaptGestureClassification from(ga.a.f fVar) {
            h.j(fVar, "value");
            int iOrdinal = fVar.ordinal();
            if (iOrdinal == 1) {
                return AdaptGestureClassification.CLASSIFICATION_NONE;
            }
            if (iOrdinal != 2) {
                return iOrdinal != 3 ? AdaptGestureClassification.CLASSIFICATION_UNKNOWN : AdaptGestureClassification.CLASSIFICATION_DOUBLETAP_TRAINING;
            }
            return AdaptGestureClassification.CLASSIFICATION_DOUBLETAP;
        }
    }

    AdaptGestureClassification(int i10, String str) {
        this.state = i10;
        this.type = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getState() {
        return this.state;
    }

    public final String getType() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(name());
    }
}
