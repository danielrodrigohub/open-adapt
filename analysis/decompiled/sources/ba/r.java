package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Parcelable {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3730j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3731k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3732l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3733m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3734n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3736p;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    public r(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f3728h = i10;
        this.f3729i = i11;
        this.f3730j = i12;
        this.f3731k = i13;
        this.f3732l = i14;
        this.f3733m = i15;
        this.f3734n = i16;
        this.f3735o = i17;
        this.f3736p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f3728h == rVar.f3728h && this.f3729i == rVar.f3729i && this.f3730j == rVar.f3730j && this.f3731k == rVar.f3731k && this.f3732l == rVar.f3732l && this.f3733m == rVar.f3733m && this.f3734n == rVar.f3734n && this.f3735o == rVar.f3735o && this.f3736p == rVar.f3736p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3736p) + r0.e(this.f3735o, r0.e(this.f3734n, r0.e(this.f3733m, r0.e(this.f3732l, r0.e(this.f3731k, r0.e(this.f3730j, r0.e(this.f3729i, Integer.hashCode(this.f3728h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f3728h;
        int i11 = this.f3729i;
        int i12 = this.f3730j;
        int i13 = this.f3731k;
        int i14 = this.f3732l;
        int i15 = this.f3733m;
        int i16 = this.f3734n;
        int i17 = this.f3735o;
        int i18 = this.f3736p;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("CurrentStats(histo0=", i10, ", histo1=", i11, ", histo2=");
        a1.d.e(sbB, i12, ", histo3=", i13, ", histo4=");
        a1.d.e(sbB, i14, ", histo5=", i15, ", histo6=");
        a1.d.e(sbB, i16, ", histo7=", i17, ", histo8=");
        return androidx.recyclerview.widget.s.a(sbB, i18, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3728h);
        parcel.writeInt(this.f3729i);
        parcel.writeInt(this.f3730j);
        parcel.writeInt(this.f3731k);
        parcel.writeInt(this.f3732l);
        parcel.writeInt(this.f3733m);
        parcel.writeInt(this.f3734n);
        parcel.writeInt(this.f3735o);
        parcel.writeInt(this.f3736p);
    }
}
