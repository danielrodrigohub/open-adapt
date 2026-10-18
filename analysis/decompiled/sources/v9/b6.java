package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b6 extends f {
    public static final Parcelable.Creator<b6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16483n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16484o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16485p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16486q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<b6> {
        @Override // android.os.Parcelable.Creator
        public final b6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b6(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final b6[] newArray(int i10) {
            return new b6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b6(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16483n = str;
        this.f16484o = bVar;
        this.f16485p = aVar;
        this.f16486q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16485p;
    }

    @Override // v9.f
    public final String c() {
        return "Download Error with sessionId: " + this.f16484o.f10191h + ", " + this.f16486q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16486q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionDownloadingError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b6)) {
            return false;
        }
        b6 b6Var = (b6) obj;
        return p4.h.c(this.f16483n, b6Var.f16483n) && p4.h.c(this.f16484o, b6Var.f16484o) && p4.h.c(this.f16485p, b6Var.f16485p) && p4.h.c(this.f16486q, b6Var.f16486q);
    }

    public final int hashCode() {
        return this.f16486q.hashCode() + androidx.appcompat.widget.e0.c(this.f16485p, (this.f16484o.hashCode() + (this.f16483n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionDownloadingError(id=" + this.f16483n + ", sessionId=" + this.f16484o + ", adaptIdentifier=" + this.f16485p + ", error=" + this.f16486q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16483n);
        this.f16484o.writeToParcel(parcel, i10);
        this.f16485p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16486q);
    }
}
