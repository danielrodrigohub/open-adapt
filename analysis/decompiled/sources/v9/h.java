package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends n0 {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w9.a f16575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16577k;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h(w9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(w9.a aVar, String str) {
        super(aVar.f17253h);
        p4.h.j(aVar, "shoe");
        this.f16575i = aVar;
        this.f16576j = str;
        this.f16577k = "The connect request of: " + aVar.f17254i + " for device(s) " + str + " is currently connected. No need to call connect";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return p4.h.c(this.f16575i, hVar.f16575i) && p4.h.c(this.f16576j, hVar.f16576j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16577k;
    }

    public final int hashCode() {
        int iHashCode = this.f16575i.hashCode() * 31;
        String str = this.f16576j;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitDeviceAlreadyConnected(shoe=" + this.f16575i + ", deviceId=" + this.f16576j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16575i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16576j);
    }
}
