package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3690h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3691i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3692j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3693k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3694l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3695m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3696n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3697o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3698p;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<i0> {
        @Override // android.os.Parcelable.Creator
        public final i0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final i0[] newArray(int i10) {
            return new i0[i10];
        }
    }

    public i0(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f3690h = i10;
        this.f3691i = i11;
        this.f3692j = i12;
        this.f3693k = i13;
        this.f3694l = i14;
        this.f3695m = i15;
        this.f3696n = i16;
        this.f3697o = i17;
        this.f3698p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return this.f3690h == i0Var.f3690h && this.f3691i == i0Var.f3691i && this.f3692j == i0Var.f3692j && this.f3693k == i0Var.f3693k && this.f3694l == i0Var.f3694l && this.f3695m == i0Var.f3695m && this.f3696n == i0Var.f3696n && this.f3697o == i0Var.f3697o && this.f3698p == i0Var.f3698p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3698p) + r0.e(this.f3697o, r0.e(this.f3696n, r0.e(this.f3695m, r0.e(this.f3694l, r0.e(this.f3693k, r0.e(this.f3692j, r0.e(this.f3691i, Integer.hashCode(this.f3690h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f3690h;
        int i11 = this.f3691i;
        int i12 = this.f3692j;
        int i13 = this.f3693k;
        int i14 = this.f3694l;
        int i15 = this.f3695m;
        int i16 = this.f3696n;
        int i17 = this.f3697o;
        int i18 = this.f3698p;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("ServoStats(autolaceTightenCt=", i10, ", buttonManualLoosenCt=", i11, ", buttonManualTightenCt=");
        a1.d.e(sbB, i12, ", idleTimeSec=", i13, ", lacedTimeSec=");
        a1.d.e(sbB, i14, ", loosenSpool_deg=", i15, ", maxTightenCt=");
        a1.d.e(sbB, i16, ", presetChangeCt=", i17, ", tightenSpoolDeg=");
        return androidx.recyclerview.widget.s.a(sbB, i18, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3690h);
        parcel.writeInt(this.f3691i);
        parcel.writeInt(this.f3692j);
        parcel.writeInt(this.f3693k);
        parcel.writeInt(this.f3694l);
        parcel.writeInt(this.f3695m);
        parcel.writeInt(this.f3696n);
        parcel.writeInt(this.f3697o);
        parcel.writeInt(this.f3698p);
    }
}
