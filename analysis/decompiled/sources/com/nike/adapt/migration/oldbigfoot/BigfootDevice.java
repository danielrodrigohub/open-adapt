package com.nike.adapt.migration.oldbigfoot;

import a1.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.s;
import k1.a;
import p4.h;

/* JADX INFO: compiled from: BigfootDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootDevice implements Parcelable {
    public static final Parcelable.Creator<BigfootDevice> CREATOR = new Creator();
    private final String authenticationKey;
    private final String connectionAddress;
    private final int maxTightness;
    private final String scanningKey;
    private final String stringIdentifier;

    /* JADX INFO: compiled from: BigfootDevice.kt */
    public static final class Creator implements Parcelable.Creator<BigfootDevice> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDevice createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new BigfootDevice(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BigfootDevice[] newArray(int i10) {
            return new BigfootDevice[i10];
        }
    }

    public BigfootDevice(String str, String str2, String str3, String str4, int i10) {
        h.j(str, "scanningKey");
        h.j(str2, "stringIdentifier");
        h.j(str3, "connectionAddress");
        h.j(str4, "authenticationKey");
        this.scanningKey = str;
        this.stringIdentifier = str2;
        this.connectionAddress = str3;
        this.authenticationKey = str4;
        this.maxTightness = i10;
    }

    public static /* synthetic */ BigfootDevice copy$default(BigfootDevice bigfootDevice, String str, String str2, String str3, String str4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bigfootDevice.scanningKey;
        }
        if ((i11 & 2) != 0) {
            str2 = bigfootDevice.stringIdentifier;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = bigfootDevice.connectionAddress;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = bigfootDevice.authenticationKey;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            i10 = bigfootDevice.maxTightness;
        }
        return bigfootDevice.copy(str, str5, str6, str7, i10);
    }

    public final String component1() {
        return this.scanningKey;
    }

    public final String component2() {
        return this.stringIdentifier;
    }

    public final String component3() {
        return this.connectionAddress;
    }

    public final String component4() {
        return this.authenticationKey;
    }

    public final int component5() {
        return this.maxTightness;
    }

    public final BigfootDevice copy(String str, String str2, String str3, String str4, int i10) {
        h.j(str, "scanningKey");
        h.j(str2, "stringIdentifier");
        h.j(str3, "connectionAddress");
        h.j(str4, "authenticationKey");
        return new BigfootDevice(str, str2, str3, str4, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!h.c(BigfootDevice.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        h.h(obj, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootDevice");
        return h.c(this.scanningKey, ((BigfootDevice) obj).scanningKey);
    }

    public final String getAuthenticationKey() {
        return this.authenticationKey;
    }

    public final String getConnectionAddress() {
        return this.connectionAddress;
    }

    public final int getMaxTightness() {
        return this.maxTightness;
    }

    public final String getScanningKey() {
        return this.scanningKey;
    }

    public final String getStringIdentifier() {
        return this.stringIdentifier;
    }

    public int hashCode() {
        return this.scanningKey.hashCode();
    }

    public String toString() {
        String str = this.scanningKey;
        String str2 = this.stringIdentifier;
        String str3 = this.connectionAddress;
        String str4 = this.authenticationKey;
        int i10 = this.maxTightness;
        StringBuilder sbA = a.a("BigfootDevice(scanningKey=", str, ", stringIdentifier=", str2, ", connectionAddress=");
        d.g(sbA, str3, ", authenticationKey=", str4, ", maxTightness=");
        return s.a(sbA, i10, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.scanningKey);
        parcel.writeString(this.stringIdentifier);
        parcel.writeString(this.connectionAddress);
        parcel.writeString(this.authenticationKey);
        parcel.writeInt(this.maxTightness);
    }
}
