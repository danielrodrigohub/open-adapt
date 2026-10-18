package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ServoMoveCompleted.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t implements Parcelable {
    public static final a CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11088h;

    /* JADX INFO: compiled from: ServoMoveCompleted.kt */
    public static final class a implements Parcelable.Creator<t> {
        @Override // android.os.Parcelable.Creator
        public final t createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final t[] newArray(int i10) {
            return new t[i10];
        }
    }

    public t(int i10) {
        this.f11088h = i10;
    }

    public final int a() {
        return this.f11088h;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t) && this.f11088h == ((t) obj).f11088h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11088h);
    }

    public final String toString() {
        return a0.b.b(a0.b.c("ServoMoveCompleted(percent="), this.f11088h, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "parcel");
        parcel.writeInt(this.f11088h);
    }
}
