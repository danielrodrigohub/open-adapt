package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g6 extends g {
    public static final Parcelable.Creator<g6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16573l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final la.h f16574m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<g6> {
        @Override // android.os.Parcelable.Creator
        public final g6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g6(parcel.readString(), la.h.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final g6[] newArray(int i10) {
            return new g6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g6(String str, la.h hVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(hVar, "sessionAggregate");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16573l = str;
        this.f16574m = hVar;
    }

    @Override // v9.g
    public final String d() {
        return "SessionMemsNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g6)) {
            return false;
        }
        g6 g6Var = (g6) obj;
        return p4.h.c(this.f16573l, g6Var.f16573l) && p4.h.c(this.f16574m, g6Var.f16574m);
    }

    public final int hashCode() {
        return this.f16574m.hashCode() + (this.f16573l.hashCode() * 31);
    }

    public final String toString() {
        return "SessionMemsNotificationResult(id=" + this.f16573l + ", sessionAggregate=" + this.f16574m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16573l);
        this.f16574m.writeToParcel(parcel, i10);
    }
}
