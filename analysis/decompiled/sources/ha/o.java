package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends u {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8388h;

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public o(String str) {
        p4.h.j(str, "modelStyleColor");
        this.f8388h = str;
    }

    @Override // ha.u
    public final String a() {
        return androidx.recyclerview.widget.d.c("DeviceFoundRightPairingState - modelStyleColor: ", this.f8388h);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && p4.h.c(this.f8388h, ((o) obj).f8388h);
    }

    public final int hashCode() {
        return this.f8388h.hashCode();
    }

    public final String toString() {
        return a0.d.c("DeviceFoundRightPairingState(modelStyleColor=", this.f8388h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f8388h);
    }
}
