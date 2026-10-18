package ka;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: AdaptKitScannedDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9757h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9758i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9759j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9760k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9761l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f9762m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f9763n;

    /* JADX INFO: compiled from: AdaptKitScannedDevice.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new c(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(String str, String str2, String str3, String str4, int i10) {
        h.j(str, "modelStyleColor");
        h.j(str2, "address");
        h.j(str3, "scanIdentifier");
        h.j(str4, "deviceId");
        this.f9757h = str;
        this.f9758i = str2;
        this.f9759j = str3;
        this.f9760k = str4;
        this.f9761l = i10;
        boolean zJ0 = s.j0(str4, 'R', true);
        this.f9762m = zJ0;
        this.f9763n = !zJ0;
    }

    public final String a() {
        String str = this.f9759j;
        String str2 = this.f9757h;
        String str3 = this.f9758i;
        String str4 = this.f9760k;
        int i10 = this.f9761l;
        StringBuilder sbA = k1.a.a("AdaptKitScannedDevice[scanIdentifier: ", str, " modelStyleColor: ", str2, " address: ");
        a1.d.g(sbA, str3, " deviceId: ", str4, " rssi: ");
        return androidx.recyclerview.widget.s.a(sbA, i10, "]");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!h.c(c.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.model.scanner.AdaptKitScannedDevice");
        c cVar = (c) obj;
        return h.c(this.f9758i, cVar.f9758i) && h.c(this.f9759j, cVar.f9759j) && h.c(this.f9760k, cVar.f9760k) && this.f9762m == cVar.f9762m && this.f9763n == cVar.f9763n && this.f9761l == cVar.f9761l;
    }

    public final int hashCode() {
        return this.f9758i.hashCode();
    }

    public final String toString() {
        String str = this.f9757h;
        String str2 = this.f9758i;
        String str3 = this.f9759j;
        String str4 = this.f9760k;
        int i10 = this.f9761l;
        StringBuilder sbA = k1.a.a("AdaptKitScannedDevice(modelStyleColor=", str, ", address=", str2, ", scanIdentifier=");
        a1.d.g(sbA, str3, ", deviceId=", str4, ", rssi=");
        return androidx.recyclerview.widget.s.a(sbA, i10, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f9757h);
        parcel.writeString(this.f9758i);
        parcel.writeString(this.f9759j);
        parcel.writeString(this.f9760k);
        parcel.writeInt(this.f9761l);
    }
}
