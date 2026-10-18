package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u implements Parcelable {
    public static final Parcelable.Creator<u> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11091j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11092k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11093l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11094m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11095n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11096o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f11097p;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<u> {
        @Override // android.os.Parcelable.Creator
        public final u createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final u[] newArray(int i10) {
            return new u[i10];
        }
    }

    public u(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f11089h = i10;
        this.f11090i = i11;
        this.f11091j = i12;
        this.f11092k = i13;
        this.f11093l = i14;
        this.f11094m = i15;
        this.f11095n = i16;
        this.f11096o = i17;
        this.f11097p = i18;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f11089h == uVar.f11089h && this.f11090i == uVar.f11090i && this.f11091j == uVar.f11091j && this.f11092k == uVar.f11092k && this.f11093l == uVar.f11093l && this.f11094m == uVar.f11094m && this.f11095n == uVar.f11095n && this.f11096o == uVar.f11096o && this.f11097p == uVar.f11097p;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11097p) + r0.e(this.f11096o, r0.e(this.f11095n, r0.e(this.f11094m, r0.e(this.f11093l, r0.e(this.f11092k, r0.e(this.f11091j, r0.e(this.f11090i, Integer.hashCode(this.f11089h) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ServoStats(autolaceTightenCt=");
        sbC.append(this.f11089h);
        sbC.append(", buttonManualLoosenCt=");
        sbC.append(this.f11090i);
        sbC.append(", buttonManualTightenCt=");
        sbC.append(this.f11091j);
        sbC.append(", idleTimeSec=");
        sbC.append(this.f11092k);
        sbC.append(", lacedTimeSec=");
        sbC.append(this.f11093l);
        sbC.append(", loosenSpoolDeg=");
        sbC.append(this.f11094m);
        sbC.append(", maxTightenCt=");
        sbC.append(this.f11095n);
        sbC.append(", presetChangeCt=");
        sbC.append(this.f11096o);
        sbC.append(", tightenSpoolDeg=");
        return a0.b.b(sbC, this.f11097p, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11089h);
        parcel.writeInt(this.f11090i);
        parcel.writeInt(this.f11091j);
        parcel.writeInt(this.f11092k);
        parcel.writeInt(this.f11093l);
        parcel.writeInt(this.f11094m);
        parcel.writeInt(this.f11095n);
        parcel.writeInt(this.f11096o);
        parcel.writeInt(this.f11097p);
    }
}
