package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements Parcelable {
    public static final Parcelable.Creator<g0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3675h;

    /* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
    public static final class a implements Parcelable.Creator<g0> {
        @Override // android.os.Parcelable.Creator
        public final g0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g0(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final g0[] newArray(int i10) {
            return new g0[i10];
        }
    }

    public g0(int i10) {
        this.f3675h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g0) && this.f3675h == ((g0) obj).f3675h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3675h);
    }

    public final String toString() {
        return a0.d.b("Red(red=", this.f3675h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3675h);
    }
}
