package ka;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptKitScanResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f9756h;

    /* JADX INFO: compiled from: AdaptKitScanResult.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new b(c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(c cVar) {
        h.j(cVar, "scannedDevice");
        this.f9756h = cVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && h.c(this.f9756h, ((b) obj).f9756h);
    }

    public final int hashCode() {
        return this.f9756h.hashCode();
    }

    public final String toString() {
        return "AdaptKitScanResult(scannedDevice=" + this.f9756h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.f9756h.writeToParcel(parcel, i10);
    }
}
