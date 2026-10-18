package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r5 extends f {
    public static final Parcelable.Creator<r5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16802n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16803o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16804p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16805q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<r5> {
        @Override // android.os.Parcelable.Creator
        public final r5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r5(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final r5[] newArray(int i10) {
            return new r5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r5(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16802n = str;
        this.f16803o = bVar;
        this.f16804p = aVar;
        this.f16805q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16804p;
    }

    @Override // v9.f
    public final String c() {
        return "Download Error with sessionId: " + this.f16803o.f10191h + ", " + this.f16805q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16805q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionDownloadDeleteError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r5)) {
            return false;
        }
        r5 r5Var = (r5) obj;
        return p4.h.c(this.f16802n, r5Var.f16802n) && p4.h.c(this.f16803o, r5Var.f16803o) && p4.h.c(this.f16804p, r5Var.f16804p) && p4.h.c(this.f16805q, r5Var.f16805q);
    }

    public final int hashCode() {
        return this.f16805q.hashCode() + androidx.appcompat.widget.e0.c(this.f16804p, (this.f16803o.hashCode() + (this.f16802n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionDownloadDeleteError(id=" + this.f16802n + ", sessionId=" + this.f16803o + ", adaptIdentifier=" + this.f16804p + ", error=" + this.f16805q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16802n);
        this.f16803o.writeToParcel(parcel, i10);
        this.f16804p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16805q);
    }
}
