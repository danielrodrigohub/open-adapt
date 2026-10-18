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

/* JADX INFO: compiled from: AdaptShoesPut.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f16997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f17001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f17002m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f17003n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f17004o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f17005p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final List<c> f17006q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f17007r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f17008s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f17009t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f17010u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f17011v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f17012w;

    /* JADX INFO: compiled from: AdaptShoesPut.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            long j10 = parcel.readLong();
            int iC = 0;
            boolean z10 = parcel.readInt() != 0;
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            int i10 = parcel.readInt();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            while (iC != i11) {
                iC = com.nike.adapt.adk.model.a.c(c.CREATOR, parcel, arrayList, iC, 1);
            }
            return new e(j10, z10, string, string2, string3, string4, i10, string5, string6, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(long j10, boolean z10, String str, String str2, String str3, String str4, int i10, String str5, String str6, List<c> list, String str7, String str8, String str9, int i11, String str10, int i12) {
        h.j(str2, "leftDeviceIdentifier");
        h.j(str3, "leftEngineDiscoveryKey");
        h.j(str4, "leftKey");
        h.j(str5, "pairId");
        h.j(str6, "pairName");
        h.j(str7, "rightDeviceIdentifier");
        h.j(str8, "rightEngineDiscoveryKey");
        h.j(str9, "rightKey");
        this.f16997h = j10;
        this.f16998i = z10;
        this.f16999j = str;
        this.f17000k = str2;
        this.f17001l = str3;
        this.f17002m = str4;
        this.f17003n = i10;
        this.f17004o = str5;
        this.f17005p = str6;
        this.f17006q = list;
        this.f17007r = str7;
        this.f17008s = str8;
        this.f17009t = str9;
        this.f17010u = i11;
        this.f17011v = str10;
        this.f17012w = i12;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f16997h == eVar.f16997h && this.f16998i == eVar.f16998i && h.c(this.f16999j, eVar.f16999j) && h.c(this.f17000k, eVar.f17000k) && h.c(this.f17001l, eVar.f17001l) && h.c(this.f17002m, eVar.f17002m) && this.f17003n == eVar.f17003n && h.c(this.f17004o, eVar.f17004o) && h.c(this.f17005p, eVar.f17005p) && h.c(this.f17006q, eVar.f17006q) && h.c(this.f17007r, eVar.f17007r) && h.c(this.f17008s, eVar.f17008s) && h.c(this.f17009t, eVar.f17009t) && this.f17010u == eVar.f17010u && h.c(this.f17011v, eVar.f17011v) && this.f17012w == eVar.f17012w;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f16997h) * 31;
        boolean z10 = this.f16998i;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode + r10) * 31;
        String str = this.f16999j;
        int iE = r0.e(this.f17010u, f.c(this.f17009t, f.c(this.f17008s, f.c(this.f17007r, g.d(this.f17006q, f.c(this.f17005p, f.c(this.f17004o, r0.e(this.f17003n, f.c(this.f17002m, f.c(this.f17001l, f.c(this.f17000k, (i10 + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
        String str2 = this.f17011v;
        return Integer.hashCode(this.f17012w) + ((iE + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        long j10 = this.f16997h;
        boolean z10 = this.f16998i;
        String str = this.f16999j;
        String str2 = this.f17000k;
        String str3 = this.f17001l;
        String str4 = this.f17002m;
        int i10 = this.f17003n;
        String str5 = this.f17004o;
        String str6 = this.f17005p;
        List<c> list = this.f17006q;
        String str7 = this.f17007r;
        String str8 = this.f17008s;
        String str9 = this.f17009t;
        int i11 = this.f17010u;
        String str10 = this.f17011v;
        int i12 = this.f17012w;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptShoesPut(clientUpdatedDateUTC=");
        sb2.append(j10);
        sb2.append(", isDefault=");
        sb2.append(z10);
        a1.d.g(sb2, ", lastSelectedPreset=", str, ", leftDeviceIdentifier=", str2);
        a1.d.g(sb2, ", leftEngineDiscoveryKey=", str3, ", leftKey=", str4);
        sb2.append(", leftMaxTightness=");
        sb2.append(i10);
        sb2.append(", pairId=");
        sb2.append(str5);
        sb2.append(", pairName=");
        sb2.append(str6);
        sb2.append(", presets=");
        sb2.append(list);
        a1.d.g(sb2, ", rightDeviceIdentifier=", str7, ", rightEngineDiscoveryKey=", str8);
        sb2.append(", rightKey=");
        sb2.append(str9);
        sb2.append(", rightMaxTightness=");
        sb2.append(i11);
        sb2.append(", colorway=");
        sb2.append(str10);
        sb2.append(", deviceType=");
        sb2.append(i12);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeLong(this.f16997h);
        parcel.writeInt(this.f16998i ? 1 : 0);
        parcel.writeString(this.f16999j);
        parcel.writeString(this.f17000k);
        parcel.writeString(this.f17001l);
        parcel.writeString(this.f17002m);
        parcel.writeInt(this.f17003n);
        parcel.writeString(this.f17004o);
        parcel.writeString(this.f17005p);
        Iterator itD = ca.a.d(this.f17006q, parcel);
        while (itD.hasNext()) {
            ((c) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeString(this.f17007r);
        parcel.writeString(this.f17008s);
        parcel.writeString(this.f17009t);
        parcel.writeInt(this.f17010u);
        parcel.writeString(this.f17011v);
        parcel.writeInt(this.f17012w);
    }
}
