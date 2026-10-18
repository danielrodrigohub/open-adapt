package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n4 extends g {
    public static final Parcelable.Creator<n4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16733l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ea.i f16734m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<n4> {
        @Override // android.os.Parcelable.Creator
        public final n4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n4(parcel.readString(), ea.i.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final n4[] newArray(int i10) {
            return new n4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(String str, ea.i iVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(iVar, "lacingPosition");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16733l = str;
        this.f16734m = iVar;
    }

    @Override // v9.g
    public final String c() {
        return "LacePercent[lacePosition: " + this.f16734m + "]";
    }

    @Override // v9.g
    public final String d() {
        return "LacePercentNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n4)) {
            return false;
        }
        n4 n4Var = (n4) obj;
        return p4.h.c(this.f16733l, n4Var.f16733l) && p4.h.c(this.f16734m, n4Var.f16734m);
    }

    public final int hashCode() {
        return this.f16734m.hashCode() + (this.f16733l.hashCode() * 31);
    }

    public final String toString() {
        return "LacePercentNotificationResult(id=" + this.f16733l + ", lacingPosition=" + this.f16734m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16733l);
        this.f16734m.writeToParcel(parcel, i10);
    }
}
