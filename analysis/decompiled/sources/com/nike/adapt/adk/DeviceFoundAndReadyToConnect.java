package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import ea.m;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceFoundAndReadyToConnect extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<DeviceFoundAndReadyToConnect> CREATOR = new Creator();
    private final m connectedDevice;
    private final Shoe connectedShoe;
    private final d eventUUID;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<DeviceFoundAndReadyToConnect> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DeviceFoundAndReadyToConnect createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new DeviceFoundAndReadyToConnect(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), (m) parcel.readParcelable(DeviceFoundAndReadyToConnect.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DeviceFoundAndReadyToConnect[] newArray(int i10) {
            return new DeviceFoundAndReadyToConnect[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceFoundAndReadyToConnect(d dVar, Shoe shoe, m mVar) {
        super(dVar, shoe, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "connectedShoe");
        h.j(mVar, "connectedDevice");
        this.eventUUID = dVar;
        this.connectedShoe = shoe;
        this.connectedDevice = mVar;
    }

    public static /* synthetic */ DeviceFoundAndReadyToConnect copy$default(DeviceFoundAndReadyToConnect deviceFoundAndReadyToConnect, d dVar, Shoe shoe, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = deviceFoundAndReadyToConnect.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = deviceFoundAndReadyToConnect.connectedShoe;
        }
        if ((i10 & 4) != 0) {
            mVar = deviceFoundAndReadyToConnect.connectedDevice;
        }
        return deviceFoundAndReadyToConnect.copy(dVar, shoe, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.connectedShoe;
    }

    public final m component3() {
        return this.connectedDevice;
    }

    public final DeviceFoundAndReadyToConnect copy(d dVar, Shoe shoe, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "connectedShoe");
        h.j(mVar, "connectedDevice");
        return new DeviceFoundAndReadyToConnect(dVar, shoe, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceFoundAndReadyToConnect)) {
            return false;
        }
        DeviceFoundAndReadyToConnect deviceFoundAndReadyToConnect = (DeviceFoundAndReadyToConnect) obj;
        return h.c(getEventUUID(), deviceFoundAndReadyToConnect.getEventUUID()) && this.connectedShoe == deviceFoundAndReadyToConnect.connectedShoe && h.c(this.connectedDevice, deviceFoundAndReadyToConnect.connectedDevice);
    }

    public final m getConnectedDevice() {
        return this.connectedDevice;
    }

    public final Shoe getConnectedShoe() {
        return this.connectedShoe;
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        return this.connectedDevice.hashCode() + f.b(this.connectedShoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.connectedShoe;
        m mVar = this.connectedDevice;
        StringBuilder sbG = r0.g("DeviceFoundAndReadyToConnect(eventUUID=", eventUUID, ", connectedShoe=", shoe, ", connectedDevice=");
        sbG.append(mVar);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.connectedShoe.name());
        parcel.writeParcelable(this.connectedDevice, i10);
    }
}
