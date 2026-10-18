package a8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("buttonManualLoosenCt")
    public final int f509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("autolaceTightenCt")
    public final int f510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @f7.b("idleTimeSec")
    public final int f511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @f7.b("tightenSpoolDeg")
    public final int f512k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @f7.b("lacedTimeSec")
    public final int f513l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @f7.b("loosenSpoolDeg")
    public final int f514m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @f7.b("buttonManualTightenCt")
    public final int f515n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @f7.b("maxTightenCt")
    public final int f516o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @f7.b("presetChangeCt")
    public final int f517p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @f7.b("homingRoutineCt")
    public final int f518q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @f7.b("overCurrentEventCt")
    public final int f519r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @f7.b("buttonServoFaultCt")
    public final int f520s;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21) {
        this.f509h = i10;
        this.f510i = i11;
        this.f511j = i12;
        this.f512k = i13;
        this.f513l = i14;
        this.f514m = i15;
        this.f515n = i16;
        this.f516o = i17;
        this.f517p = i18;
        this.f518q = i19;
        this.f519r = i20;
        this.f520s = i21;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f509h == gVar.f509h && this.f510i == gVar.f510i && this.f511j == gVar.f511j && this.f512k == gVar.f512k && this.f513l == gVar.f513l && this.f514m == gVar.f514m && this.f515n == gVar.f515n && this.f516o == gVar.f516o && this.f517p == gVar.f517p && this.f518q == gVar.f518q && this.f519r == gVar.f519r && this.f520s == gVar.f520s;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f520s) + r0.e(this.f519r, r0.e(this.f518q, r0.e(this.f517p, r0.e(this.f516o, r0.e(this.f515n, r0.e(this.f514m, r0.e(this.f513l, r0.e(this.f512k, r0.e(this.f511j, r0.e(this.f510i, Integer.hashCode(this.f509h) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        int i10 = this.f509h;
        int i11 = this.f510i;
        int i12 = this.f511j;
        int i13 = this.f512k;
        int i14 = this.f513l;
        int i15 = this.f514m;
        int i16 = this.f515n;
        int i17 = this.f516o;
        int i18 = this.f517p;
        int i19 = this.f518q;
        int i20 = this.f519r;
        int i21 = this.f520s;
        StringBuilder sbB = s.b("ServoStats(buttonManualLoosenCt=", i10, ", autolaceTightenCt=", i11, ", idleTimeSec=");
        a1.d.e(sbB, i12, ", tightenSpoolDeg=", i13, ", lacedTimeSec=");
        a1.d.e(sbB, i14, ", loosenSpoolDeg=", i15, ", buttonManualTightenCt=");
        a1.d.e(sbB, i16, ", maxTightenCt=", i17, ", presetChangeCt=");
        a1.d.e(sbB, i18, ", homingRoutineCt=", i19, ", overCurrentEventCt=");
        sbB.append(i20);
        sbB.append(", buttonServoFaultCt=");
        sbB.append(i21);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f509h);
        parcel.writeInt(this.f510i);
        parcel.writeInt(this.f511j);
        parcel.writeInt(this.f512k);
        parcel.writeInt(this.f513l);
        parcel.writeInt(this.f514m);
        parcel.writeInt(this.f515n);
        parcel.writeInt(this.f516o);
        parcel.writeInt(this.f517p);
        parcel.writeInt(this.f518q);
        parcel.writeInt(this.f519r);
        parcel.writeInt(this.f520s);
    }
}
