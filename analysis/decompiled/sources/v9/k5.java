package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k5 extends g {
    public static final Parcelable.Creator<k5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16674l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16675m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<k5> {
        @Override // android.os.Parcelable.Creator
        public final k5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final k5[] newArray(int i10) {
            return new k5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k5(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16674l = str;
        this.f16675m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16675m;
    }

    @Override // v9.g
    public final String d() {
        return "RestartResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k5)) {
            return false;
        }
        k5 k5Var = (k5) obj;
        return p4.h.c(this.f16674l, k5Var.f16674l) && p4.h.c(this.f16675m, k5Var.f16675m);
    }

    public final int hashCode() {
        return this.f16675m.hashCode() + (this.f16674l.hashCode() * 31);
    }

    public final String toString() {
        return "RestartResult(id=" + this.f16674l + ", adaptIdentifier=" + this.f16675m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16674l);
        this.f16675m.writeToParcel(parcel, i10);
    }
}
