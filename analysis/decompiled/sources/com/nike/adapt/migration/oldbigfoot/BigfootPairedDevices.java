package com.nike.adapt.migration.oldbigfoot;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.model.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: BigfootPairedDevices.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootPairedDevices implements Parcelable {
    public static final Parcelable.Creator<BigfootPairedDevices> CREATOR = new Creator();
    private final String colorWay;
    private final boolean hasConnectedLocally;
    private final boolean isDefault;
    private final String lastSnapshotUsedName;
    private final BigfootDevice leftDevice;
    private final long localUpdatedMillis;
    private final String pairId;
    private final String pairName;
    private final BigfootDevice rightDevice;
    private final boolean scheduledForDeletion;
    private final List<BigfootDevicePreset> snapshots;

    /* JADX INFO: compiled from: BigfootPairedDevices.kt */
    public static final class Creator implements Parcelable.Creator<BigfootPairedDevices> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootPairedDevices createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            boolean z10 = parcel.readInt() != 0;
            Parcelable.Creator<BigfootDevice> creator = BigfootDevice.CREATOR;
            BigfootDevice bigfootDeviceCreateFromParcel = creator.createFromParcel(parcel);
            BigfootDevice bigfootDeviceCreateFromParcel2 = creator.createFromParcel(parcel);
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = a.c(BigfootDevicePreset.CREATOR, parcel, arrayList, iC, 1);
            }
            return new BigfootPairedDevices(string, string2, z10, bigfootDeviceCreateFromParcel, bigfootDeviceCreateFromParcel2, string3, string4, arrayList, parcel.readLong(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootPairedDevices[] newArray(int i10) {
            return new BigfootPairedDevices[i10];
        }
    }

    public BigfootPairedDevices(String str, String str2, boolean z10, BigfootDevice bigfootDevice, BigfootDevice bigfootDevice2, String str3, String str4, List<BigfootDevicePreset> list, long j10, boolean z11, boolean z12) {
        h.j(str, "pairId");
        h.j(str2, "pairName");
        h.j(bigfootDevice, "leftDevice");
        h.j(bigfootDevice2, "rightDevice");
        h.j(list, "snapshots");
        this.pairId = str;
        this.pairName = str2;
        this.isDefault = z10;
        this.leftDevice = bigfootDevice;
        this.rightDevice = bigfootDevice2;
        this.lastSnapshotUsedName = str3;
        this.colorWay = str4;
        this.snapshots = list;
        this.localUpdatedMillis = j10;
        this.scheduledForDeletion = z11;
        this.hasConnectedLocally = z12;
    }

    public final String component1() {
        return this.pairId;
    }

    public final boolean component10() {
        return this.scheduledForDeletion;
    }

    public final boolean component11() {
        return this.hasConnectedLocally;
    }

    public final String component2() {
        return this.pairName;
    }

    public final boolean component3() {
        return this.isDefault;
    }

    public final BigfootDevice component4() {
        return this.leftDevice;
    }

    public final BigfootDevice component5() {
        return this.rightDevice;
    }

    public final String component6() {
        return this.lastSnapshotUsedName;
    }

    public final String component7() {
        return this.colorWay;
    }

    public final List<BigfootDevicePreset> component8() {
        return this.snapshots;
    }

    public final long component9() {
        return this.localUpdatedMillis;
    }

    public final BigfootPairedDevices copy(String str, String str2, boolean z10, BigfootDevice bigfootDevice, BigfootDevice bigfootDevice2, String str3, String str4, List<BigfootDevicePreset> list, long j10, boolean z11, boolean z12) {
        h.j(str, "pairId");
        h.j(str2, "pairName");
        h.j(bigfootDevice, "leftDevice");
        h.j(bigfootDevice2, "rightDevice");
        h.j(list, "snapshots");
        return new BigfootPairedDevices(str, str2, z10, bigfootDevice, bigfootDevice2, str3, str4, list, j10, z11, z12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!h.c(BigfootPairedDevices.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        h.h(obj, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices");
        return h.c(this.pairId, ((BigfootPairedDevices) obj).pairId);
    }

    public final String getColorWay() {
        return this.colorWay;
    }

    public final boolean getHasConnectedLocally() {
        return this.hasConnectedLocally;
    }

    public final String getLastSnapshotUsedName() {
        return this.lastSnapshotUsedName;
    }

    public final BigfootDevice getLeftDevice() {
        return this.leftDevice;
    }

    public final long getLocalUpdatedMillis() {
        return this.localUpdatedMillis;
    }

    public final String getPairId() {
        return this.pairId;
    }

    public final String getPairName() {
        return this.pairName;
    }

    public final BigfootDevice getRightDevice() {
        return this.rightDevice;
    }

    public final boolean getScheduledForDeletion() {
        return this.scheduledForDeletion;
    }

    public final List<BigfootDevicePreset> getSnapshots() {
        return this.snapshots;
    }

    public int hashCode() {
        return this.pairId.hashCode();
    }

    public final boolean isDefault() {
        return this.isDefault;
    }

    public final boolean shallowEquals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!h.c(BigfootPairedDevices.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        h.h(obj, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices");
        BigfootPairedDevices bigfootPairedDevices = (BigfootPairedDevices) obj;
        return h.c(this.pairId, bigfootPairedDevices.pairId) && h.c(this.leftDevice, bigfootPairedDevices.leftDevice) && h.c(this.rightDevice, bigfootPairedDevices.rightDevice);
    }

    public String toString() {
        String str = this.pairId;
        String str2 = this.pairName;
        boolean z10 = this.isDefault;
        BigfootDevice bigfootDevice = this.leftDevice;
        BigfootDevice bigfootDevice2 = this.rightDevice;
        String str3 = this.lastSnapshotUsedName;
        String str4 = this.colorWay;
        List<BigfootDevicePreset> list = this.snapshots;
        long j10 = this.localUpdatedMillis;
        boolean z11 = this.scheduledForDeletion;
        boolean z12 = this.hasConnectedLocally;
        StringBuilder sbA = k1.a.a("BigfootPairedDevices(pairId=", str, ", pairName=", str2, ", isDefault=");
        sbA.append(z10);
        sbA.append(", leftDevice=");
        sbA.append(bigfootDevice);
        sbA.append(", rightDevice=");
        sbA.append(bigfootDevice2);
        sbA.append(", lastSnapshotUsedName=");
        sbA.append(str3);
        sbA.append(", colorWay=");
        sbA.append(str4);
        sbA.append(", snapshots=");
        sbA.append(list);
        sbA.append(", localUpdatedMillis=");
        sbA.append(j10);
        sbA.append(", scheduledForDeletion=");
        sbA.append(z11);
        sbA.append(", hasConnectedLocally=");
        sbA.append(z12);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.pairId);
        parcel.writeString(this.pairName);
        parcel.writeInt(this.isDefault ? 1 : 0);
        this.leftDevice.writeToParcel(parcel, i10);
        this.rightDevice.writeToParcel(parcel, i10);
        parcel.writeString(this.lastSnapshotUsedName);
        parcel.writeString(this.colorWay);
        Iterator itD = ca.a.d(this.snapshots, parcel);
        while (itD.hasNext()) {
            ((BigfootDevicePreset) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeLong(this.localUpdatedMillis);
        parcel.writeInt(this.scheduledForDeletion ? 1 : 0);
        parcel.writeInt(this.hasConnectedLocally ? 1 : 0);
    }

    public /* synthetic */ BigfootPairedDevices(String str, String str2, boolean z10, BigfootDevice bigfootDevice, BigfootDevice bigfootDevice2, String str3, String str4, List list, long j10, boolean z11, boolean z12, int i10, rd.h hVar) {
        this(str, str2, z10, bigfootDevice, bigfootDevice2, str3, str4, list, (i10 & 256) != 0 ? 0L : j10, (i10 & 512) != 0 ? false : z11, (i10 & 1024) != 0 ? false : z12);
    }
}
