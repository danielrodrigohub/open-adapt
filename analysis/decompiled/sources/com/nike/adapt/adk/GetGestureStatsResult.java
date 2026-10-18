package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptGestureStatistics;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetGestureStatsResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetGestureStatsResult> CREATOR = new Creator();
    private final d eventUUID;
    private final AdaptGestureStatistics gestureStats;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetGestureStatsResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetGestureStatsResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetGestureStatsResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptGestureStatistics.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetGestureStatsResult[] newArray(int i10) {
            return new GetGestureStatsResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetGestureStatsResult(d dVar, Shoe shoe, AdaptGestureStatistics adaptGestureStatistics) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureStatistics, "gestureStats");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.gestureStats = adaptGestureStatistics;
    }

    public static /* synthetic */ GetGestureStatsResult copy$default(GetGestureStatsResult getGestureStatsResult, d dVar, Shoe shoe, AdaptGestureStatistics adaptGestureStatistics, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getGestureStatsResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getGestureStatsResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptGestureStatistics = getGestureStatsResult.gestureStats;
        }
        return getGestureStatsResult.copy(dVar, shoe, adaptGestureStatistics);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final AdaptGestureStatistics component3() {
        return this.gestureStats;
    }

    public final GetGestureStatsResult copy(d dVar, Shoe shoe, AdaptGestureStatistics adaptGestureStatistics) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureStatistics, "gestureStats");
        return new GetGestureStatsResult(dVar, shoe, adaptGestureStatistics);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetGestureStatsResult)) {
            return false;
        }
        GetGestureStatsResult getGestureStatsResult = (GetGestureStatsResult) obj;
        return h.c(getEventUUID(), getGestureStatsResult.getEventUUID()) && this.shoe == getGestureStatsResult.shoe && h.c(this.gestureStats, getGestureStatsResult.gestureStats);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final AdaptGestureStatistics getGestureStats() {
        return this.gestureStats;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.gestureStats.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        AdaptGestureStatistics adaptGestureStatistics = this.gestureStats;
        StringBuilder sbG = r0.g("GetGestureStatsResult(eventUUID=", eventUUID, ", shoe=", shoe, ", gestureStats=");
        sbG.append(adaptGestureStatistics);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        this.gestureStats.writeToParcel(parcel, i10);
    }
}
