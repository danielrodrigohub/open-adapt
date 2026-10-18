package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k f8384h = new k();
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public final k createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return k.f8384h;
        }

        @Override // android.os.Parcelable.Creator
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "ConnectingRightPairingState";
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
