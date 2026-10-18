package k8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FetchProfileActionRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f9745h = new d();
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: compiled from: FetchProfileActionRequest.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return d.f9745h;
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
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
