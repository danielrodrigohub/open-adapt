package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t1 extends f {
    public static final Parcelable.Creator<t1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16837p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<t1> {
        @Override // android.os.Parcelable.Creator
        public final t1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t1((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final t1[] newArray(int i10) {
            return new t1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t1(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16835n = th;
        this.f16836o = str;
        this.f16837p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16837p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AutoAdaptStopError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t1)) {
            return false;
        }
        t1 t1Var = (t1) obj;
        return p4.h.c(this.f16835n, t1Var.f16835n) && p4.h.c(this.f16836o, t1Var.f16836o) && p4.h.c(this.f16837p, t1Var.f16837p);
    }

    public final int hashCode() {
        return this.f16837p.hashCode() + a1.f.c(this.f16836o, this.f16835n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AutoAdaptStopError(throwable=" + this.f16835n + ", id=" + this.f16836o + ", adaptIdentifier=" + this.f16837p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16835n);
        parcel.writeString(this.f16836o);
        this.f16837p.writeToParcel(parcel, i10);
    }
}
