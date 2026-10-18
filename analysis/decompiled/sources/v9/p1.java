package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p1 extends g {
    public static final Parcelable.Creator<p1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16757l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16758m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f16759n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<p1> {
        @Override // android.os.Parcelable.Creator
        public final p1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p1(ca.a.j(parcel.readString()), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final p1[] newArray(int i10) {
            return new p1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(int i10, String str, v9.a aVar) {
        super(str, aVar);
        androidx.appcompat.widget.o.d(i10, "state");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16757l = i10;
        this.f16758m = str;
        this.f16759n = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16759n;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("state ", ca.a.b(this.f16757l));
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptCurrentStateResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p1)) {
            return false;
        }
        p1 p1Var = (p1) obj;
        return this.f16757l == p1Var.f16757l && p4.h.c(this.f16758m, p1Var.f16758m) && p4.h.c(this.f16759n, p1Var.f16759n);
    }

    public final int hashCode() {
        return this.f16759n.hashCode() + a1.f.c(this.f16758m, q.g.a(this.f16757l) * 31, 31);
    }

    public final String toString() {
        int i10 = this.f16757l;
        String str = this.f16758m;
        v9.a aVar = this.f16759n;
        StringBuilder sbC = a0.b.c("AutoAdaptCurrentStateResult(state=");
        sbC.append(ca.a.h(i10));
        sbC.append(", id=");
        sbC.append(str);
        sbC.append(", adaptIdentifier=");
        sbC.append(aVar);
        sbC.append(")");
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(ca.a.g(this.f16757l));
        parcel.writeString(this.f16758m);
        this.f16759n.writeToParcel(parcel, i10);
    }
}
