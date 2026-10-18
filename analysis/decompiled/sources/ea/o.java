package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitPairedDevicesError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends v9.m {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f6679i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Throwable f6680j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f6681k;

    /* JADX INFO: compiled from: AdaptKitPairedDevicesError.kt */
    public static final class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o(v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public /* synthetic */ o(v9.a aVar, Throwable th) {
        this(aVar, th, "An error occurred when retrieving devices. Check " + th);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return p4.h.c(this.f6679i, oVar.f6679i) && p4.h.c(this.f6680j, oVar.f6680j) && p4.h.c(this.f6681k, oVar.f6681k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f6681k;
    }

    public final int hashCode() {
        return this.f6681k.hashCode() + ((this.f6680j.hashCode() + (this.f6679i.hashCode() * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        v9.a aVar = this.f6679i;
        Throwable th = this.f6680j;
        String str = this.f6681k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitPairedDevicesError(adaptIdentifier=");
        sb2.append(aVar);
        sb2.append(", error=");
        sb2.append(th);
        sb2.append(", message=");
        return a1.f.d(sb2, str, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6679i.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f6680j);
        parcel.writeString(this.f6681k);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(v9.a aVar, Throwable th, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        p4.h.j(str, "message");
        this.f6679i = aVar;
        this.f6680j = th;
        this.f6681k = str;
    }
}
