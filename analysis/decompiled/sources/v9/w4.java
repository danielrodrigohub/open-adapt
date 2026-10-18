package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w4 extends g {
    public static final Parcelable.Creator<w4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16900l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16901m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<w4> {
        @Override // android.os.Parcelable.Creator
        public final w4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final w4[] newArray(int i10) {
            return new w4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w4(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16900l = str;
        this.f16901m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16901m;
    }

    @Override // v9.g
    public final String d() {
        return "LaceToPercentResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w4)) {
            return false;
        }
        w4 w4Var = (w4) obj;
        return p4.h.c(this.f16900l, w4Var.f16900l) && p4.h.c(this.f16901m, w4Var.f16901m);
    }

    public final int hashCode() {
        return this.f16901m.hashCode() + (this.f16900l.hashCode() * 31);
    }

    public final String toString() {
        return "LaceToPercentResult(id=" + this.f16900l + ", adaptIdentifier=" + this.f16901m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16900l);
        this.f16901m.writeToParcel(parcel, i10);
    }
}
