package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l4 extends g {
    public static final Parcelable.Creator<l4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16703l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16704m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<l4> {
        @Override // android.os.Parcelable.Creator
        public final l4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final l4[] newArray(int i10) {
            return new l4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l4(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16703l = str;
        this.f16704m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16704m;
    }

    @Override // v9.g
    public final String d() {
        return "LaceLoosenResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l4)) {
            return false;
        }
        l4 l4Var = (l4) obj;
        return p4.h.c(this.f16703l, l4Var.f16703l) && p4.h.c(this.f16704m, l4Var.f16704m);
    }

    public final int hashCode() {
        return this.f16704m.hashCode() + (this.f16703l.hashCode() * 31);
    }

    public final String toString() {
        return "LaceLoosenResult(id=" + this.f16703l + ", adaptIdentifier=" + this.f16704m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16703l);
        this.f16704m.writeToParcel(parcel, i10);
    }
}
