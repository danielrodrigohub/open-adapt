package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends v {
    public static final Parcelable.Creator<l0> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3707j;

    /* JADX INFO: compiled from: FitCalibrateState.kt */
    public static final class a implements Parcelable.Creator<l0> {
        @Override // android.os.Parcelable.Creator
        public final l0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l0(a0.b.g(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final l0[] newArray(int i10) {
            return new l0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(int i10) {
        super(i10);
        androidx.appcompat.widget.o.d(i10, "shoe");
        this.f3707j = i10;
    }

    @Override // ba.v
    public final int a() {
        return this.f3707j;
    }

    @Override // ba.v
    public final String b() {
        return "TimeoutOccurredFitCalibrateState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l0) && this.f3707j == ((l0) obj).f3707j;
    }

    public final int hashCode() {
        return q.g.a(this.f3707j);
    }

    public final String toString() {
        return l0.class.getSimpleName();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(a0.b.e(this.f3707j));
    }
}
