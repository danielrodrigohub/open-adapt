package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n3 extends g {
    public static final Parcelable.Creator<n3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ga.d f16730l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16731m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f16732n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<n3> {
        @Override // android.os.Parcelable.Creator
        public final n3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n3(ga.d.CREATOR.createFromParcel(parcel), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final n3[] newArray(int i10) {
            return new n3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n3(ga.d dVar, String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(dVar, "gestureStatistics");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16730l = dVar;
        this.f16731m = str;
        this.f16732n = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16732n;
    }

    @Override // v9.g
    public final String c() {
        return this.f16730l.b();
    }

    @Override // v9.g
    public final String d() {
        return "GestureStatisticsGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n3)) {
            return false;
        }
        n3 n3Var = (n3) obj;
        return p4.h.c(this.f16730l, n3Var.f16730l) && p4.h.c(this.f16731m, n3Var.f16731m) && p4.h.c(this.f16732n, n3Var.f16732n);
    }

    public final int hashCode() {
        return this.f16732n.hashCode() + a1.f.c(this.f16731m, this.f16730l.hashCode() * 31, 31);
    }

    public final String toString() {
        return "GestureStatisticsGetResult(gestureStatistics=" + this.f16730l + ", id=" + this.f16731m + ", adaptIdentifier=" + this.f16732n + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16730l.writeToParcel(parcel, i10);
        parcel.writeString(this.f16731m);
        this.f16732n.writeToParcel(parcel, i10);
    }
}
