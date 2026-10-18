package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c6 extends g {
    public static final Parcelable.Creator<c6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16499l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final la.g f16500m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<c6> {
        @Override // android.os.Parcelable.Creator
        public final c6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c6(parcel.readString(), la.g.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final c6[] newArray(int i10) {
            return new c6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c6(String str, la.g gVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(gVar, "sessionEnded");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16499l = str;
        this.f16500m = gVar;
    }

    @Override // v9.g
    public final String d() {
        return "SessionEndedNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c6)) {
            return false;
        }
        c6 c6Var = (c6) obj;
        return p4.h.c(this.f16499l, c6Var.f16499l) && p4.h.c(this.f16500m, c6Var.f16500m);
    }

    public final int hashCode() {
        return this.f16500m.hashCode() + (this.f16499l.hashCode() * 31);
    }

    public final String toString() {
        return "SessionEndedNotificationResult(id=" + this.f16499l + ", sessionEnded=" + this.f16500m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16499l);
        this.f16500m.writeToParcel(parcel, i10);
    }
}
