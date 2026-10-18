package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final v f8398h = new v();
    public static final Parcelable.Creator<v> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<v> {
        @Override // android.os.Parcelable.Creator
        public final v createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return v.f8398h;
        }

        @Override // android.os.Parcelable.Creator
        public final v[] newArray(int i10) {
            return new v[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "ScanningErrorPairingState";
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
