package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: Battery.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Battery implements Parcelable {
    public static final Parcelable.Creator<Battery> CREATOR = new Creator();
    private final int percent;
    private final BatteryState state;

    /* JADX INFO: compiled from: Battery.kt */
    public static final class Creator implements Parcelable.Creator<Battery> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Battery createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new Battery(parcel.readInt(), BatteryState.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Battery[] newArray(int i10) {
            return new Battery[i10];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Battery() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public Battery(int i10, BatteryState batteryState) {
        h.j(batteryState, "state");
        this.percent = i10;
        this.state = batteryState;
    }

    public static /* synthetic */ Battery copy$default(Battery battery, int i10, BatteryState batteryState, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = battery.percent;
        }
        if ((i11 & 2) != 0) {
            batteryState = battery.state;
        }
        return battery.copy(i10, batteryState);
    }

    public final int component1() {
        return this.percent;
    }

    public final BatteryState component2() {
        return this.state;
    }

    public final Battery copy(int i10, BatteryState batteryState) {
        h.j(batteryState, "state");
        return new Battery(i10, batteryState);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Battery)) {
            return false;
        }
        Battery battery = (Battery) obj;
        return this.percent == battery.percent && this.state == battery.state;
    }

    public final int getPercent() {
        return this.percent;
    }

    public final BatteryState getState() {
        return this.state;
    }

    public int hashCode() {
        return this.state.hashCode() + (Integer.hashCode(this.percent) * 31);
    }

    public String toString() {
        return "Battery(percent=" + this.percent + ", state=" + this.state + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.percent);
        parcel.writeString(this.state.name());
    }

    public /* synthetic */ Battery(int i10, BatteryState batteryState, int i11, rd.h hVar) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? BatteryState.ERROR : batteryState);
    }
}
