package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s implements Parcelable {
    public static final Parcelable.Creator<s> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3737h;

    /* JADX INFO: compiled from: AdaptKitAnimation.kt */
    public static final class a implements Parcelable.Creator<s> {
        @Override // android.os.Parcelable.Creator
        public final s createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new s(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final s[] newArray(int i10) {
            return new s[i10];
        }
    }

    public s(int i10) {
        this.f3737h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && this.f3737h == ((s) obj).f3737h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3737h);
    }

    public final String toString() {
        return a0.d.b("Duration(seconds=", this.f3737h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3737h);
    }
}
