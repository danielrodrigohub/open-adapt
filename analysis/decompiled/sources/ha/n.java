package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends u {
    public static final Parcelable.Creator<n> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8387h;

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<n> {
        @Override // android.os.Parcelable.Creator
        public final n createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(String str) {
        p4.h.j(str, "modelStyleColor");
        this.f8387h = str;
    }

    @Override // ha.u
    public final String a() {
        return androidx.recyclerview.widget.d.c("DeviceFoundLeftPairingState - modelStyleColor: ", this.f8387h);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n) && p4.h.c(this.f8387h, ((n) obj).f8387h);
    }

    public final int hashCode() {
        return this.f8387h.hashCode();
    }

    public final String toString() {
        return a0.d.c("DeviceFoundLeftPairingState(modelStyleColor=", this.f8387h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f8387h);
    }
}
