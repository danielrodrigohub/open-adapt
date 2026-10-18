package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends v {
    public static final Parcelable.Creator<z> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3747k;

    /* JADX INFO: compiled from: FitCalibrateState.kt */
    public static final class a implements Parcelable.Creator<z> {
        @Override // android.os.Parcelable.Creator
        public final z createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z(a0.b.g(parcel.readString()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final z[] newArray(int i10) {
            return new z[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(int i10, int i11) {
        super(i10);
        androidx.appcompat.widget.o.d(i10, "shoe");
        this.f3746j = i10;
        this.f3747k = i11;
    }

    @Override // ba.v
    public final int a() {
        return this.f3746j;
    }

    @Override // ba.v
    public final String b() {
        return "MaximumFoundFitCalibrateState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.f3746j == zVar.f3746j && this.f3747k == zVar.f3747k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3747k) + (q.g.a(this.f3746j) * 31);
    }

    public final String toString() {
        int i10 = this.f3746j;
        int i11 = this.f3747k;
        StringBuilder sbC = a0.b.c("MaximumFoundFitCalibrateState(shoe=");
        sbC.append(a0.b.f(i10));
        sbC.append(", maxPercent=");
        sbC.append(i11);
        sbC.append(")");
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(a0.b.e(this.f3746j));
        parcel.writeInt(this.f3747k);
    }
}
