package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p f8389h = new p();
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        public final p createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return p.f8389h;
        }

        @Override // android.os.Parcelable.Creator
        public final p[] newArray(int i10) {
            return new p[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "DeviceNeedsResetLeftPairingState";
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
