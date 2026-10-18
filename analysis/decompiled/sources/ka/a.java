package ka;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: AdaptKitScanError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends m {
    public static final Parcelable.Creator<a> CREATOR = new C0189a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9754i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Throwable f9755j;

    /* JADX INFO: renamed from: ka.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitScanError.kt */
    public static final class C0189a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new a(parcel.readString(), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String str, Throwable th) {
        super(v9.a.f16442j);
        h.j(str, "message");
        h.j(th, "error");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f9754i = str;
        this.f9755j = th;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f9754i, aVar.f9754i) && h.c(this.f9755j, aVar.f9755j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f9754i;
    }

    public final int hashCode() {
        return this.f9755j.hashCode() + (this.f9754i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitScanError(message=" + this.f9754i + ", error=" + this.f9755j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f9754i);
        parcel.writeSerializable(this.f9755j);
    }
}
