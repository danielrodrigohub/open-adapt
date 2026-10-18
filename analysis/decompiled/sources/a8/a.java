package a8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0010a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("timeOnChargerSec")
    public final int f487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("batteryLacingPercent")
    public final int f488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("batterySleepPercent")
    public final int f489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("batteryIdlePercent")
    public final int f490k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @f7.b("chargeCt")
    public final int f491l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @f7.b("onChargerCt")
    public final int f492m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @f7.b("lifetimeSec")
    public final int f493n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @f7.b("timeChargingSec")
    public final int f494o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @f7.b("timeSleepingSec")
    public final int f495p;

    /* JADX INFO: renamed from: a8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class C0010a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f487h = i10;
        this.f488i = i11;
        this.f489j = i12;
        this.f490k = i13;
        this.f491l = i14;
        this.f492m = i15;
        this.f493n = i16;
        this.f494o = i17;
        this.f495p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f487h == aVar.f487h && this.f488i == aVar.f488i && this.f489j == aVar.f489j && this.f490k == aVar.f490k && this.f491l == aVar.f491l && this.f492m == aVar.f492m && this.f493n == aVar.f493n && this.f494o == aVar.f494o && this.f495p == aVar.f495p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f495p) + r0.e(this.f494o, r0.e(this.f493n, r0.e(this.f492m, r0.e(this.f491l, r0.e(this.f490k, r0.e(this.f489j, r0.e(this.f488i, Integer.hashCode(this.f487h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f487h;
        int i11 = this.f488i;
        int i12 = this.f489j;
        int i13 = this.f490k;
        int i14 = this.f491l;
        int i15 = this.f492m;
        int i16 = this.f493n;
        int i17 = this.f494o;
        int i18 = this.f495p;
        StringBuilder sbB = s.b("BatteryStats(timeOnChargerSec=", i10, ", batteryLacingPercent=", i11, ", batterySleepPercent=");
        a1.d.e(sbB, i12, ", batteryIdlePercent=", i13, ", chargeCt=");
        a1.d.e(sbB, i14, ", onChargerCt=", i15, ", lifetimeSec=");
        a1.d.e(sbB, i16, ", timeChargingSec=", i17, ", timeSleepingSec=");
        return s.a(sbB, i18, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f487h);
        parcel.writeInt(this.f488i);
        parcel.writeInt(this.f489j);
        parcel.writeInt(this.f490k);
        parcel.writeInt(this.f491l);
        parcel.writeInt(this.f492m);
        parcel.writeInt(this.f493n);
        parcel.writeInt(this.f494o);
        parcel.writeInt(this.f495p);
    }
}
