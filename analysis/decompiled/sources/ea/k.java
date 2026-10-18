package ea;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitModeError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends v9.m {
    public static final Parcelable.Creator<k> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f6662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6663j;

    /* JADX INFO: compiled from: AdaptKitModeError.kt */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        public final k createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new k(v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(v9.a aVar, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str, "message");
        this.f6662i = aVar;
        this.f6663j = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return p4.h.c(this.f6662i, kVar.f6662i) && p4.h.c(this.f6663j, kVar.f6663j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f6663j;
    }

    public final int hashCode() {
        return this.f6663j.hashCode() + (this.f6662i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitModeError(adaptIdentifier=" + this.f6662i + ", message=" + this.f6663j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6662i.writeToParcel(parcel, i10);
        parcel.writeString(this.f6663j);
    }
}
