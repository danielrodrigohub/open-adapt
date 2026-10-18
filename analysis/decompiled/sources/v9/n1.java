package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n1 extends g {
    public static final Parcelable.Creator<n1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16725l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16726m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<n1> {
        @Override // android.os.Parcelable.Creator
        public final n1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n1(ca.a.j(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final n1[] newArray(int i10) {
            return new n1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n1(int i10, String str) {
        super(str, v9.a.f16443k);
        androidx.appcompat.widget.o.d(i10, "state");
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16725l = i10;
        this.f16726m = str;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("state ", ca.a.b(this.f16725l));
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptCurrentStateNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return false;
        }
        n1 n1Var = (n1) obj;
        return this.f16725l == n1Var.f16725l && p4.h.c(this.f16726m, n1Var.f16726m);
    }

    public final int hashCode() {
        return this.f16726m.hashCode() + (q.g.a(this.f16725l) * 31);
    }

    public final String toString() {
        int i10 = this.f16725l;
        String str = this.f16726m;
        StringBuilder sbC = a0.b.c("AutoAdaptCurrentStateNotificationResult(state=");
        sbC.append(ca.a.h(i10));
        sbC.append(", id=");
        sbC.append(str);
        sbC.append(")");
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(ca.a.g(this.f16725l));
        parcel.writeString(this.f16726m);
    }
}
