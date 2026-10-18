package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h5 extends g {
    public static final Parcelable.Creator<h5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16588l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16589m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<h5> {
        @Override // android.os.Parcelable.Creator
        public final h5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final h5[] newArray(int i10) {
            return new h5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h5(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16588l = str;
        this.f16589m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16589m;
    }

    @Override // v9.g
    public final String d() {
        return "ProductInformationSetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h5)) {
            return false;
        }
        h5 h5Var = (h5) obj;
        return p4.h.c(this.f16588l, h5Var.f16588l) && p4.h.c(this.f16589m, h5Var.f16589m);
    }

    public final int hashCode() {
        return this.f16589m.hashCode() + (this.f16588l.hashCode() * 31);
    }

    public final String toString() {
        return "ProductInformationSetResult(id=" + this.f16588l + ", adaptIdentifier=" + this.f16589m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16588l);
        this.f16589m.writeToParcel(parcel, i10);
    }
}
