package ea;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6610h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6611i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6612j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f6613k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f6614l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f6615m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6616n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f6617o;

    /* JADX INFO: compiled from: AdaptKitDevice.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(String str, String str2, String str3, String str4, String str5, int i10, boolean z10) {
        p4.h.j(str2, "scanningKey");
        p4.h.j(str3, "deviceId");
        p4.h.j(str4, "connectionAddress");
        p4.h.j(str5, "authenticationKey");
        this.f6610h = str;
        this.f6611i = str2;
        this.f6612j = str3;
        this.f6613k = str4;
        this.f6614l = str5;
        this.f6615m = i10;
        this.f6616n = z10;
        yd.s.j0(str3, 'R', true);
        this.f6617o = Arrays.equals(g7.b.f(str5), hc.b.f8408j);
    }

    public static b a(b bVar, String str, String str2, int i10, boolean z10, int i11) {
        String str3 = (i11 & 1) != 0 ? bVar.f6610h : null;
        String str4 = (i11 & 2) != 0 ? bVar.f6611i : null;
        String str5 = (i11 & 4) != 0 ? bVar.f6612j : null;
        if ((i11 & 8) != 0) {
            str = bVar.f6613k;
        }
        String str6 = str;
        if ((i11 & 16) != 0) {
            str2 = bVar.f6614l;
        }
        String str7 = str2;
        if ((i11 & 32) != 0) {
            i10 = bVar.f6615m;
        }
        int i12 = i10;
        if ((i11 & 64) != 0) {
            z10 = bVar.f6616n;
        }
        Objects.requireNonNull(bVar);
        p4.h.j(str4, "scanningKey");
        p4.h.j(str5, "deviceId");
        p4.h.j(str6, "connectionAddress");
        p4.h.j(str7, "authenticationKey");
        return new b(str3, str4, str5, str6, str7, i12, z10);
    }

    public final int b() {
        return this.f6615m;
    }

    public final String c() {
        String str = this.f6610h;
        String str2 = this.f6611i;
        String str3 = this.f6612j;
        String str4 = this.f6613k;
        int i10 = this.f6615m;
        boolean z10 = this.f6616n;
        StringBuilder sbA = k1.a.a("AdaptKitDevice[colorway: ", str, " scanningKey: ", str2, " deviceId: ");
        a1.d.g(sbA, str3, " connectionAddress: ", str4, " maxTightness: ");
        sbA.append(i10);
        sbA.append(" hasConnectedLocally: ");
        sbA.append(z10);
        sbA.append("]");
        return sbA.toString();
    }

    public final boolean d(b bVar) {
        p4.h.j(bVar, "other");
        return p4.h.c(this.f6612j, bVar.f6612j) && p4.h.c(this.f6611i, bVar.f6611i);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p4.h.c(b.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        p4.h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitDevice");
        b bVar = (b) obj;
        return p4.h.c(this.f6610h, bVar.f6610h) && p4.h.c(this.f6611i, bVar.f6611i) && p4.h.c(this.f6612j, bVar.f6612j) && p4.h.c(this.f6613k, bVar.f6613k) && p4.h.c(this.f6614l, bVar.f6614l) && this.f6615m == bVar.f6615m && this.f6616n == bVar.f6616n;
    }

    public final int hashCode() {
        return this.f6611i.hashCode();
    }

    public final String toString() {
        String str = this.f6610h;
        String str2 = this.f6611i;
        String str3 = this.f6612j;
        String str4 = this.f6613k;
        String str5 = this.f6614l;
        int i10 = this.f6615m;
        boolean z10 = this.f6616n;
        StringBuilder sbA = k1.a.a("AdaptKitDevice(colorway=", str, ", scanningKey=", str2, ", deviceId=");
        a1.d.g(sbA, str3, ", connectionAddress=", str4, ", authenticationKey=");
        sbA.append(str5);
        sbA.append(", maxTightness=");
        sbA.append(i10);
        sbA.append(", hasConnectedLocally=");
        sbA.append(z10);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f6610h);
        parcel.writeString(this.f6611i);
        parcel.writeString(this.f6612j);
        parcel.writeString(this.f6613k);
        parcel.writeString(this.f6614l);
        parcel.writeInt(this.f6615m);
        parcel.writeInt(this.f6616n ? 1 : 0);
    }
}
