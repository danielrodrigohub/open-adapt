package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("timeConnectedSec")
    public final int f496h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("timeConnectedToCurrentDeviceSec")
    public final int f497i;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(int i10, int i11) {
        this.f496h = i10;
        this.f497i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f496h == bVar.f496h && this.f497i == bVar.f497i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f497i) + (Integer.hashCode(this.f496h) * 31);
    }

    public final String toString() {
        return "BleStats(timeConnectedSec=" + this.f496h + ", timeConnectedToCurrentDeviceSec=" + this.f497i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f496h);
        parcel.writeInt(this.f497i);
    }
}
