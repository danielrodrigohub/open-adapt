package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends f {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12014h;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(Shoe.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(Shoe shoe) {
        p4.h.j(shoe, "shoeType");
        this.f12014h = shoe;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && this.f12014h == ((i) obj).f12014h;
    }

    public final int hashCode() {
        return this.f12014h.hashCode();
    }

    public final String toString() {
        return "ConnectingAuthenticationResult(shoeType=" + this.f12014h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12014h.name());
    }
}
