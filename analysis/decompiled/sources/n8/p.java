package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends f {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12025h;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        public final p createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p(Shoe.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p(Shoe shoe) {
        p4.h.j(shoe, "shoeType");
        this.f12025h = shoe;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && this.f12025h == ((p) obj).f12025h;
    }

    public final int hashCode() {
        return this.f12025h.hashCode();
    }

    public final String toString() {
        return "LightedUpAuthenticationResult(shoeType=" + this.f12025h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12025h.name());
    }
}
