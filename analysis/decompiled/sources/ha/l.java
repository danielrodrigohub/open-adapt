package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final l f8385h = new l();
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return l.f8385h;
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "CouldNotConnectLeftPairingState";
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
