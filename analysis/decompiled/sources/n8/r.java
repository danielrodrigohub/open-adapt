package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends f {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12027h;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r(Shoe.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    public r(Shoe shoe) {
        p4.h.j(shoe, "shoeType");
        this.f12027h = shoe;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && this.f12027h == ((r) obj).f12027h;
    }

    public final int hashCode() {
        return this.f12027h.hashCode();
    }

    public final String toString() {
        return "SuccessAuthenticationResult(shoeType=" + this.f12027h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12027h.name());
    }
}
