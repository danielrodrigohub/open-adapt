package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f8377h = new d();
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return d.f8377h;
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "BondingDialogFailedRightState";
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
