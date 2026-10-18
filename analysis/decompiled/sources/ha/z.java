package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final z f8402h = new z();
    public static final Parcelable.Creator<z> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<z> {
        @Override // android.os.Parcelable.Creator
        public final z createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return z.f8402h;
        }

        @Override // android.os.Parcelable.Creator
        public final z[] newArray(int i10) {
            return new z[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "StoppingPairingState";
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
