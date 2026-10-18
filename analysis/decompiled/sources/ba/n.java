package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Parcelable {
    public static final Parcelable.Creator<n> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3719i;

    /* JADX INFO: compiled from: AdaptKitLaceEngineStats.kt */
    public static final class a implements Parcelable.Creator<n> {
        @Override // android.os.Parcelable.Creator
        public final n createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(int i10, int i11) {
        this.f3718h = i10;
        this.f3719i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f3718h == nVar.f3718h && this.f3719i == nVar.f3719i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3719i) + (Integer.hashCode(this.f3718h) * 31);
    }

    public final String toString() {
        return "BleStats(timeConnectedSec=" + this.f3718h + ", timeConnectedToCurrentDeviceSec=" + this.f3719i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3718h);
        parcel.writeInt(this.f3719i);
    }
}
