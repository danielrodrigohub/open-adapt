package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m6 extends g {
    public static final Parcelable.Creator<m6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16722l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16723m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.c f16724n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<m6> {
        @Override // android.os.Parcelable.Creator
        public final m6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final m6[] newArray(int i10) {
            return new m6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m6(String str, v9.a aVar, la.c cVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(cVar, "sessionInformation");
        this.f16722l = str;
        this.f16723m = aVar;
        this.f16724n = cVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16723m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionResumeResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m6)) {
            return false;
        }
        m6 m6Var = (m6) obj;
        return p4.h.c(this.f16722l, m6Var.f16722l) && p4.h.c(this.f16723m, m6Var.f16723m) && p4.h.c(this.f16724n, m6Var.f16724n);
    }

    public final int hashCode() {
        return this.f16724n.hashCode() + androidx.appcompat.widget.e0.c(this.f16723m, this.f16722l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16722l;
        v9.a aVar = this.f16723m;
        la.c cVar = this.f16724n;
        StringBuilder sbA = ed.c.a("SessionResumeResult(id=", str, ", adaptIdentifier=", aVar, ", sessionInformation=");
        sbA.append(cVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16722l);
        this.f16723m.writeToParcel(parcel, i10);
        this.f16724n.writeToParcel(parcel, i10);
    }
}
