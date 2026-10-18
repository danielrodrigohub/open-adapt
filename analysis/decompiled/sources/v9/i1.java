package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i1 extends f {
    public static final Parcelable.Creator<i1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16631n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16633p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<i1> {
        @Override // android.os.Parcelable.Creator
        public final i1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i1((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final i1[] newArray(int i10) {
            return new i1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16631n = th;
        this.f16632o = str;
        this.f16633p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16633p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AutoAdaptCurrentActivityError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        return p4.h.c(this.f16631n, i1Var.f16631n) && p4.h.c(this.f16632o, i1Var.f16632o) && p4.h.c(this.f16633p, i1Var.f16633p);
    }

    public final int hashCode() {
        return this.f16633p.hashCode() + a1.f.c(this.f16632o, this.f16631n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AutoAdaptCurrentActivityError(throwable=" + this.f16631n + ", id=" + this.f16632o + ", adaptIdentifier=" + this.f16633p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16631n);
        parcel.writeString(this.f16632o);
        this.f16633p.writeToParcel(parcel, i10);
    }
}
