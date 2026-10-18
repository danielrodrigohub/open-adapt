package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a2 extends g {
    public static final Parcelable.Creator<a2> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16452l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ba.e f16453m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<a2> {
        @Override // android.os.Parcelable.Creator
        public final a2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a2(parcel.readString(), ba.e.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final a2[] newArray(int i10) {
            return new a2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a2(String str, ba.e eVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(eVar, "battery");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16452l = str;
        this.f16453m = eVar;
    }

    @Override // v9.g
    public final String c() {
        return this.f16453m.a();
    }

    @Override // v9.g
    public final String d() {
        return "BatteryNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a2)) {
            return false;
        }
        a2 a2Var = (a2) obj;
        return p4.h.c(this.f16452l, a2Var.f16452l) && p4.h.c(this.f16453m, a2Var.f16453m);
    }

    public final int hashCode() {
        return this.f16453m.hashCode() + (this.f16452l.hashCode() * 31);
    }

    public final String toString() {
        return "BatteryNotificationResult(id=" + this.f16452l + ", battery=" + this.f16453m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16452l);
        this.f16453m.writeToParcel(parcel, i10);
    }
}
