package y9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: MissingLocationPermissionException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f18729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f18730j;

    /* JADX INFO: compiled from: MissingLocationPermissionException.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new e(v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(v9.a aVar) {
        super(aVar);
        h.j(aVar, "adaptIdentifier");
        this.f18729i = aVar;
        this.f18730j = "Missing Location Permission from User";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return h.c(this.f18729i, eVar.f18729i) && h.c(this.f18730j, eVar.f18730j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18730j;
    }

    public final int hashCode() {
        return this.f18730j.hashCode() + (this.f18729i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "MissingLocationPermissionException(adaptIdentifier=" + this.f18729i + ", message=" + this.f18730j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.f18729i.writeToParcel(parcel, i10);
        parcel.writeString(this.f18730j);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(v9.a aVar, String str) {
        super(aVar);
        h.j(aVar, "adaptIdentifier");
        h.j(str, "message");
        this.f18729i = aVar;
        this.f18730j = str;
    }
}
