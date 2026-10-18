package ha;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitPairingError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s extends ha.a {
    public static final Parcelable.Creator<s> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f8394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f8395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Throwable f8396k;

    /* JADX INFO: compiled from: AdaptKitPairingError.kt */
    public static final class a implements Parcelable.Creator<s> {
        @Override // android.os.Parcelable.Creator
        public final s createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new s(v9.a.CREATOR.createFromParcel(parcel), parcel.readString(), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final s[] newArray(int i10) {
            return new s[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(v9.a aVar, String str, Throwable th) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str, "message");
        p4.h.j(th, "error");
        this.f8394i = aVar;
        this.f8395j = str;
        this.f8396k = th;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return p4.h.c(this.f8394i, sVar.f8394i) && p4.h.c(this.f8395j, sVar.f8395j) && p4.h.c(this.f8396k, sVar.f8396k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f8395j;
    }

    public final int hashCode() {
        return this.f8396k.hashCode() + a1.f.c(this.f8395j, this.f8394i.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        v9.a aVar = this.f8394i;
        String str = this.f8395j;
        Throwable th = this.f8396k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GeneralPairingError(adaptIdentifier=");
        sb2.append(aVar);
        sb2.append(", message=");
        sb2.append(str);
        sb2.append(", error=");
        return d1.c.b(sb2, th, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f8394i.writeToParcel(parcel, i10);
        parcel.writeString(this.f8395j);
        parcel.writeSerializable(this.f8396k);
    }
}
