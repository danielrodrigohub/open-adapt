package la;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitTemperature.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final double f10206i;

    /* JADX INFO: compiled from: AdaptKitTemperature.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(parcel.readLong(), parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(long j10, double d10) {
        this.f10205h = j10;
        this.f10206i = d10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f10205h == dVar.f10205h && p4.h.c(Double.valueOf(this.f10206i), Double.valueOf(dVar.f10206i));
    }

    public final int hashCode() {
        return Double.hashCode(this.f10206i) + (Long.hashCode(this.f10205h) * 31);
    }

    public final String toString() {
        return "AdaptKitTemperature(timeOffsetInMillis=" + this.f10205h + ", batteryTemp=" + this.f10206i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10205h);
        parcel.writeDouble(this.f10206i);
    }
}
