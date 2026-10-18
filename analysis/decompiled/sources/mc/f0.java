package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements Parcelable {
    public static final Parcelable.Creator<f0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11020j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11021k;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<f0> {
        @Override // android.os.Parcelable.Creator
        public final f0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final f0[] newArray(int i10) {
            return new f0[i10];
        }
    }

    public f0(int i10, int i11, int i12, int i13) {
        this.f11018h = i10;
        this.f11019i = i11;
        this.f11020j = i12;
        this.f11021k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return this.f11018h == f0Var.f11018h && this.f11019i == f0Var.f11019i && this.f11020j == f0Var.f11020j && this.f11021k == f0Var.f11021k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11021k) + r0.e(this.f11020j, r0.e(this.f11019i, Integer.hashCode(this.f11018h) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("StateStats(idleCt=");
        sbC.append(this.f11018h);
        sbC.append(", lacingCt=");
        sbC.append(this.f11019i);
        sbC.append(", latchedCt=");
        sbC.append(this.f11020j);
        sbC.append(", sleepCt=");
        return a0.b.b(sbC, this.f11021k, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11018h);
        parcel.writeInt(this.f11019i);
        parcel.writeInt(this.f11020j);
        parcel.writeInt(this.f11021k);
    }
}
