package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j5 extends g {
    public static final Parcelable.Creator<j5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16659l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16660m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<j5> {
        @Override // android.os.Parcelable.Creator
        public final j5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final j5[] newArray(int i10) {
            return new j5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j5(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16659l = str;
        this.f16660m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16660m;
    }

    @Override // v9.g
    public final String d() {
        return "ResetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j5)) {
            return false;
        }
        j5 j5Var = (j5) obj;
        return p4.h.c(this.f16659l, j5Var.f16659l) && p4.h.c(this.f16660m, j5Var.f16660m);
    }

    public final int hashCode() {
        return this.f16660m.hashCode() + (this.f16659l.hashCode() * 31);
    }

    public final String toString() {
        return "ResetResult(id=" + this.f16659l + ", adaptIdentifier=" + this.f16660m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16659l);
        this.f16660m.writeToParcel(parcel, i10);
    }
}
