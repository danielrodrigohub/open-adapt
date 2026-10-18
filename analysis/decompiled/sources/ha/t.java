package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final t f8397h = new t();
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<t> {
        @Override // android.os.Parcelable.Creator
        public final t createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return t.f8397h;
        }

        @Override // android.os.Parcelable.Creator
        public final t[] newArray(int i10) {
            return new t[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "NotStartedPairingState";
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
