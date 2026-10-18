package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r6 extends f {
    public static final Parcelable.Creator<r6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16806n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16807o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16808p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16809q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<r6> {
        @Override // android.os.Parcelable.Creator
        public final r6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r6(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final r6[] newArray(int i10) {
            return new r6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r6(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16806n = str;
        this.f16807o = bVar;
        this.f16808p = aVar;
        this.f16809q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16808p;
    }

    @Override // v9.f
    public final String c() {
        return "Stop Session Error with sessionId: " + this.f16807o.f10191h + ", " + this.f16809q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16809q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionStopError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r6)) {
            return false;
        }
        r6 r6Var = (r6) obj;
        return p4.h.c(this.f16806n, r6Var.f16806n) && p4.h.c(this.f16807o, r6Var.f16807o) && p4.h.c(this.f16808p, r6Var.f16808p) && p4.h.c(this.f16809q, r6Var.f16809q);
    }

    public final int hashCode() {
        return this.f16809q.hashCode() + androidx.appcompat.widget.e0.c(this.f16808p, (this.f16807o.hashCode() + (this.f16806n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionStopError(id=" + this.f16806n + ", sessionId=" + this.f16807o + ", adaptIdentifier=" + this.f16808p + ", error=" + this.f16809q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16806n);
        this.f16807o.writeToParcel(parcel, i10);
        this.f16808p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16809q);
    }
}
