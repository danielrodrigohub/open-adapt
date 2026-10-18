package n9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: RegulatoryCountry.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f12028h = new a();
    public static final Parcelable.Creator<a> CREATOR = new C0216a();

    /* JADX INFO: renamed from: n9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RegulatoryCountry.kt */
    public static final class C0216a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            parcel.readInt();
            return a.f12028h;
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(1);
    }
}
