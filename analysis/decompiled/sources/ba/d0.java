package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 implements Parcelable {
    public static final Parcelable.Creator<d0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3630h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<d0> {
        @Override // android.os.Parcelable.Creator
        public final d0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d0(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final d0[] newArray(int i10) {
            return new d0[i10];
        }
    }

    public d0(int i10) {
        this.f3630h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d0) && this.f3630h == ((d0) obj).f3630h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3630h);
    }

    public final String toString() {
        return a0.d.b("Off(millis=", this.f3630h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3630h);
    }
}
