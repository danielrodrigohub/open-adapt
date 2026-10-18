package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s1 extends g {
    public static final Parcelable.Creator<s1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16816l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16817m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<s1> {
        @Override // android.os.Parcelable.Creator
        public final s1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new s1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final s1[] newArray(int i10) {
            return new s1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s1(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16816l = str;
        this.f16817m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16817m;
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptStartResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s1)) {
            return false;
        }
        s1 s1Var = (s1) obj;
        return p4.h.c(this.f16816l, s1Var.f16816l) && p4.h.c(this.f16817m, s1Var.f16817m);
    }

    public final int hashCode() {
        return this.f16817m.hashCode() + (this.f16816l.hashCode() * 31);
    }

    public final String toString() {
        return "AutoAdaptStartResult(id=" + this.f16816l + ", adaptIdentifier=" + this.f16817m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16816l);
        this.f16817m.writeToParcel(parcel, i10);
    }
}
