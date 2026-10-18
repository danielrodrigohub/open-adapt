package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 implements Parcelable {
    public static final Parcelable.Creator<h0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3682h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<h0> {
        @Override // android.os.Parcelable.Creator
        public final h0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h0(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final h0[] newArray(int i10) {
            return new h0[i10];
        }
    }

    public h0(int i10) {
        this.f3682h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h0) && this.f3682h == ((h0) obj).f3682h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3682h);
    }

    public final String toString() {
        return a0.d.b("Sequel(millis=", this.f3682h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3682h);
    }
}
