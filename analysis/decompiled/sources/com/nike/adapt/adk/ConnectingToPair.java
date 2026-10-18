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
public final class ConnectingToPair extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<ConnectingToPair> CREATOR = new Creator();
    private final m connectingDevice;
    private final Shoe connectingShoe;
    private final d eventUUID;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<ConnectingToPair> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ConnectingToPair createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new ConnectingToPair(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), (m) parcel.readParcelable(ConnectingToPair.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ConnectingToPair[] newArray(int i10) {
            return new ConnectingToPair[i10];
        }
    }

    public /* synthetic */ ConnectingToPair(d dVar, Shoe shoe, m mVar, int i10, rd.h hVar) {
        this(dVar, shoe, (i10 & 4) != 0 ? null : mVar);
    }

    public static /* synthetic */ ConnectingToPair copy$default(ConnectingToPair connectingToPair, d dVar, Shoe shoe, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = connectingToPair.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = connectingToPair.connectingShoe;
        }
        if ((i10 & 4) != 0) {
            mVar = connectingToPair.connectingDevice;
        }
        return connectingToPair.copy(dVar, shoe, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.connectingShoe;
    }

    public final m component3() {
        return this.connectingDevice;
    }

    public final ConnectingToPair copy(d dVar, Shoe shoe, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "connectingShoe");
        return new ConnectingToPair(dVar, shoe, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConnectingToPair)) {
            return false;
        }
        ConnectingToPair connectingToPair = (ConnectingToPair) obj;
        return h.c(getEventUUID(), connectingToPair.getEventUUID()) && this.connectingShoe == connectingToPair.connectingShoe && h.c(this.connectingDevice, connectingToPair.connectingDevice);
    }

    public final m getConnectingDevice() {
        return this.connectingDevice;
    }

    public final Shoe getConnectingShoe() {
        return this.connectingShoe;
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        int iB = f.b(this.connectingShoe, getEventUUID().hashCode() * 31, 31);
        m mVar = this.connectingDevice;
        return iB + (mVar == null ? 0 : mVar.hashCode());
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.connectingShoe;
        m mVar = this.connectingDevice;
        StringBuilder sbG = r0.g("ConnectingToPair(eventUUID=", eventUUID, ", connectingShoe=", shoe, ", connectingDevice=");
        sbG.append(mVar);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.connectingShoe.name());
        parcel.writeParcelable(this.connectingDevice, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectingToPair(d dVar, Shoe shoe, m mVar) {
        super(dVar, shoe, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "connectingShoe");
        this.eventUUID = dVar;
        this.connectingShoe = shoe;
        this.connectingDevice = mVar;
    }
}
