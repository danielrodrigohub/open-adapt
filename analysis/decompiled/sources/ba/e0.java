package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 implements Parcelable {
    public static final Parcelable.Creator<e0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3646h;

    /* JADX INFO: compiled from: AdaptKitAnimationSequence.kt */
    public static final class a implements Parcelable.Creator<e0> {
        @Override // android.os.Parcelable.Creator
        public final e0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e0(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final e0[] newArray(int i10) {
            return new e0[i10];
        }
    }

    public e0(int i10) {
        this.f3646h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e0) && this.f3646h == ((e0) obj).f3646h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3646h);
    }

    public final String toString() {
        return a0.d.b("On(millis=", this.f3646h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3646h);
    }
}
