package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11040h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11041i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11042j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11043k;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<i0> {
        @Override // android.os.Parcelable.Creator
        public final i0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final i0[] newArray(int i10) {
            return new i0[i10];
        }
    }

    public i0(int i10, int i11, int i12, int i13) {
        this.f11040h = i10;
        this.f11041i = i11;
        this.f11042j = i12;
        this.f11043k = i13;
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
        return this.f11040h == i0Var.f11040h && this.f11041i == i0Var.f11041i && this.f11042j == i0Var.f11042j && this.f11043k == i0Var.f11043k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11043k) + r0.e(this.f11042j, r0.e(this.f11041i, Integer.hashCode(this.f11040h) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("WakeupStats(bleWakeupCt=");
        sbC.append(this.f11040h);
        sbC.append(", buttonWakeupCt=");
        sbC.append(this.f11041i);
        sbC.append(", capsenseWakeupCt=");
        sbC.append(this.f11042j);
        sbC.append(", chargerWakeupCt=");
        return a0.b.b(sbC, this.f11043k, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11040h);
        parcel.writeInt(this.f11041i);
        parcel.writeInt(this.f11042j);
        parcel.writeInt(this.f11043k);
    }
}
