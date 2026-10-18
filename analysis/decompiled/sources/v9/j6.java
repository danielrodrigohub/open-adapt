package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j6 extends g {
    public static final Parcelable.Creator<j6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16661l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16662m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.c f16663n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<j6> {
        @Override // android.os.Parcelable.Creator
        public final j6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final j6[] newArray(int i10) {
            return new j6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j6(String str, v9.a aVar, la.c cVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(cVar, "sessionInformation");
        this.f16661l = str;
        this.f16662m = aVar;
        this.f16663n = cVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16662m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionPauseResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j6)) {
            return false;
        }
        j6 j6Var = (j6) obj;
        return p4.h.c(this.f16661l, j6Var.f16661l) && p4.h.c(this.f16662m, j6Var.f16662m) && p4.h.c(this.f16663n, j6Var.f16663n);
    }

    public final int hashCode() {
        return this.f16663n.hashCode() + androidx.appcompat.widget.e0.c(this.f16662m, this.f16661l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16661l;
        v9.a aVar = this.f16662m;
        la.c cVar = this.f16663n;
        StringBuilder sbA = ed.c.a("SessionPauseResult(id=", str, ", adaptIdentifier=", aVar, ", sessionInformation=");
        sbA.append(cVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16661l);
        this.f16662m.writeToParcel(parcel, i10);
        this.f16663n.writeToParcel(parcel, i10);
    }
}
