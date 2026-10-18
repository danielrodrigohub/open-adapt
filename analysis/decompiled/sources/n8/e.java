package n8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends f {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f12009h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f12010i;

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e(Shoe.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(Shoe shoe, String str) {
        p4.h.j(shoe, "shoeType");
        p4.h.j(str, "result");
        this.f12009h = shoe;
        this.f12010i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f12009h == eVar.f12009h && p4.h.c(this.f12010i, eVar.f12010i);
    }

    public final int hashCode() {
        return this.f12010i.hashCode() + (this.f12009h.hashCode() * 31);
    }

    public final String toString() {
        return "AlreadyPairedAuthenticationResult(shoeType=" + this.f12009h + ", result=" + this.f12010i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f12009h.name());
        parcel.writeString(this.f12010i);
    }
}
