package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x f8400h = new x();
    public static final Parcelable.Creator<x> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<x> {
        @Override // android.os.Parcelable.Creator
        public final x createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return x.f8400h;
        }

        @Override // android.os.Parcelable.Creator
        public final x[] newArray(int i10) {
            return new x[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "SearchingForLeftAdaptDevicePairingState";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
