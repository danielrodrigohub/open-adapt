package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b0 f8375h = new b0();
    public static final Parcelable.Creator<b0> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<b0> {
        @Override // android.os.Parcelable.Creator
        public final b0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return b0.f8375h;
        }

        @Override // android.os.Parcelable.Creator
        public final b0[] newArray(int i10) {
            return new b0[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "UserPressButtonOnRightDevicePairingState";
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
