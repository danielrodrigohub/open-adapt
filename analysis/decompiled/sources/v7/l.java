package v7;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends j {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: compiled from: OnBoarding.kt */
    public static final class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return new l();
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l() {
        c(g.PUT_SHOES_ON);
        c(g.ADAPT_SHOE);
        c(g.COMPLETED);
    }

    @Override // v7.j
    public final int a() {
        return -1;
    }

    @Override // v7.j
    public final int b() {
        return 1;
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
