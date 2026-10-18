package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p6 extends g {
    public static final Parcelable.Creator<p6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16769l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16770m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.c f16771n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<p6> {
        @Override // android.os.Parcelable.Creator
        public final p6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final p6[] newArray(int i10) {
            return new p6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p6(String str, v9.a aVar, la.c cVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(cVar, "sessionInformation");
        this.f16769l = str;
        this.f16770m = aVar;
        this.f16771n = cVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16770m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionStartResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p6)) {
            return false;
        }
        p6 p6Var = (p6) obj;
        return p4.h.c(this.f16769l, p6Var.f16769l) && p4.h.c(this.f16770m, p6Var.f16770m) && p4.h.c(this.f16771n, p6Var.f16771n);
    }

    public final int hashCode() {
        return this.f16771n.hashCode() + androidx.appcompat.widget.e0.c(this.f16770m, this.f16769l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16769l;
        v9.a aVar = this.f16770m;
        la.c cVar = this.f16771n;
        StringBuilder sbA = ed.c.a("SessionStartResult(id=", str, ", adaptIdentifier=", aVar, ", sessionInformation=");
        sbA.append(cVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16769l);
        this.f16770m.writeToParcel(parcel, i10);
        this.f16771n.writeToParcel(parcel, i10);
    }
}
