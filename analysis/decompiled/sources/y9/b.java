package y9;

import android.os.Parcel;
import android.os.Parcelable;
import ea.h;
import v9.m;

/* JADX INFO: compiled from: AdaptKitInvalidLacingPositionException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends m {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f18723i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h.a f18724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f18725k;

    /* JADX INFO: compiled from: AdaptKitInvalidLacingPositionException.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(v9.a.CREATOR.createFromParcel(parcel), h.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public /* synthetic */ b(v9.a aVar, h.a aVar2) {
        this(aVar, aVar2, "The absolute lacing percentage of: " + aVar2 + " was not within the bounds of 0 - 100");
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
        return p4.h.c(this.f18723i, bVar.f18723i) && p4.h.c(this.f18724j, bVar.f18724j) && p4.h.c(this.f18725k, bVar.f18725k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18725k;
    }

    public final int hashCode() {
        return this.f18725k.hashCode() + ((this.f18724j.hashCode() + (this.f18723i.hashCode() * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        v9.a aVar = this.f18723i;
        h.a aVar2 = this.f18724j;
        String str = this.f18725k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitInvalidLacingPositionException(adaptIdentifier=");
        sb2.append(aVar);
        sb2.append(", laceTightnessPercentage=");
        sb2.append(aVar2);
        sb2.append(", message=");
        return a1.f.d(sb2, str, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f18723i.writeToParcel(parcel, i10);
        this.f18724j.writeToParcel(parcel, i10);
        parcel.writeString(this.f18725k);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(v9.a aVar, h.a aVar2, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(aVar2, "laceTightnessPercentage");
        p4.h.j(str, "message");
        this.f18723i = aVar;
        this.f18724j = aVar2;
        this.f18725k = str;
    }
}
