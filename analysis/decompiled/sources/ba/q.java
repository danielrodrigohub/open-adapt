package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends v {
    public static final Parcelable.Creator<q> CREATOR = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3727j;

    /* JADX INFO: compiled from: FitCalibrateState.kt */
    public static final class a implements Parcelable.Creator<q> {
        @Override // android.os.Parcelable.Creator
        public final q createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q(a0.b.g(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final q[] newArray(int i10) {
            return new q[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(int i10) {
        super(i10);
        androidx.appcompat.widget.o.d(i10, "shoe");
        this.f3727j = i10;
    }

    @Override // ba.v
    public final int a() {
        return this.f3727j;
    }

    @Override // ba.v
    public final String b() {
        return "CompletedFitCalibrateState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && this.f3727j == ((q) obj).f3727j;
    }

    public final int hashCode() {
        return q.g.a(this.f3727j);
    }

    public final String toString() {
        return q.class.getSimpleName();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(a0.b.e(this.f3727j));
    }
}
