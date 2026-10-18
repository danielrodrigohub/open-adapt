package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends f {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f12013i;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h(Shoe.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    public h(Shoe shoe, String str) {
        p4.h.j(shoe, "shoeType");
        p4.h.j(str, "result");
        this.f12012h = shoe;
        this.f12013i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f12012h == hVar.f12012h && p4.h.c(this.f12013i, hVar.f12013i);
    }

    public final int hashCode() {
        return this.f12013i.hashCode() + (this.f12012h.hashCode() * 31);
    }

    public final String toString() {
        return "BondingFailedAuthenticationResult(shoeType=" + this.f12012h + ", result=" + this.f12013i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12012h.name());
        parcel.writeString(this.f12013i);
    }
}
