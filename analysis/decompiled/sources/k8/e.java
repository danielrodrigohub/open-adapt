package k8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FetchProfileActionRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final e f9746h = new e();
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: compiled from: FetchProfileActionRequest.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            parcel.readInt();
            return e.f9746h;
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
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
