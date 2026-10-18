package ba;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitProductInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f3699h;

    /* JADX INFO: compiled from: AdaptKitProductInformation.kt */
    public static final class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(String str) {
        p4.h.j(str, "productInformation");
        this.f3699h = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && p4.h.c(this.f3699h, ((j) obj).f3699h);
    }

    public final int hashCode() {
        return this.f3699h.hashCode();
    }

    public final String toString() {
        return a0.d.c("AdaptKitProductInformation(productInformation=", this.f3699h, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f3699h);
    }
}
