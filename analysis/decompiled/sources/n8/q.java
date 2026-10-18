package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends f {
    public static final Parcelable.Creator<q> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12026h;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<q> {
        @Override // android.os.Parcelable.Creator
        public final q createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q(Shoe.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final q[] newArray(int i10) {
            return new q[i10];
        }
    }

    public q(Shoe shoe) {
        p4.h.j(shoe, "shoeType");
        this.f12026h = shoe;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && this.f12026h == ((q) obj).f12026h;
    }

    public final int hashCode() {
        return this.f12026h.hashCode();
    }

    public final String toString() {
        return "Searching(shoeType=" + this.f12026h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12026h.name());
    }
}
