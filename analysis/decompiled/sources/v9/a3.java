package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a3 extends g {
    public static final Parcelable.Creator<a3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16454l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16455m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<a3> {
        @Override // android.os.Parcelable.Creator
        public final a3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final a3[] newArray(int i10) {
            return new a3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a3(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16454l = str;
        this.f16455m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16455m;
    }

    @Override // v9.g
    public final String d() {
        return "FootPresenceSensorDisableResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a3)) {
            return false;
        }
        a3 a3Var = (a3) obj;
        return p4.h.c(this.f16454l, a3Var.f16454l) && p4.h.c(this.f16455m, a3Var.f16455m);
    }

    public final int hashCode() {
        return this.f16455m.hashCode() + (this.f16454l.hashCode() * 31);
    }

    public final String toString() {
        return "FootPresenceSensorDisableResult(id=" + this.f16454l + ", adaptIdentifier=" + this.f16455m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16454l);
        this.f16455m.writeToParcel(parcel, i10);
    }
}
