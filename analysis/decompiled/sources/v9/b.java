package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends n0 {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f16464i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16465j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16466k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16467l;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(v9.a.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(v9.a aVar, String str, String str2) {
        super(aVar);
        p4.h.j(aVar, "identifier");
        p4.h.j(str, "devices");
        this.f16464i = aVar;
        this.f16465j = str;
        this.f16466k = str2;
        this.f16467l = a0.b.a("The DeletePair Request from for: ", str2, " could not be processed. Device(s) ", str, " are still connected through another application.");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return p4.h.c(this.f16464i, bVar.f16464i) && p4.h.c(this.f16465j, bVar.f16465j) && p4.h.c(this.f16466k, bVar.f16466k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16467l;
    }

    public final int hashCode() {
        int iC = a1.f.c(this.f16465j, this.f16464i.hashCode() * 31, 31);
        String str = this.f16466k;
        return iC + (str == null ? 0 : str.hashCode());
    }

    @Override // java.lang.Throwable
    public final String toString() {
        v9.a aVar = this.f16464i;
        String str = this.f16465j;
        String str2 = this.f16466k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitCannotDeleteError(identifier=");
        sb2.append(aVar);
        sb2.append(", devices=");
        sb2.append(str);
        sb2.append(", deviceId=");
        return a1.f.d(sb2, str2, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16464i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16465j);
        parcel.writeString(this.f16466k);
    }
}
