package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3709i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3710j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3711k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3712l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3713m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3714n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3715o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3716p;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f3708h = i10;
        this.f3709i = i11;
        this.f3710j = i12;
        this.f3711k = i13;
        this.f3712l = i14;
        this.f3713m = i15;
        this.f3714n = i16;
        this.f3715o = i17;
        this.f3716p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f3708h == mVar.f3708h && this.f3709i == mVar.f3709i && this.f3710j == mVar.f3710j && this.f3711k == mVar.f3711k && this.f3712l == mVar.f3712l && this.f3713m == mVar.f3713m && this.f3714n == mVar.f3714n && this.f3715o == mVar.f3715o && this.f3716p == mVar.f3716p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3716p) + r0.e(this.f3715o, r0.e(this.f3714n, r0.e(this.f3713m, r0.e(this.f3712l, r0.e(this.f3711k, r0.e(this.f3710j, r0.e(this.f3709i, Integer.hashCode(this.f3708h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f3708h;
        int i11 = this.f3709i;
        int i12 = this.f3710j;
        int i13 = this.f3711k;
        int i14 = this.f3712l;
        int i15 = this.f3713m;
        int i16 = this.f3714n;
        int i17 = this.f3715o;
        int i18 = this.f3716p;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("BatteryStats(batteryIdlePercent=", i10, ", batteryLacingPercent=", i11, ", batterySleepPercent=");
        a1.d.e(sbB, i12, ", chargeCt=", i13, ", lifetimeSec=");
        a1.d.e(sbB, i14, ", onChargerCt=", i15, ", timeChargingSec=");
        a1.d.e(sbB, i16, ", timeOnChargerSec=", i17, ", timeSleepingSec=");
        return androidx.recyclerview.widget.s.a(sbB, i18, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3708h);
        parcel.writeInt(this.f3709i);
        parcel.writeInt(this.f3710j);
        parcel.writeInt(this.f3711k);
        parcel.writeInt(this.f3712l);
        parcel.writeInt(this.f3713m);
        parcel.writeInt(this.f3714n);
        parcel.writeInt(this.f3715o);
        parcel.writeInt(this.f3716p);
    }
}
