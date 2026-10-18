package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptGestureNotification;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GestureStatsNotificationResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GestureStatsNotificationResult> CREATOR = new Creator();
    private final d eventUUID;
    private final AdaptGestureNotification gestureNotification;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GestureStatsNotificationResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GestureStatsNotificationResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GestureStatsNotificationResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptGestureNotification.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GestureStatsNotificationResult[] newArray(int i10) {
            return new GestureStatsNotificationResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GestureStatsNotificationResult(d dVar, Shoe shoe, AdaptGestureNotification adaptGestureNotification) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureNotification, "gestureNotification");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.gestureNotification = adaptGestureNotification;
    }

    public static /* synthetic */ GestureStatsNotificationResult copy$default(GestureStatsNotificationResult gestureStatsNotificationResult, d dVar, Shoe shoe, AdaptGestureNotification adaptGestureNotification, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = gestureStatsNotificationResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = gestureStatsNotificationResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptGestureNotification = gestureStatsNotificationResult.gestureNotification;
        }
        return gestureStatsNotificationResult.copy(dVar, shoe, adaptGestureNotification);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final AdaptGestureNotification component3() {
        return this.gestureNotification;
    }

    public final GestureStatsNotificationResult copy(d dVar, Shoe shoe, AdaptGestureNotification adaptGestureNotification) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureNotification, "gestureNotification");
        return new GestureStatsNotificationResult(dVar, shoe, adaptGestureNotification);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GestureStatsNotificationResult)) {
            return false;
        }
        GestureStatsNotificationResult gestureStatsNotificationResult = (GestureStatsNotificationResult) obj;
        return h.c(getEventUUID(), gestureStatsNotificationResult.getEventUUID()) && this.shoe == gestureStatsNotificationResult.shoe && h.c(this.gestureNotification, gestureStatsNotificationResult.gestureNotification);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final AdaptGestureNotification getGestureNotification() {
        return this.gestureNotification;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.gestureNotification.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        AdaptGestureNotification adaptGestureNotification = this.gestureNotification;
        StringBuilder sbG = r0.g("GestureStatsNotificationResult(eventUUID=", eventUUID, ", shoe=", shoe, ", gestureNotification=");
        sbG.append(adaptGestureNotification);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        this.gestureNotification.writeToParcel(parcel, i10);
    }
}
