package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e3 extends f {
    public static final Parcelable.Creator<e3> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Throwable f16531n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f16532o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16533p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<e3> {
        @Override // android.os.Parcelable.Creator
        public final e3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e3((Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final e3[] newArray(int i10) {
            return new e3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e3(Throwable th, String str, v9.a aVar) {
        super(str, aVar, th);
        p4.h.j(th, "throwable");
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16531n = th;
        this.f16532o = str;
        this.f16533p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16533p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "GestureConfigurationGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e3)) {
            return false;
        }
        e3 e3Var = (e3) obj;
        return p4.h.c(this.f16531n, e3Var.f16531n) && p4.h.c(this.f16532o, e3Var.f16532o) && p4.h.c(this.f16533p, e3Var.f16533p);
    }

    public final int hashCode() {
        return this.f16533p.hashCode() + a1.f.c(this.f16532o, this.f16531n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "GestureConfigurationGetError(throwable=" + this.f16531n + ", id=" + this.f16532o + ", adaptIdentifier=" + this.f16533p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16531n);
        parcel.writeString(this.f16532o);
        this.f16533p.writeToParcel(parcel, i10);
    }
}
