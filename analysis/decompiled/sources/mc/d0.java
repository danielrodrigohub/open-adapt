package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: SessionData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 implements Parcelable {
    public static final Parcelable.Creator<d0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final double f10996i;

    /* JADX INFO: compiled from: SessionData.kt */
    public static final class a implements Parcelable.Creator<d0> {
        @Override // android.os.Parcelable.Creator
        public final d0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d0(parcel.readLong(), parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        public final d0[] newArray(int i10) {
            return new d0[i10];
        }
    }

    public d0(long j10, double d10) {
        this.f10995h = j10;
        this.f10996i = d10;
    }

    public final double a() {
        return this.f10996i;
    }

    public final long b() {
        return this.f10995h;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return this.f10995h == d0Var.f10995h && p4.h.c(Double.valueOf(this.f10996i), Double.valueOf(d0Var.f10996i));
    }

    public final int hashCode() {
        return Double.hashCode(this.f10996i) + (Long.hashCode(this.f10995h) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionTemperatureData(timestamp=");
        sbC.append(this.f10995h);
        sbC.append(", batteryTemp=");
        sbC.append(this.f10996i);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10995h);
        parcel.writeDouble(this.f10996i);
    }
}
