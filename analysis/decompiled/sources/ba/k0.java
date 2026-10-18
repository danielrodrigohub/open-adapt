package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k0 implements Parcelable {
    public static final Parcelable.Creator<k0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3702h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3703i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3704j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3705k;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<k0> {
        @Override // android.os.Parcelable.Creator
        public final k0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final k0[] newArray(int i10) {
            return new k0[i10];
        }
    }

    public k0(int i10, int i11, int i12, int i13) {
        this.f3702h = i10;
        this.f3703i = i11;
        this.f3704j = i12;
        this.f3705k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return this.f3702h == k0Var.f3702h && this.f3703i == k0Var.f3703i && this.f3704j == k0Var.f3704j && this.f3705k == k0Var.f3705k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3705k) + r0.e(this.f3704j, r0.e(this.f3703i, Integer.hashCode(this.f3702h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f3702h;
        int i11 = this.f3703i;
        int i12 = this.f3704j;
        int i13 = this.f3705k;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("StateStats(idleCt=", i10, ", lacingCt=", i11, ", latchedCt=");
        sbB.append(i12);
        sbB.append(", sleepCt=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3702h);
        parcel.writeInt(this.f3703i);
        parcel.writeInt(this.f3704j);
        parcel.writeInt(this.f3705k);
    }
}
