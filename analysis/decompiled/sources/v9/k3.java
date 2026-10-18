package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k3 extends g {
    public static final Parcelable.Creator<k3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ga.c f16672l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16673m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<k3> {
        @Override // android.os.Parcelable.Creator
        public final k3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k3(ga.c.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final k3[] newArray(int i10) {
            return new k3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k3(ga.c cVar, String str) {
        super(str, v9.a.f16443k);
        p4.h.j(cVar, "notificationResult");
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16672l = cVar;
        this.f16673m = str;
    }

    @Override // v9.g
    public final String c() {
        return this.f16672l.b();
    }

    @Override // v9.g
    public final String d() {
        return "GestureNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k3)) {
            return false;
        }
        k3 k3Var = (k3) obj;
        return p4.h.c(this.f16672l, k3Var.f16672l) && p4.h.c(this.f16673m, k3Var.f16673m);
    }

    public final int hashCode() {
        return this.f16673m.hashCode() + (this.f16672l.hashCode() * 31);
    }

    public final String toString() {
        return "GestureNotificationResult(notificationResult=" + this.f16672l + ", id=" + this.f16673m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16672l.writeToParcel(parcel, i10);
        parcel.writeString(this.f16673m);
    }
}
