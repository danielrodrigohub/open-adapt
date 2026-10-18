package la;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitSessionId.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10191h;

    /* JADX INFO: compiled from: AdaptKitSessionId.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(int i10) {
        this.f10191h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f10191h == ((b) obj).f10191h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10191h);
    }

    public final String toString() {
        return a0.d.b("AdaptKitSessionId(id=", this.f10191h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f10191h);
    }
}
