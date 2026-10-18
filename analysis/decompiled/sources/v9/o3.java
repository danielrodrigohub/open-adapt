package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o3 extends f {
    public static final Parcelable.Creator<o3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16744n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16745o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16746p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<o3> {
        @Override // android.os.Parcelable.Creator
        public final o3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o3((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final o3[] newArray(int i10) {
            return new o3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o3(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16744n = th;
        this.f16745o = str;
        this.f16746p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16746p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "GestureStatisticsResetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o3)) {
            return false;
        }
        o3 o3Var = (o3) obj;
        return p4.h.c(this.f16744n, o3Var.f16744n) && p4.h.c(this.f16745o, o3Var.f16745o) && p4.h.c(this.f16746p, o3Var.f16746p);
    }

    public final int hashCode() {
        return this.f16746p.hashCode() + a1.f.c(this.f16745o, this.f16744n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "GestureStatisticsResetError(throwable=" + this.f16744n + ", id=" + this.f16745o + ", adaptIdentifier=" + this.f16746p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16744n);
        parcel.writeString(this.f16745o);
        this.f16746p.writeToParcel(parcel, i10);
    }
}
