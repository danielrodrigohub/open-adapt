package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c1 extends g {
    public static final Parcelable.Creator<c1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16489l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ba.g f16490m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<c1> {
        @Override // android.os.Parcelable.Creator
        public final c1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c1(parcel.readString(), ba.g.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final c1[] newArray(int i10) {
            return new c1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(String str, ba.g gVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(gVar, "adaptKitCurrentAnimation");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16489l = str;
        this.f16490m = gVar;
    }

    @Override // v9.g
    public final String d() {
        return "AnimationStopNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return p4.h.c(this.f16489l, c1Var.f16489l) && p4.h.c(this.f16490m, c1Var.f16490m);
    }

    public final int hashCode() {
        return this.f16490m.hashCode() + (this.f16489l.hashCode() * 31);
    }

    public final String toString() {
        return "AnimationStopNotificationResult(id=" + this.f16489l + ", adaptKitCurrentAnimation=" + this.f16490m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16489l);
        this.f16490m.writeToParcel(parcel, i10);
    }
}
