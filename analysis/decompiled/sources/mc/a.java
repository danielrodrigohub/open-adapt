package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ActivityClassification.kt */
/* JADX INFO: loaded from: classes.dex */
public enum a implements Parcelable {
    ACTIVITY_UNKNOWN,
    ACTIVITY_IDLE,
    ACTIVITY_WALK,
    ACTIVITY_JOG,
    ACTIVITY_RUN,
    ACTIVITY_SPRINT;

    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: mc.a.a
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return a.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
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
