package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: KeyExchangeComplete.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Parcelable {
    public static final a CREATOR = new a();

    /* JADX INFO: compiled from: KeyExchangeComplete.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r();
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "parcel");
    }
}
