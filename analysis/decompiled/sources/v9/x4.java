package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x4 extends f {
    public static final Parcelable.Creator<x4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16912n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16913o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16914p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<x4> {
        @Override // android.os.Parcelable.Creator
        public final x4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new x4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final x4[] newArray(int i10) {
            return new x4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16912n = str;
        this.f16913o = aVar;
        this.f16914p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16913o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16914p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LaceToPresetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x4)) {
            return false;
        }
        x4 x4Var = (x4) obj;
        return p4.h.c(this.f16912n, x4Var.f16912n) && p4.h.c(this.f16913o, x4Var.f16913o) && p4.h.c(this.f16914p, x4Var.f16914p);
    }

    public final int hashCode() {
        return this.f16914p.hashCode() + androidx.appcompat.widget.e0.c(this.f16913o, this.f16912n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16912n;
        v9.a aVar = this.f16913o;
        return d1.c.b(ed.c.a("LaceToPresetError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16914p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16912n);
        this.f16913o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16914p);
    }
}
