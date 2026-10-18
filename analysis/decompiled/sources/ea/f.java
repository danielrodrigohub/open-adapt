package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitDeviceType.kt */
/* JADX INFO: loaded from: classes.dex */
public enum f implements Parcelable {
    BIGFOOT(0),
    TRILLIUM(1),
    SESSION(2);

    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: ea.f.a
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return f.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6637h;

    f(int i10) {
        this.f6637h = i10;
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
