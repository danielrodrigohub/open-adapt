package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends n0 {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w9.a f16752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16753j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16754k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16755l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16756m;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        public final p createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p(w9.a.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final p[] newArray(int i10) {
            return new p[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(w9.a aVar, String str, String str2, String str3) {
        super(aVar.f17253h);
        p4.h.j(aVar, "shoe");
        p4.h.j(str, "deviceId");
        p4.h.j(str2, "currentFirmwareVersion");
        p4.h.j(str3, "minimumFirmwareVersion");
        this.f16752i = aVar;
        this.f16753j = str;
        this.f16754k = str2;
        this.f16755l = str3;
        this.f16756m = "The request of: " + aVar.f17254i + " for device(s) " + str + " could not be processed. The minimum firmware version of " + str3 + " is lower than the " + str2 + " of the device.";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return p4.h.c(this.f16752i, pVar.f16752i) && p4.h.c(this.f16753j, pVar.f16753j) && p4.h.c(this.f16754k, pVar.f16754k) && p4.h.c(this.f16755l, pVar.f16755l);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16756m;
    }

    public final int hashCode() {
        return this.f16755l.hashCode() + a1.f.c(this.f16754k, a1.f.c(this.f16753j, this.f16752i.hashCode() * 31, 31), 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitFirmwareVersionOutOfDate(shoe=" + this.f16752i + ", deviceId=" + this.f16753j + ", currentFirmwareVersion=" + this.f16754k + ", minimumFirmwareVersion=" + this.f16755l + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16752i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16753j);
        parcel.writeString(this.f16754k);
        parcel.writeString(this.f16755l);
    }
}
