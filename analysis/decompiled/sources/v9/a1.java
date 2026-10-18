package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a1 extends g {
    public static final Parcelable.Creator<a1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16450l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16451m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<a1> {
        @Override // android.os.Parcelable.Creator
        public final a1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final a1[] newArray(int i10) {
            return new a1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16450l = str;
        this.f16451m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16451m;
    }

    @Override // v9.g
    public final String d() {
        return "AnimationStartResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a1)) {
            return false;
        }
        a1 a1Var = (a1) obj;
        return p4.h.c(this.f16450l, a1Var.f16450l) && p4.h.c(this.f16451m, a1Var.f16451m);
    }

    public final int hashCode() {
        return this.f16451m.hashCode() + (this.f16450l.hashCode() * 31);
    }

    public final String toString() {
        return "AnimationStartResult(id=" + this.f16450l + ", adaptIdentifier=" + this.f16451m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16450l);
        this.f16451m.writeToParcel(parcel, i10);
    }
}
