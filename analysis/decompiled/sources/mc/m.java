package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Gesture.kt */
/* JADX INFO: loaded from: classes.dex */
public enum m implements Parcelable {
    CLASSIFICATION_UNKNOWN(0),
    CLASSIFICATION_NONE(1),
    CLASSIFICATION_DOUBLETAP(2),
    CLASSIFICATION_DOUBLETAP_TRAINING(3);

    public static final Parcelable.Creator<m> CREATOR = new Parcelable.Creator<m>() { // from class: mc.m.a
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return m.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11074h;

    m(int i10) {
        this.f11074h = i10;
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
