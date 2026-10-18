package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f6 extends g {
    public static final Parcelable.Creator<f6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16557l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16558m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.c f16559n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<f6> {
        @Override // android.os.Parcelable.Creator
        public final f6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f6[] newArray(int i10) {
            return new f6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f6(String str, v9.a aVar, la.c cVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(cVar, "session");
        this.f16557l = str;
        this.f16558m = aVar;
        this.f16559n = cVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16558m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f6)) {
            return false;
        }
        f6 f6Var = (f6) obj;
        return p4.h.c(this.f16557l, f6Var.f16557l) && p4.h.c(this.f16558m, f6Var.f16558m) && p4.h.c(this.f16559n, f6Var.f16559n);
    }

    public final int hashCode() {
        return this.f16559n.hashCode() + androidx.appcompat.widget.e0.c(this.f16558m, this.f16557l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16557l;
        v9.a aVar = this.f16558m;
        la.c cVar = this.f16559n;
        StringBuilder sbA = ed.c.a("SessionGetResult(id=", str, ", adaptIdentifier=", aVar, ", session=");
        sbA.append(cVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16557l);
        this.f16558m.writeToParcel(parcel, i10);
        this.f16559n.writeToParcel(parcel, i10);
    }
}
