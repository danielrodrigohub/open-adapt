package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p5 extends g {
    public static final Parcelable.Creator<p5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16767l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final la.f f16768m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<p5> {
        @Override // android.os.Parcelable.Creator
        public final p5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p5(parcel.readString(), la.f.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final p5[] newArray(int i10) {
            return new p5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(String str, la.f fVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(fVar, "sessionCapsenseData");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16767l = str;
        this.f16768m = fVar;
    }

    @Override // v9.g
    public final String d() {
        return "SessionCapsenseNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p5)) {
            return false;
        }
        p5 p5Var = (p5) obj;
        return p4.h.c(this.f16767l, p5Var.f16767l) && p4.h.c(this.f16768m, p5Var.f16768m);
    }

    public final int hashCode() {
        return this.f16768m.hashCode() + (this.f16767l.hashCode() * 31);
    }

    public final String toString() {
        return "SessionCapsenseNotificationResult(id=" + this.f16767l + ", sessionCapsenseData=" + this.f16768m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16767l);
        this.f16768m.writeToParcel(parcel, i10);
    }
}
