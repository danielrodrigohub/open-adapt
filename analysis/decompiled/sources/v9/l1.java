package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l1 extends g {
    public static final Parcelable.Creator<l1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16694l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16695m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f16696n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<l1> {
        @Override // android.os.Parcelable.Creator
        public final l1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l1(androidx.fragment.app.r0.m(parcel.readString()), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final l1[] newArray(int i10) {
            return new l1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l1(int i10, String str, v9.a aVar) {
        super(str, aVar);
        androidx.appcompat.widget.o.d(i10, "activity");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16694l = i10;
        this.f16695m = str;
        this.f16696n = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16696n;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("activity ", androidx.fragment.app.r0.d(this.f16694l));
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptCurrentActivityResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l1)) {
            return false;
        }
        l1 l1Var = (l1) obj;
        return this.f16694l == l1Var.f16694l && p4.h.c(this.f16695m, l1Var.f16695m) && p4.h.c(this.f16696n, l1Var.f16696n);
    }

    public final int hashCode() {
        return this.f16696n.hashCode() + a1.f.c(this.f16695m, q.g.a(this.f16694l) * 31, 31);
    }

    public final String toString() {
        int i10 = this.f16694l;
        String str = this.f16695m;
        v9.a aVar = this.f16696n;
        StringBuilder sbC = a0.b.c("AutoAdaptCurrentActivityResult(activity=");
        sbC.append(androidx.fragment.app.r0.l(i10));
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
        parcel.writeString(androidx.fragment.app.r0.j(this.f16694l));
        parcel.writeString(this.f16695m);
        this.f16696n.writeToParcel(parcel, i10);
    }
}
