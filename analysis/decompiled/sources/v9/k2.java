package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k2 extends g {
    public static final Parcelable.Creator<k2> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16670l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16671m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<k2> {
        @Override // android.os.Parcelable.Creator
        public final k2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final k2[] newArray(int i10) {
            return new k2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k2(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16670l = str;
        this.f16671m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16671m;
    }

    @Override // v9.g
    public final String d() {
        return "DeleteShoesResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k2)) {
            return false;
        }
        k2 k2Var = (k2) obj;
        return p4.h.c(this.f16670l, k2Var.f16670l) && p4.h.c(this.f16671m, k2Var.f16671m);
    }

    public final int hashCode() {
        return this.f16671m.hashCode() + (this.f16670l.hashCode() * 31);
    }

    public final String toString() {
        return "DeleteShoesResult(id=" + this.f16670l + ", adaptIdentifier=" + this.f16671m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16670l);
        this.f16671m.writeToParcel(parcel, i10);
    }
}
