package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Gesture.kt */
/* JADX INFO: loaded from: classes.dex */
public enum l implements Parcelable {
    ACTION_UNKNOWN(0),
    ACTION_NONE(1),
    ACTION_UNLACE(2);

    public static final Parcelable.Creator<l> CREATOR = new Parcelable.Creator<l>() { // from class: mc.l.a
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return l.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11068h;

    l(int i10) {
        this.f11068h = i10;
    }

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
