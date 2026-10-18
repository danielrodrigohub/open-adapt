package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h6 extends f {
    public static final Parcelable.Creator<h6> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16590n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16591o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16592p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16593q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<h6> {
        @Override // android.os.Parcelable.Creator
        public final h6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h6(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final h6[] newArray(int i10) {
            return new h6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h6(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16590n = str;
        this.f16591o = bVar;
        this.f16592p = aVar;
        this.f16593q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16592p;
    }

    @Override // v9.f
    public final String c() {
        return "Pause Session Error with sessionId: " + this.f16591o.f10191h + ", " + this.f16593q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16593q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionPauseError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h6)) {
            return false;
        }
        h6 h6Var = (h6) obj;
        return p4.h.c(this.f16590n, h6Var.f16590n) && p4.h.c(this.f16591o, h6Var.f16591o) && p4.h.c(this.f16592p, h6Var.f16592p) && p4.h.c(this.f16593q, h6Var.f16593q);
    }

    public final int hashCode() {
        return this.f16593q.hashCode() + androidx.appcompat.widget.e0.c(this.f16592p, (this.f16591o.hashCode() + (this.f16590n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionPauseError(id=" + this.f16590n + ", sessionId=" + this.f16591o + ", adaptIdentifier=" + this.f16592p + ", error=" + this.f16593q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16590n);
        this.f16591o.writeToParcel(parcel, i10);
        this.f16592p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16593q);
    }
}
