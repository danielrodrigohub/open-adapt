package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10987i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10988j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10989k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10990l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f10991m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10992n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f10993o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f10994p;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f10986h = i10;
        this.f10987i = i11;
        this.f10988j = i12;
        this.f10989k = i13;
        this.f10990l = i14;
        this.f10991m = i15;
        this.f10992n = i16;
        this.f10993o = i17;
        this.f10994p = i18;
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
        return this.f10986h == dVar.f10986h && this.f10987i == dVar.f10987i && this.f10988j == dVar.f10988j && this.f10989k == dVar.f10989k && this.f10990l == dVar.f10990l && this.f10991m == dVar.f10991m && this.f10992n == dVar.f10992n && this.f10993o == dVar.f10993o && this.f10994p == dVar.f10994p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10994p) + r0.e(this.f10993o, r0.e(this.f10992n, r0.e(this.f10991m, r0.e(this.f10990l, r0.e(this.f10989k, r0.e(this.f10988j, r0.e(this.f10987i, Integer.hashCode(this.f10986h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BatteryStats(batteryIdlePercent=");
        sbC.append(this.f10986h);
        sbC.append(", batteryLacingPercent=");
        sbC.append(this.f10987i);
        sbC.append(", batterySleepPercent=");
        sbC.append(this.f10988j);
        sbC.append(", chargeCt=");
        sbC.append(this.f10989k);
        sbC.append(", lifetimeSec=");
        sbC.append(this.f10990l);
        sbC.append(", onChargerCt=");
        sbC.append(this.f10991m);
        sbC.append(", timeChargingSec=");
        sbC.append(this.f10992n);
        sbC.append(", timeOnChargerSec=");
        sbC.append(this.f10993o);
        sbC.append(", timeSleepingSec=");
        return a0.b.b(sbC, this.f10994p, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f10986h);
        parcel.writeInt(this.f10987i);
        parcel.writeInt(this.f10988j);
        parcel.writeInt(this.f10989k);
        parcel.writeInt(this.f10990l);
        parcel.writeInt(this.f10991m);
        parcel.writeInt(this.f10992n);
        parcel.writeInt(this.f10993o);
        parcel.writeInt(this.f10994p);
    }
}
