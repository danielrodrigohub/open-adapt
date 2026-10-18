package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final y f8401h = new y();
    public static final Parcelable.Creator<y> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<y> {
        @Override // android.os.Parcelable.Creator
        public final y createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return y.f8401h;
        }

        @Override // android.os.Parcelable.Creator
        public final y[] newArray(int i10) {
            return new y[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "SearchingForRightAdaptDevicePairingState";
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
