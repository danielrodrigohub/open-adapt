package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v1 extends g {
    public static final Parcelable.Creator<v1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16874l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16875m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<v1> {
        @Override // android.os.Parcelable.Creator
        public final v1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new v1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final v1[] newArray(int i10) {
            return new v1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16874l = str;
        this.f16875m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16875m;
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptStopResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v1)) {
            return false;
        }
        v1 v1Var = (v1) obj;
        return p4.h.c(this.f16874l, v1Var.f16874l) && p4.h.c(this.f16875m, v1Var.f16875m);
    }

    public final int hashCode() {
        return this.f16875m.hashCode() + (this.f16874l.hashCode() * 31);
    }

    public final String toString() {
        return "AutoAdaptStopResult(id=" + this.f16874l + ", adaptIdentifier=" + this.f16875m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16874l);
        this.f16875m.writeToParcel(parcel, i10);
    }
}
