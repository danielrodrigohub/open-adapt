package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t6 extends g {
    public static final Parcelable.Creator<t6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16845l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16846m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.c f16847n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f16848o;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<t6> {
        @Override // android.os.Parcelable.Creator
        public final t6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final t6[] newArray(int i10) {
            return new t6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6(String str, v9.a aVar, la.c cVar, boolean z10) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(cVar, "sessionInformation");
        this.f16845l = str;
        this.f16846m = aVar;
        this.f16847n = cVar;
        this.f16848o = z10;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16846m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionStopResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t6)) {
            return false;
        }
        t6 t6Var = (t6) obj;
        return p4.h.c(this.f16845l, t6Var.f16845l) && p4.h.c(this.f16846m, t6Var.f16846m) && p4.h.c(this.f16847n, t6Var.f16847n) && this.f16848o == t6Var.f16848o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    public final int hashCode() {
        int iHashCode = (this.f16847n.hashCode() + androidx.appcompat.widget.e0.c(this.f16846m, this.f16845l.hashCode() * 31, 31)) * 31;
        boolean z10 = this.f16848o;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public final String toString() {
        String str = this.f16845l;
        v9.a aVar = this.f16846m;
        la.c cVar = this.f16847n;
        boolean z10 = this.f16848o;
        StringBuilder sbA = ed.c.a("SessionStopResult(id=", str, ", adaptIdentifier=", aVar, ", sessionInformation=");
        sbA.append(cVar);
        sbA.append(", success=");
        sbA.append(z10);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16845l);
        this.f16846m.writeToParcel(parcel, i10);
        this.f16847n.writeToParcel(parcel, i10);
        parcel.writeInt(this.f16848o ? 1 : 0);
    }
}
