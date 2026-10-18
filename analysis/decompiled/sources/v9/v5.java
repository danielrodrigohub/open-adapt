package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v5 extends f {
    public static final Parcelable.Creator<v5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16882n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16883o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16884p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16885q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<v5> {
        @Override // android.os.Parcelable.Creator
        public final v5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new v5(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final v5[] newArray(int i10) {
            return new v5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v5(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16882n = str;
        this.f16883o = bVar;
        this.f16884p = aVar;
        this.f16885q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16884p;
    }

    @Override // v9.f
    public final String c() {
        return "Download Error with sessionId: " + this.f16883o.f10191h + ", " + this.f16885q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16885q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionDownloadStartError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v5)) {
            return false;
        }
        v5 v5Var = (v5) obj;
        return p4.h.c(this.f16882n, v5Var.f16882n) && p4.h.c(this.f16883o, v5Var.f16883o) && p4.h.c(this.f16884p, v5Var.f16884p) && p4.h.c(this.f16885q, v5Var.f16885q);
    }

    public final int hashCode() {
        return this.f16885q.hashCode() + androidx.appcompat.widget.e0.c(this.f16884p, (this.f16883o.hashCode() + (this.f16882n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionDownloadStartError(id=" + this.f16882n + ", sessionId=" + this.f16883o + ", adaptIdentifier=" + this.f16884p + ", error=" + this.f16885q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16882n);
        this.f16883o.writeToParcel(parcel, i10);
        this.f16884p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16885q);
    }
}
