package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q5 extends g {
    public static final Parcelable.Creator<q5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16786l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16787m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.b f16788n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.a f16789o;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<q5> {
        @Override // android.os.Parcelable.Creator
        public final q5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : la.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final q5[] newArray(int i10) {
            return new q5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q5(String str, v9.a aVar, la.b bVar, la.a aVar2) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "adaptKitSessionId");
        this.f16786l = str;
        this.f16787m = aVar;
        this.f16788n = bVar;
        this.f16789o = aVar2;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16787m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionDownloadCompleteResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q5)) {
            return false;
        }
        q5 q5Var = (q5) obj;
        return p4.h.c(this.f16786l, q5Var.f16786l) && p4.h.c(this.f16787m, q5Var.f16787m) && p4.h.c(this.f16788n, q5Var.f16788n) && p4.h.c(this.f16789o, q5Var.f16789o);
    }

    public final int hashCode() {
        int iHashCode = (this.f16788n.hashCode() + androidx.appcompat.widget.e0.c(this.f16787m, this.f16786l.hashCode() * 31, 31)) * 31;
        la.a aVar = this.f16789o;
        return iHashCode + (aVar == null ? 0 : aVar.hashCode());
    }

    public final String toString() {
        String str = this.f16786l;
        v9.a aVar = this.f16787m;
        la.b bVar = this.f16788n;
        la.a aVar2 = this.f16789o;
        StringBuilder sbA = ed.c.a("SessionDownloadCompleteResult(id=", str, ", adaptIdentifier=", aVar, ", adaptKitSessionId=");
        sbA.append(bVar);
        sbA.append(", session=");
        sbA.append(aVar2);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16786l);
        this.f16787m.writeToParcel(parcel, i10);
        this.f16788n.writeToParcel(parcel, i10);
        la.a aVar = this.f16789o;
        if (aVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            aVar.writeToParcel(parcel, i10);
        }
    }
}
