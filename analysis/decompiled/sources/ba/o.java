package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3721h;

    /* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
    public static final class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public o(int i10) {
        this.f3721h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && this.f3721h == ((o) obj).f3721h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3721h);
    }

    public final String toString() {
        return a0.d.b("Blue(blue=", this.f3721h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3721h);
    }
}
