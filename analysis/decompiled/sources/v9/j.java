package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends n0 {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w9.a f16646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16648k;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j(w9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(w9.a aVar, String str) {
        super(aVar.f17253h);
        p4.h.j(aVar, "shoe");
        this.f16646i = aVar;
        this.f16647j = str;
        this.f16648k = "The request of: " + aVar.f17254i + " for device(s) " + str + " could not be processed as the devices are not currently connected. Call connect on the device(s) first";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return p4.h.c(this.f16646i, jVar.f16646i) && p4.h.c(this.f16647j, jVar.f16647j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16648k;
    }

    public final int hashCode() {
        int iHashCode = this.f16646i.hashCode() * 31;
        String str = this.f16647j;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitDeviceNotConnected(shoe=" + this.f16646i + ", deviceId=" + this.f16647j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16646i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16647j);
    }
}
