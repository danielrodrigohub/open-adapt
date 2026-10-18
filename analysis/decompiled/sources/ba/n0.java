package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends v {
    public static final Parcelable.Creator<n0> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3720j;

    /* JADX INFO: compiled from: FitCalibrateState.kt */
    public static final class a implements Parcelable.Creator<n0> {
        @Override // android.os.Parcelable.Creator
        public final n0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n0(a0.b.g(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final n0[] newArray(int i10) {
            return new n0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(int i10) {
        super(i10);
        androidx.appcompat.widget.o.d(i10, "shoe");
        this.f3720j = i10;
    }

    @Override // ba.v
    public final int a() {
        return this.f3720j;
    }

    @Override // ba.v
    public final String b() {
        return "TurningOnFpsFitCalibrateState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n0) && this.f3720j == ((n0) obj).f3720j;
    }

    public final int hashCode() {
        return q.g.a(this.f3720j);
    }

    public final String toString() {
        return n0.class.getSimpleName();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(a0.b.e(this.f3720j));
    }
}
