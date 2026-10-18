package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SetFootPresenceSensorResult extends DeviceControllerResult {
    public static final Parcelable.Creator<SetFootPresenceSensorResult> CREATOR = new Creator();
    private final d eventUUID;
    private final boolean isEnabled;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<SetFootPresenceSensorResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetFootPresenceSensorResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new SetFootPresenceSensorResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetFootPresenceSensorResult[] newArray(int i10) {
            return new SetFootPresenceSensorResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetFootPresenceSensorResult(d dVar, Shoe shoe, boolean z10) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.isEnabled = z10;
    }

    public static /* synthetic */ SetFootPresenceSensorResult copy$default(SetFootPresenceSensorResult setFootPresenceSensorResult, d dVar, Shoe shoe, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = setFootPresenceSensorResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = setFootPresenceSensorResult.shoe;
        }
        if ((i10 & 4) != 0) {
            z10 = setFootPresenceSensorResult.isEnabled;
        }
        return setFootPresenceSensorResult.copy(dVar, shoe, z10);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final boolean component3() {
        return this.isEnabled;
    }

    public final SetFootPresenceSensorResult copy(d dVar, Shoe shoe, boolean z10) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        return new SetFootPresenceSensorResult(dVar, shoe, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetFootPresenceSensorResult)) {
            return false;
        }
        SetFootPresenceSensorResult setFootPresenceSensorResult = (SetFootPresenceSensorResult) obj;
        return h.c(getEventUUID(), setFootPresenceSensorResult.getEventUUID()) && this.shoe == setFootPresenceSensorResult.shoe && this.isEnabled == setFootPresenceSensorResult.isEnabled;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public int hashCode() {
        int iB = f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
        boolean z10 = this.isEnabled;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iB + r10;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        boolean z10 = this.isEnabled;
        StringBuilder sbG = r0.g("SetFootPresenceSensorResult(eventUUID=", eventUUID, ", shoe=", shoe, ", isEnabled=");
        sbG.append(z10);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeInt(this.isEnabled ? 1 : 0);
    }
}
