package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w implements Parcelable {
    public static final Parcelable.Creator<w> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3743i;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<w> {
        @Override // android.os.Parcelable.Creator
        public final w createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final w[] newArray(int i10) {
            return new w[i10];
        }
    }

    public w(int i10, int i11) {
        this.f3742h = i10;
        this.f3743i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f3742h == wVar.f3742h && this.f3743i == wVar.f3743i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3743i) + (Integer.hashCode(this.f3742h) * 31);
    }

    public final String toString() {
        return "GestureStats(totalDoubleTapClassifications=" + this.f3742h + ", doubleTapFalsePositives=" + this.f3743i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3742h);
        parcel.writeInt(this.f3743i);
    }
}
