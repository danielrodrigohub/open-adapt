package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x implements Parcelable {
    public static final Parcelable.Creator<x> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3744h;

    /* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
    public static final class a implements Parcelable.Creator<x> {
        @Override // android.os.Parcelable.Creator
        public final x createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new x(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final x[] newArray(int i10) {
            return new x[i10];
        }
    }

    public x(int i10) {
        this.f3744h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && this.f3744h == ((x) obj).f3744h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3744h);
    }

    public final String toString() {
        return a0.d.b("Green(green=", this.f3744h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3744h);
    }
}
