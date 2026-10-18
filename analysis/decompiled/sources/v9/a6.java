package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a6 extends g {
    public static final Parcelable.Creator<a6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16461l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16462m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.b f16463n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<a6> {
        @Override // android.os.Parcelable.Creator
        public final a6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final a6[] newArray(int i10) {
            return new a6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a6(String str, v9.a aVar, la.b bVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "adaptKitSessionId");
        this.f16461l = str;
        this.f16462m = aVar;
        this.f16463n = bVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16462m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionDownloadStopResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a6)) {
            return false;
        }
        a6 a6Var = (a6) obj;
        return p4.h.c(this.f16461l, a6Var.f16461l) && p4.h.c(this.f16462m, a6Var.f16462m) && p4.h.c(this.f16463n, a6Var.f16463n);
    }

    public final int hashCode() {
        return this.f16463n.hashCode() + androidx.appcompat.widget.e0.c(this.f16462m, this.f16461l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16461l;
        v9.a aVar = this.f16462m;
        la.b bVar = this.f16463n;
        StringBuilder sbA = ed.c.a("SessionDownloadStopResult(id=", str, ", adaptIdentifier=", aVar, ", adaptKitSessionId=");
        sbA.append(bVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16461l);
        this.f16462m.writeToParcel(parcel, i10);
        this.f16463n.writeToParcel(parcel, i10);
    }
}
