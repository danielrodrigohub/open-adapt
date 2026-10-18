package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a4 extends f {
    public static final Parcelable.Creator<a4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16456n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16457o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16458p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<a4> {
        @Override // android.os.Parcelable.Creator
        public final a4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final a4[] newArray(int i10) {
            return new a4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16456n = str;
        this.f16457o = aVar;
        this.f16458p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16457o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16458p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceEngineStatsGetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a4)) {
            return false;
        }
        a4 a4Var = (a4) obj;
        return p4.h.c(this.f16456n, a4Var.f16456n) && p4.h.c(this.f16457o, a4Var.f16457o) && p4.h.c(this.f16458p, a4Var.f16458p);
    }

    public final int hashCode() {
        return this.f16458p.hashCode() + androidx.appcompat.widget.e0.c(this.f16457o, this.f16456n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16456n;
        v9.a aVar = this.f16457o;
        return d1.c.b(ed.c.a("LaceEngineStatsGetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16458p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16456n);
        this.f16457o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16458p);
    }
}
