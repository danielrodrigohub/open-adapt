package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l2 extends f {
    public static final Parcelable.Creator<l2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16697n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final da.h f16698o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16699p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<l2> {
        @Override // android.os.Parcelable.Creator
        public final l2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new l2(parcel.readString(), da.h.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final l2[] newArray(int i10) {
            return new l2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l2(String str, da.h hVar, v9.a aVar) {
        super(str, aVar, new Throwable("Device currently in use"));
        p4.h.j(str, "id");
        p4.h.j(hVar, "otherAppCurrentConnection");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16697n = str;
        this.f16698o = hVar;
        this.f16699p = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16699p;
    }

    @Override // v9.f
    public final String c() {
        return this.f16698o.toString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "DeviceInUseByOtherNikeAppError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l2)) {
            return false;
        }
        l2 l2Var = (l2) obj;
        return p4.h.c(this.f16697n, l2Var.f16697n) && p4.h.c(this.f16698o, l2Var.f16698o) && p4.h.c(this.f16699p, l2Var.f16699p);
    }

    public final int hashCode() {
        return this.f16699p.hashCode() + ((this.f16698o.hashCode() + (this.f16697n.hashCode() * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "DeviceInUseByOtherNikeAppError(id=" + this.f16697n + ", otherAppCurrentConnection=" + this.f16698o + ", adaptIdentifier=" + this.f16699p + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16697n);
        this.f16698o.writeToParcel(parcel, i10);
        this.f16699p.writeToParcel(parcel, i10);
    }
}
