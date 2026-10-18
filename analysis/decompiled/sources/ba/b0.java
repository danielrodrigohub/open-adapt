package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends v {
    public static final Parcelable.Creator<b0> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3620j;

    /* JADX INFO: compiled from: FitCalibrateState.kt */
    public static final class a implements Parcelable.Creator<b0> {
        @Override // android.os.Parcelable.Creator
        public final b0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b0(a0.b.g(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final b0[] newArray(int i10) {
            return new b0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(int i10) {
        super(i10);
        androidx.appcompat.widget.o.d(i10, "shoe");
        this.f3620j = i10;
    }

    @Override // ba.v
    public final int a() {
        return this.f3620j;
    }

    @Override // ba.v
    public final String b() {
        return "MovingToZeroFitCalibrateState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b0) && this.f3620j == ((b0) obj).f3620j;
    }

    public final int hashCode() {
        return q.g.a(this.f3620j);
    }

    public final String toString() {
        return b0.class.getSimpleName();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(a0.b.e(this.f3620j));
    }
}
