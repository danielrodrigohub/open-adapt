package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptGestureNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public enum AdaptGestureAction implements Parcelable {
    ACTION_UNKNOWN(0, "Unknown"),
    ACTION_NONE(1, "None"),
    ACTION_UNLACE(2, "Unlace");

    private final int state;
    private final String type;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AdaptGestureAction> CREATOR = new Parcelable.Creator<AdaptGestureAction>() { // from class: com.nike.adapt.adk.model.AdaptGestureAction.Creator
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureAction createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return AdaptGestureAction.valueOf(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptGestureAction[] newArray(int i10) {
            return new AdaptGestureAction[i10];
        }
    };

    /* JADX INFO: compiled from: AdaptGestureNotification.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: AdaptGestureNotification.kt */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ga.a.e.values().length];
                iArr[1] = 1;
                iArr[2] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final AdaptGestureAction from(ga.a.e eVar) {
            h.j(eVar, "value");
            int iOrdinal = eVar.ordinal();
            if (iOrdinal != 1) {
                return iOrdinal != 2 ? AdaptGestureAction.ACTION_UNKNOWN : AdaptGestureAction.ACTION_UNLACE;
            }
            return AdaptGestureAction.ACTION_NONE;
        }
    }

    AdaptGestureAction(int i10, String str) {
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
