package b9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f3596h = new i();
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return i.f3596h;
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
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
