package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SetAutoLaceError extends DeviceControllerErrorResult {
    public static final Parcelable.Creator<SetAutoLaceError> CREATOR = new Creator();
    private final d eventUUID;
    private final boolean isLeft;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<SetAutoLaceError> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetAutoLaceError createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new SetAutoLaceError(d.CREATOR.createFromParcel(parcel), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetAutoLaceError[] newArray(int i10) {
            return new SetAutoLaceError[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetAutoLaceError(d dVar, boolean z10) {
        super(null);
        h.j(dVar, "eventUUID");
        this.eventUUID = dVar;
        this.isLeft = z10;
    }

    public static /* synthetic */ SetAutoLaceError copy$default(SetAutoLaceError setAutoLaceError, d dVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = setAutoLaceError.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            z10 = setAutoLaceError.isLeft;
        }
        return setAutoLaceError.copy(dVar, z10);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final boolean component2() {
        return this.isLeft;
    }

    public final SetAutoLaceError copy(d dVar, boolean z10) {
        h.j(dVar, "eventUUID");
        return new SetAutoLaceError(dVar, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetAutoLaceError)) {
            return false;
        }
        SetAutoLaceError setAutoLaceError = (SetAutoLaceError) obj;
        return h.c(getEventUUID(), setAutoLaceError.getEventUUID()) && this.isLeft == setAutoLaceError.isLeft;
    }

    @Override // com.nike.adapt.adk.DeviceControllerErrorResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = getEventUUID().hashCode() * 31;
        boolean z10 = this.isLeft;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public final boolean isLeft() {
        return this.isLeft;
    }

    public String toString() {
        return "SetAutoLaceError(eventUUID=" + getEventUUID() + ", isLeft=" + this.isLeft + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeInt(this.isLeft ? 1 : 0);
    }
}
