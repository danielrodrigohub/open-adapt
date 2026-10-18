package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: BigfootStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11023i;

    /* JADX INFO: compiled from: BigfootStats.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(int i10, int i11) {
        this.f11022h = i10;
        this.f11023i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f11022h == gVar.f11022h && this.f11023i == gVar.f11023i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f11023i) + (Integer.hashCode(this.f11022h) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BleStats(timeConnectedSec=");
        sbC.append(this.f11022h);
        sbC.append(", timeConnectedToCurrentDeviceSec=");
        return a0.b.b(sbC, this.f11023i, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11022h);
        parcel.writeInt(this.f11023i);
    }
}
