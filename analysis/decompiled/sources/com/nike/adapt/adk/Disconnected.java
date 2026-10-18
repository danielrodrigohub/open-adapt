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
public final class Disconnected extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<Disconnected> CREATOR = new Creator();
    private final m disconnectedDevice;
    private final Shoe disconnectedShoe;
    private final d eventUUID;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<Disconnected> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Disconnected createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new Disconnected(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), (m) parcel.readParcelable(Disconnected.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Disconnected[] newArray(int i10) {
            return new Disconnected[i10];
        }
    }

    public /* synthetic */ Disconnected(d dVar, Shoe shoe, m mVar, int i10, rd.h hVar) {
        this(dVar, shoe, (i10 & 4) != 0 ? null : mVar);
    }

    public static /* synthetic */ Disconnected copy$default(Disconnected disconnected, d dVar, Shoe shoe, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = disconnected.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = disconnected.disconnectedShoe;
        }
        if ((i10 & 4) != 0) {
            mVar = disconnected.disconnectedDevice;
        }
        return disconnected.copy(dVar, shoe, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.disconnectedShoe;
    }

    public final m component3() {
        return this.disconnectedDevice;
    }

    public final Disconnected copy(d dVar, Shoe shoe, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "disconnectedShoe");
        return new Disconnected(dVar, shoe, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Disconnected)) {
            return false;
        }
        Disconnected disconnected = (Disconnected) obj;
        return h.c(getEventUUID(), disconnected.getEventUUID()) && this.disconnectedShoe == disconnected.disconnectedShoe && h.c(this.disconnectedDevice, disconnected.disconnectedDevice);
    }

    public final m getDisconnectedDevice() {
        return this.disconnectedDevice;
    }

    public final Shoe getDisconnectedShoe() {
        return this.disconnectedShoe;
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        int iB = f.b(this.disconnectedShoe, getEventUUID().hashCode() * 31, 31);
        m mVar = this.disconnectedDevice;
        return iB + (mVar == null ? 0 : mVar.hashCode());
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.disconnectedShoe;
        m mVar = this.disconnectedDevice;
        StringBuilder sbG = r0.g("Disconnected(eventUUID=", eventUUID, ", disconnectedShoe=", shoe, ", disconnectedDevice=");
        sbG.append(mVar);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.disconnectedShoe.name());
        parcel.writeParcelable(this.disconnectedDevice, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Disconnected(d dVar, Shoe shoe, m mVar) {
        super(dVar, shoe, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "disconnectedShoe");
        this.eventUUID = dVar;
        this.disconnectedShoe = shoe;
        this.disconnectedDevice = mVar;
    }
}
