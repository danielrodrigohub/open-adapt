package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y4 extends g {
    public static final Parcelable.Creator<y4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16934l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16935m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<y4> {
        @Override // android.os.Parcelable.Creator
        public final y4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final y4[] newArray(int i10) {
            return new y4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16934l = str;
        this.f16935m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16935m;
    }

    @Override // v9.g
    public final String d() {
        return "LaceToPresetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y4)) {
            return false;
        }
        y4 y4Var = (y4) obj;
        return p4.h.c(this.f16934l, y4Var.f16934l) && p4.h.c(this.f16935m, y4Var.f16935m);
    }

    public final int hashCode() {
        return this.f16935m.hashCode() + (this.f16934l.hashCode() * 31);
    }

    public final String toString() {
        return "LaceToPresetResult(id=" + this.f16934l + ", adaptIdentifier=" + this.f16935m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16934l);
        this.f16935m.writeToParcel(parcel, i10);
    }
}
