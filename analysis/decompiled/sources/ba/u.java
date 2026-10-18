package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u implements Parcelable {
    public static final Parcelable.Creator<u> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3739h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<u> {
        @Override // android.os.Parcelable.Creator
        public final u createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final u[] newArray(int i10) {
            return new u[i10];
        }
    }

    public u(int i10) {
        this.f3739h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && this.f3739h == ((u) obj).f3739h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3739h);
    }

    public final String toString() {
        return a0.d.b("Exit(millis=", this.f3739h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3739h);
    }
}
