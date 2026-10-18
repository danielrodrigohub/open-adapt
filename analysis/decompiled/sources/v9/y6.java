package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y6 extends g {
    public static final Parcelable.Creator<y6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final la.d f16940l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16941m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<y6> {
        @Override // android.os.Parcelable.Creator
        public final y6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y6(la.d.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final y6[] newArray(int i10) {
            return new y6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y6(la.d dVar, String str) {
        super(str, v9.a.f16443k);
        p4.h.j(dVar, "notificationResult");
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16940l = dVar;
        this.f16941m = str;
    }

    @Override // v9.g
    public final String d() {
        return "TemperatureNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y6)) {
            return false;
        }
        y6 y6Var = (y6) obj;
        return p4.h.c(this.f16940l, y6Var.f16940l) && p4.h.c(this.f16941m, y6Var.f16941m);
    }

    public final int hashCode() {
        return this.f16941m.hashCode() + (this.f16940l.hashCode() * 31);
    }

    public final String toString() {
        return "TemperatureNotificationResult(notificationResult=" + this.f16940l + ", id=" + this.f16941m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16940l.writeToParcel(parcel, i10);
        parcel.writeString(this.f16941m);
    }
}
