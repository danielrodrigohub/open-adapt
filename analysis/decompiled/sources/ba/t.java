package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t implements Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3738h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
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
        this.f3738h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t) && this.f3738h == ((t) obj).f3738h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3738h);
    }

    public final String toString() {
        return a0.d.b("Enter(millis=", this.f3738h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3738h);
    }
}
