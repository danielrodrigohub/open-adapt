package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements Parcelable {
    public static final Parcelable.Creator<f0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3656h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<f0> {
        @Override // android.os.Parcelable.Creator
        public final f0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f0(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final f0[] newArray(int i10) {
            return new f0[i10];
        }
    }

    public f0(int i10) {
        this.f3656h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f0) && this.f3656h == ((f0) obj).f3656h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3656h);
    }

    public final String toString() {
        return a0.d.b("Prequel(millis=", this.f3656h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3656h);
    }
}
