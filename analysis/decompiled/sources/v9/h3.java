package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h3 extends f {
    public static final Parcelable.Creator<h3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16584n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16585o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16586p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<h3> {
        @Override // android.os.Parcelable.Creator
        public final h3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h3((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final h3[] newArray(int i10) {
            return new h3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h3(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16584n = th;
        this.f16585o = str;
        this.f16586p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16586p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "GestureConfigurationSetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h3)) {
            return false;
        }
        h3 h3Var = (h3) obj;
        return p4.h.c(this.f16584n, h3Var.f16584n) && p4.h.c(this.f16585o, h3Var.f16585o) && p4.h.c(this.f16586p, h3Var.f16586p);
    }

    public final int hashCode() {
        return this.f16586p.hashCode() + a1.f.c(this.f16585o, this.f16584n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "GestureConfigurationSetError(throwable=" + this.f16584n + ", id=" + this.f16585o + ", adaptIdentifier=" + this.f16586p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16584n);
        parcel.writeString(this.f16585o);
        this.f16586p.writeToParcel(parcel, i10);
    }
}
