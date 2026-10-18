package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends f {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f12016i;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j(Shoe.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(Shoe shoe, String str) {
        p4.h.j(shoe, "shoeType");
        p4.h.j(str, "styleColor");
        this.f12015h = shoe;
        this.f12016i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f12015h == jVar.f12015h && p4.h.c(this.f12016i, jVar.f12016i);
    }

    public final int hashCode() {
        return this.f12016i.hashCode() + (this.f12015h.hashCode() * 31);
    }

    public final String toString() {
        return "DeviceIdentified(shoeType=" + this.f12015h + ", styleColor=" + this.f12016i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12015h.name());
        parcel.writeString(this.f12016i);
    }
}
