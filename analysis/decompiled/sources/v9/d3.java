package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d3 extends g {
    public static final Parcelable.Creator<d3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16508l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16509m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<d3> {
        @Override // android.os.Parcelable.Creator
        public final d3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final d3[] newArray(int i10) {
            return new d3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d3(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16508l = str;
        this.f16509m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16509m;
    }

    @Override // v9.g
    public final String d() {
        return "FootPresenceSensorEnabledResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d3)) {
            return false;
        }
        d3 d3Var = (d3) obj;
        return p4.h.c(this.f16508l, d3Var.f16508l) && p4.h.c(this.f16509m, d3Var.f16509m);
    }

    public final int hashCode() {
        return this.f16509m.hashCode() + (this.f16508l.hashCode() * 31);
    }

    public final String toString() {
        return "FootPresenceSensorEnabledResult(id=" + this.f16508l + ", adaptIdentifier=" + this.f16509m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16508l);
        this.f16509m.writeToParcel(parcel, i10);
    }
}
