package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m1 extends f {
    public static final Parcelable.Creator<m1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16709n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16710o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16711p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<m1> {
        @Override // android.os.Parcelable.Creator
        public final m1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m1((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final m1[] newArray(int i10) {
            return new m1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16709n = th;
        this.f16710o = str;
        this.f16711p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16711p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AutoAdaptCurrentStateError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m1)) {
            return false;
        }
        m1 m1Var = (m1) obj;
        return p4.h.c(this.f16709n, m1Var.f16709n) && p4.h.c(this.f16710o, m1Var.f16710o) && p4.h.c(this.f16711p, m1Var.f16711p);
    }

    public final int hashCode() {
        return this.f16711p.hashCode() + a1.f.c(this.f16710o, this.f16709n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AutoAdaptCurrentStateError(throwable=" + this.f16709n + ", id=" + this.f16710o + ", adaptIdentifier=" + this.f16711p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16709n);
        parcel.writeString(this.f16710o);
        this.f16711p.writeToParcel(parcel, i10);
    }
}
