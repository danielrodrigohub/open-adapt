package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t4 extends g {
    public static final Parcelable.Creator<t4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16840l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16841m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<t4> {
        @Override // android.os.Parcelable.Creator
        public final t4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final t4[] newArray(int i10) {
            return new t4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t4(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16840l = str;
        this.f16841m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16841m;
    }

    @Override // v9.g
    public final String d() {
        return "LaceTightenResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t4)) {
            return false;
        }
        t4 t4Var = (t4) obj;
        return p4.h.c(this.f16840l, t4Var.f16840l) && p4.h.c(this.f16841m, t4Var.f16841m);
    }

    public final int hashCode() {
        return this.f16841m.hashCode() + (this.f16840l.hashCode() * 31);
    }

    public final String toString() {
        return "LaceTightenResult(id=" + this.f16840l + ", adaptIdentifier=" + this.f16841m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16840l);
        this.f16841m.writeToParcel(parcel, i10);
    }
}
