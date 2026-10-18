package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptGestureNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdaptGestureConfiguration implements Parcelable {
    private final AdaptGestureAction action;
    private final AdaptGestureClassification classification;

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class CustomGesture extends AdaptGestureConfiguration {
        public static final Parcelable.Creator<CustomGesture> CREATOR = new Creator();
        private final AdaptGestureAction customAction;
        private final AdaptGestureClassification customClassification;

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public static final class Creator implements Parcelable.Creator<CustomGesture> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CustomGesture createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new CustomGesture(AdaptGestureAction.CREATOR.createFromParcel(parcel), AdaptGestureClassification.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CustomGesture[] newArray(int i10) {
                return new CustomGesture[i10];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomGesture(AdaptGestureAction adaptGestureAction, AdaptGestureClassification adaptGestureClassification) {
            super(adaptGestureAction, adaptGestureClassification, null);
            h.j(adaptGestureAction, "customAction");
            h.j(adaptGestureClassification, "customClassification");
            this.customAction = adaptGestureAction;
            this.customClassification = adaptGestureClassification;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.customAction.writeToParcel(parcel, i10);
            this.customClassification.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class DoubleTapTraining extends AdaptGestureConfiguration {
        public static final DoubleTapTraining INSTANCE = new DoubleTapTraining();
        public static final Parcelable.Creator<DoubleTapTraining> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public static final class Creator implements Parcelable.Creator<DoubleTapTraining> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DoubleTapTraining createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return DoubleTapTraining.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DoubleTapTraining[] newArray(int i10) {
                return new DoubleTapTraining[i10];
            }
        }

        private DoubleTapTraining() {
            super(AdaptGestureAction.ACTION_NONE, AdaptGestureClassification.CLASSIFICATION_NONE, null);
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

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class DoubleTapUnlace extends AdaptGestureConfiguration {
        public static final DoubleTapUnlace INSTANCE = new DoubleTapUnlace();
        public static final Parcelable.Creator<DoubleTapUnlace> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public static final class Creator implements Parcelable.Creator<DoubleTapUnlace> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DoubleTapUnlace createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return DoubleTapUnlace.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DoubleTapUnlace[] newArray(int i10) {
                return new DoubleTapUnlace[i10];
            }
        }

        private DoubleTapUnlace() {
            super(AdaptGestureAction.ACTION_UNLACE, AdaptGestureClassification.CLASSIFICATION_DOUBLETAP, null);
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

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class Off extends AdaptGestureConfiguration {
        public static final Off INSTANCE = new Off();
        public static final Parcelable.Creator<Off> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public static final class Creator implements Parcelable.Creator<Off> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Off createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Off.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Off[] newArray(int i10) {
                return new Off[i10];
            }
        }

        private Off() {
            super(AdaptGestureAction.ACTION_NONE, AdaptGestureClassification.CLASSIFICATION_NONE, null);
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

    private AdaptGestureConfiguration(AdaptGestureAction adaptGestureAction, AdaptGestureClassification adaptGestureClassification) {
        this.action = adaptGestureAction;
        this.classification = adaptGestureClassification;
    }

    public /* synthetic */ AdaptGestureConfiguration(AdaptGestureAction adaptGestureAction, AdaptGestureClassification adaptGestureClassification, rd.h hVar) {
        this(adaptGestureAction, adaptGestureClassification);
    }

    public final AdaptGestureAction getAction() {
        return this.action;
    }

    public final AdaptGestureClassification getClassification() {
        return this.classification;
    }
}
