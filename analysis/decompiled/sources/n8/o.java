package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends f {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f12024i;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o(Shoe.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public o(Shoe shoe, String str) {
        p4.h.j(shoe, "shoeType");
        p4.h.j(str, "result");
        this.f12023h = shoe;
        this.f12024i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f12023h == oVar.f12023h && p4.h.c(this.f12024i, oVar.f12024i);
    }

    public final int hashCode() {
        return this.f12024i.hashCode() + (this.f12023h.hashCode() * 31);
    }

    public final String toString() {
        return "GoToBleSettingsAuthenticationResult(shoeType=" + this.f12023h + ", result=" + this.f12024i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12023h.name());
        parcel.writeString(this.f12024i);
    }
}
