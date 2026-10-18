package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ToggleAutoLaceError extends DeviceControllerErrorResult {
    public static final Parcelable.Creator<ToggleAutoLaceError> CREATOR = new Creator();
    private final d eventUUID;
    private final boolean isEnable;
    private final boolean isLeft;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<ToggleAutoLaceError> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ToggleAutoLaceError createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new ToggleAutoLaceError(d.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ToggleAutoLaceError[] newArray(int i10) {
            return new ToggleAutoLaceError[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToggleAutoLaceError(d dVar, boolean z10, boolean z11) {
        super(null);
        h.j(dVar, "eventUUID");
        this.eventUUID = dVar;
        this.isLeft = z10;
        this.isEnable = z11;
    }

    public static /* synthetic */ ToggleAutoLaceError copy$default(ToggleAutoLaceError toggleAutoLaceError, d dVar, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = toggleAutoLaceError.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            z10 = toggleAutoLaceError.isLeft;
        }
        if ((i10 & 4) != 0) {
            z11 = toggleAutoLaceError.isEnable;
        }
        return toggleAutoLaceError.copy(dVar, z10, z11);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final boolean component2() {
        return this.isLeft;
    }

    public final boolean component3() {
        return this.isEnable;
    }

    public final ToggleAutoLaceError copy(d dVar, boolean z10, boolean z11) {
        h.j(dVar, "eventUUID");
        return new ToggleAutoLaceError(dVar, z10, z11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ToggleAutoLaceError)) {
            return false;
        }
        ToggleAutoLaceError toggleAutoLaceError = (ToggleAutoLaceError) obj;
        return h.c(getEventUUID(), toggleAutoLaceError.getEventUUID()) && this.isLeft == toggleAutoLaceError.isLeft && this.isEnable == toggleAutoLaceError.isEnable;
    }

    @Override // com.nike.adapt.adk.DeviceControllerErrorResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = getEventUUID().hashCode() * 31;
        boolean z10 = this.isLeft;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode + r10) * 31;
        boolean z11 = this.isEnable;
        return i10 + (z11 ? 1 : z11);
    }

    public final boolean isEnable() {
        return this.isEnable;
    }

    public final boolean isLeft() {
        return this.isLeft;
    }

    public String toString() {
        return "ToggleAutoLaceError(eventUUID=" + getEventUUID() + ", isLeft=" + this.isLeft + ", isEnable=" + this.isEnable + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeInt(this.isLeft ? 1 : 0);
        parcel.writeInt(this.isEnable ? 1 : 0);
    }
}
