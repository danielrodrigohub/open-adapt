package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f8376h = new c();
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return c.f8376h;
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    @Override // ha.u
    public final String a() {
        return "BondingDialogFailedLeftState";
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
