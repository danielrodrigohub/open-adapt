package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final w f8399h = new w();
    public static final Parcelable.Creator<w> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<w> {
        @Override // android.os.Parcelable.Creator
        public final w createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return w.f8399h;
        }

        @Override // android.os.Parcelable.Creator
        public final w[] newArray(int i10) {
            return new w[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "SearchingForAnyAdaptDevicePairingState";
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
