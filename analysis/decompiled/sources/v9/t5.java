package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t5 extends g {
    public static final Parcelable.Creator<t5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16842l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16843m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.b f16844n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<t5> {
        @Override // android.os.Parcelable.Creator
        public final t5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final t5[] newArray(int i10) {
            return new t5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t5(String str, v9.a aVar, la.b bVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "adaptKitSessionId");
        this.f16842l = str;
        this.f16843m = aVar;
        this.f16844n = bVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16843m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionDownloadDeleteResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t5)) {
            return false;
        }
        t5 t5Var = (t5) obj;
        return p4.h.c(this.f16842l, t5Var.f16842l) && p4.h.c(this.f16843m, t5Var.f16843m) && p4.h.c(this.f16844n, t5Var.f16844n);
    }

    public final int hashCode() {
        return this.f16844n.hashCode() + androidx.appcompat.widget.e0.c(this.f16843m, this.f16842l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16842l;
        v9.a aVar = this.f16843m;
        la.b bVar = this.f16844n;
        StringBuilder sbA = ed.c.a("SessionDownloadDeleteResult(id=", str, ", adaptIdentifier=", aVar, ", adaptKitSessionId=");
        sbA.append(bVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16842l);
        this.f16843m.writeToParcel(parcel, i10);
        this.f16844n.writeToParcel(parcel, i10);
    }
}
