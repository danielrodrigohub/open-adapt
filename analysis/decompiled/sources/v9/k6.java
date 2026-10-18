package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k6 extends f {
    public static final Parcelable.Creator<k6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16676n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16677o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16678p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16679q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<k6> {
        @Override // android.os.Parcelable.Creator
        public final k6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k6(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final k6[] newArray(int i10) {
            return new k6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k6(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16676n = str;
        this.f16677o = bVar;
        this.f16678p = aVar;
        this.f16679q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16678p;
    }

    @Override // v9.f
    public final String c() {
        return "Resume Session Error with sessionId: " + this.f16677o.f10191h + ", " + this.f16679q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16679q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionResumeError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k6)) {
            return false;
        }
        k6 k6Var = (k6) obj;
        return p4.h.c(this.f16676n, k6Var.f16676n) && p4.h.c(this.f16677o, k6Var.f16677o) && p4.h.c(this.f16678p, k6Var.f16678p) && p4.h.c(this.f16679q, k6Var.f16679q);
    }

    public final int hashCode() {
        return this.f16679q.hashCode() + androidx.appcompat.widget.e0.c(this.f16678p, (this.f16677o.hashCode() + (this.f16676n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionResumeError(id=" + this.f16676n + ", sessionId=" + this.f16677o + ", adaptIdentifier=" + this.f16678p + ", error=" + this.f16679q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16676n);
        this.f16677o.writeToParcel(parcel, i10);
        this.f16678p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16679q);
    }
}
