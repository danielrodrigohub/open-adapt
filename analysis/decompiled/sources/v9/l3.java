package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l3 extends f {
    public static final Parcelable.Creator<l3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16700n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16702p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<l3> {
        @Override // android.os.Parcelable.Creator
        public final l3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l3((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final l3[] newArray(int i10) {
            return new l3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l3(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16700n = th;
        this.f16701o = str;
        this.f16702p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16702p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "GestureStatisticsGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l3)) {
            return false;
        }
        l3 l3Var = (l3) obj;
        return p4.h.c(this.f16700n, l3Var.f16700n) && p4.h.c(this.f16701o, l3Var.f16701o) && p4.h.c(this.f16702p, l3Var.f16702p);
    }

    public final int hashCode() {
        return this.f16702p.hashCode() + a1.f.c(this.f16701o, this.f16700n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "GestureStatisticsGetError(throwable=" + this.f16700n + ", id=" + this.f16701o + ", adaptIdentifier=" + this.f16702p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16700n);
        parcel.writeString(this.f16701o);
        this.f16702p.writeToParcel(parcel, i10);
    }
}
