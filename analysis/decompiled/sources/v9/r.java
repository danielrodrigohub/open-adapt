package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends n0 {
    public static final Parcelable.Creator<r> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f16792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16793j;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        public final r createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new r(v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(v9.a aVar, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str, "message");
        this.f16792i = aVar;
        this.f16793j = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return p4.h.c(this.f16792i, rVar.f16792i) && p4.h.c(this.f16793j, rVar.f16793j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16793j;
    }

    public final int hashCode() {
        return this.f16793j.hashCode() + (this.f16792i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitInvalidParameter(adaptIdentifier=" + this.f16792i + ", message=" + this.f16793j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16792i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16793j);
    }
}
