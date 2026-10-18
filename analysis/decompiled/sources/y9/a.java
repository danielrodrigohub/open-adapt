package y9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: AdaptKitControllerCommandFailedException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends m {
    public static final Parcelable.Creator<a> CREATOR = new C0324a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f18720i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f18721j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f18722k;

    /* JADX INFO: renamed from: y9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitControllerCommandFailedException.kt */
    public static final class C0324a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new a(v9.a.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public /* synthetic */ a(v9.a aVar, String str) {
        this(aVar, str, a0.d.c("AdaptKit command ", str, " failed to trigger"));
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
        return h.c(this.f18720i, aVar.f18720i) && h.c(this.f18721j, aVar.f18721j) && h.c(this.f18722k, aVar.f18722k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18722k;
    }

    public final int hashCode() {
        return this.f18722k.hashCode() + a1.f.c(this.f18721j, this.f18720i.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        v9.a aVar = this.f18720i;
        String str = this.f18721j;
        String str2 = this.f18722k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitControllerCommandFailedException(adaptIdentifier=");
        sb2.append(aVar);
        sb2.append(", command=");
        sb2.append(str);
        sb2.append(", message=");
        return a1.f.d(sb2, str2, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.f18720i.writeToParcel(parcel, i10);
        parcel.writeString(this.f18721j);
        parcel.writeString(this.f18722k);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(v9.a aVar, String str, String str2) {
        super(aVar);
        h.j(aVar, "adaptIdentifier");
        h.j(str, "command");
        h.j(str2, "message");
        this.f18720i = aVar;
        this.f18721j = str;
        this.f18722k = str2;
    }
}
