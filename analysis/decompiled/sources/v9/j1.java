package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j1 extends g {
    public static final Parcelable.Creator<j1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16650l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16651m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<j1> {
        @Override // android.os.Parcelable.Creator
        public final j1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j1(androidx.fragment.app.r0.m(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final j1[] newArray(int i10) {
            return new j1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1(int i10, String str) {
        super(str, v9.a.f16443k);
        androidx.appcompat.widget.o.d(i10, "activity");
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16650l = i10;
        this.f16651m = str;
    }

    @Override // v9.g
    public final String c() {
        return androidx.recyclerview.widget.d.c("activity ", androidx.fragment.app.r0.d(this.f16650l));
    }

    @Override // v9.g
    public final String d() {
        return "AutoAdaptCurrentActivityNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        return this.f16650l == j1Var.f16650l && p4.h.c(this.f16651m, j1Var.f16651m);
    }

    public final int hashCode() {
        return this.f16651m.hashCode() + (q.g.a(this.f16650l) * 31);
    }

    public final String toString() {
        int i10 = this.f16650l;
        String str = this.f16651m;
        StringBuilder sbC = a0.b.c("AutoAdaptCurrentActivityNotificationResult(activity=");
        sbC.append(androidx.fragment.app.r0.l(i10));
        sbC.append(", id=");
        sbC.append(str);
        sbC.append(")");
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(androidx.fragment.app.r0.j(this.f16650l));
        parcel.writeString(this.f16651m);
    }
}
