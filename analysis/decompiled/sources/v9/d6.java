package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d6 extends f {
    public static final Parcelable.Creator<d6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16513n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16514o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16515p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16516q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<d6> {
        @Override // android.os.Parcelable.Creator
        public final d6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d6(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final d6[] newArray(int i10) {
            return new d6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d6(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16513n = str;
        this.f16514o = bVar;
        this.f16515p = aVar;
        this.f16516q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16515p;
    }

    @Override // v9.f
    public final String c() {
        return "Failure in getting session with id: " + this.f16514o.f10191h + ", message: " + this.f16516q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16516q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d6)) {
            return false;
        }
        d6 d6Var = (d6) obj;
        return p4.h.c(this.f16513n, d6Var.f16513n) && p4.h.c(this.f16514o, d6Var.f16514o) && p4.h.c(this.f16515p, d6Var.f16515p) && p4.h.c(this.f16516q, d6Var.f16516q);
    }

    public final int hashCode() {
        return this.f16516q.hashCode() + androidx.appcompat.widget.e0.c(this.f16515p, (this.f16514o.hashCode() + (this.f16513n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionGetError(id=" + this.f16513n + ", sessionId=" + this.f16514o + ", adaptIdentifier=" + this.f16515p + ", error=" + this.f16516q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16513n);
        this.f16514o.writeToParcel(parcel, i10);
        this.f16515p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16516q);
    }
}
