package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ActivityClassification.kt */
/* JADX INFO: loaded from: classes.dex */
public enum b implements Parcelable {
    DISABLED,
    ENABLED;

    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: mc.b.a
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return b.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    };

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(name());
    }
}
