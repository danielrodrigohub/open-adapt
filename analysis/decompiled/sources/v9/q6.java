package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q6 extends g {
    public static final Parcelable.Creator<q6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16790l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final la.i f16791m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<q6> {
        @Override // android.os.Parcelable.Creator
        public final q6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q6(parcel.readString(), la.i.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final q6[] newArray(int i10) {
            return new q6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q6(String str, la.i iVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(iVar, "sessionData");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16790l = str;
        this.f16791m = iVar;
    }

    @Override // v9.g
    public final String d() {
        return "SessionStepNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q6)) {
            return false;
        }
        q6 q6Var = (q6) obj;
        return p4.h.c(this.f16790l, q6Var.f16790l) && p4.h.c(this.f16791m, q6Var.f16791m);
    }

    public final int hashCode() {
        return this.f16791m.hashCode() + (this.f16790l.hashCode() * 31);
    }

    public final String toString() {
        return "SessionStepNotificationResult(id=" + this.f16790l + ", sessionData=" + this.f16791m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16790l);
        this.f16791m.writeToParcel(parcel, i10);
    }
}
