package va;

import a1.f;
import a4.g;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: AdaptShoesGet.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f16979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16980i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f16981j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f16982k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16983l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16984m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16985n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16986o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f16987p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f16988q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f16989r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List<c> f16990s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f16991t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f16992u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f16993v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f16994w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final long f16995x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f16996y;

    /* JADX INFO: compiled from: AdaptShoesGet.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            long j10 = parcel.readLong();
            String string = parcel.readString();
            long j11 = parcel.readLong();
            int iC = 0;
            boolean z10 = parcel.readInt() != 0;
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            int i10 = parcel.readInt();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            while (iC != i11) {
                iC = com.nike.adapt.adk.model.a.c(c.CREATOR, parcel, arrayList, iC, 1);
                i11 = i11;
                string6 = string6;
            }
            return new d(j10, string, j11, z10, string2, string3, string4, string5, i10, string6, string7, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(long j10, String str, long j11, boolean z10, String str2, String str3, String str4, String str5, int i10, String str6, String str7, List<c> list, String str8, String str9, String str10, int i11, long j12, int i12) {
        h.j(str3, "leftDeviceIdentifier");
        h.j(str4, "leftEngineDiscoveryKey");
        h.j(str5, "leftKey");
        h.j(str6, "pairId");
        h.j(str7, "pairName");
        h.j(str8, "rightDeviceIdentifier");
        h.j(str9, "rightEngineDiscoveryKey");
        h.j(str10, "rightKey");
        this.f16979h = j10;
        this.f16980i = str;
        this.f16981j = j11;
        this.f16982k = z10;
        this.f16983l = str2;
        this.f16984m = str3;
        this.f16985n = str4;
        this.f16986o = str5;
        this.f16987p = i10;
        this.f16988q = str6;
        this.f16989r = str7;
        this.f16990s = list;
        this.f16991t = str8;
        this.f16992u = str9;
        this.f16993v = str10;
        this.f16994w = i11;
        this.f16995x = j12;
        this.f16996y = i12;
    }

    public static d a(d dVar) {
        long j10 = dVar.f16979h;
        String str = dVar.f16980i;
        long j11 = dVar.f16981j;
        String str2 = dVar.f16983l;
        String str3 = dVar.f16984m;
        String str4 = dVar.f16985n;
        String str5 = dVar.f16986o;
        int i10 = dVar.f16987p;
        String str6 = dVar.f16988q;
        String str7 = dVar.f16989r;
        List<c> list = dVar.f16990s;
        String str8 = dVar.f16991t;
        String str9 = dVar.f16992u;
        String str10 = dVar.f16993v;
        int i11 = dVar.f16994w;
        long j12 = dVar.f16995x;
        int i12 = dVar.f16996y;
        h.j(str3, "leftDeviceIdentifier");
        h.j(str4, "leftEngineDiscoveryKey");
        h.j(str5, "leftKey");
        h.j(str6, "pairId");
        h.j(str7, "pairName");
        h.j(list, "presets");
        h.j(str8, "rightDeviceIdentifier");
        h.j(str9, "rightEngineDiscoveryKey");
        h.j(str10, "rightKey");
        return new d(j10, str, j11, false, str2, str3, str4, str5, i10, str6, str7, list, str8, str9, str10, i11, j12, i12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f16979h == dVar.f16979h && h.c(this.f16980i, dVar.f16980i) && this.f16981j == dVar.f16981j && this.f16982k == dVar.f16982k && h.c(this.f16983l, dVar.f16983l) && h.c(this.f16984m, dVar.f16984m) && h.c(this.f16985n, dVar.f16985n) && h.c(this.f16986o, dVar.f16986o) && this.f16987p == dVar.f16987p && h.c(this.f16988q, dVar.f16988q) && h.c(this.f16989r, dVar.f16989r) && h.c(this.f16990s, dVar.f16990s) && h.c(this.f16991t, dVar.f16991t) && h.c(this.f16992u, dVar.f16992u) && h.c(this.f16993v, dVar.f16993v) && this.f16994w == dVar.f16994w && this.f16995x == dVar.f16995x && this.f16996y == dVar.f16996y;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f16979h) * 31;
        String str = this.f16980i;
        int iHashCode2 = (Long.hashCode(this.f16981j) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        boolean z10 = this.f16982k;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode2 + r10) * 31;
        String str2 = this.f16983l;
        return Integer.hashCode(this.f16996y) + ((Long.hashCode(this.f16995x) + r0.e(this.f16994w, f.c(this.f16993v, f.c(this.f16992u, f.c(this.f16991t, g.d(this.f16990s, f.c(this.f16989r, f.c(this.f16988q, r0.e(this.f16987p, f.c(this.f16986o, f.c(this.f16985n, f.c(this.f16984m, (i10 + (str2 != null ? str2.hashCode() : 0)) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31)) * 31);
    }

    public final String toString() {
        long j10 = this.f16979h;
        String str = this.f16980i;
        long j11 = this.f16981j;
        boolean z10 = this.f16982k;
        String str2 = this.f16983l;
        String str3 = this.f16984m;
        String str4 = this.f16985n;
        String str5 = this.f16986o;
        int i10 = this.f16987p;
        String str6 = this.f16988q;
        String str7 = this.f16989r;
        List<c> list = this.f16990s;
        String str8 = this.f16991t;
        String str9 = this.f16992u;
        String str10 = this.f16993v;
        int i11 = this.f16994w;
        long j12 = this.f16995x;
        int i12 = this.f16996y;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptShoesGet(clientUpdatedDateUTC=");
        sb2.append(j10);
        sb2.append(", colorway=");
        sb2.append(str);
        sb2.append(", createdDateUTC=");
        sb2.append(j11);
        sb2.append(", isDefault=");
        sb2.append(z10);
        sb2.append(", lastSelectedPreset=");
        sb2.append(str2);
        sb2.append(", leftDeviceIdentifier=");
        a1.d.g(sb2, str3, ", leftEngineDiscoveryKey=", str4, ", leftKey=");
        sb2.append(str5);
        sb2.append(", leftMaxTightness=");
        sb2.append(i10);
        sb2.append(", pairId=");
        a1.d.g(sb2, str6, ", pairName=", str7, ", presets=");
        sb2.append(list);
        sb2.append(", rightDeviceIdentifier=");
        sb2.append(str8);
        sb2.append(", rightEngineDiscoveryKey=");
        a1.d.g(sb2, str9, ", rightKey=", str10, ", rightMaxTightness=");
        sb2.append(i11);
        sb2.append(", updatedDateUTC=");
        sb2.append(j12);
        sb2.append(", deviceType=");
        sb2.append(i12);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeLong(this.f16979h);
        parcel.writeString(this.f16980i);
        parcel.writeLong(this.f16981j);
        parcel.writeInt(this.f16982k ? 1 : 0);
        parcel.writeString(this.f16983l);
        parcel.writeString(this.f16984m);
        parcel.writeString(this.f16985n);
        parcel.writeString(this.f16986o);
        parcel.writeInt(this.f16987p);
        parcel.writeString(this.f16988q);
        parcel.writeString(this.f16989r);
        Iterator itD = ca.a.d(this.f16990s, parcel);
        while (itD.hasNext()) {
            ((c) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeString(this.f16991t);
        parcel.writeString(this.f16992u);
        parcel.writeString(this.f16993v);
        parcel.writeInt(this.f16994w);
        parcel.writeLong(this.f16995x);
        parcel.writeInt(this.f16996y);
    }
}
