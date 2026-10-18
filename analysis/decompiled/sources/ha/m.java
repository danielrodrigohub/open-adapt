package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final m f8386h = new m();
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return m.f8386h;
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "CouldNotConnectRightPairingState";
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
