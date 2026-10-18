package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y extends n0 {
    public static final Parcelable.Creator<y> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v9.a f16921i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f16922j;

    /* JADX INFO: compiled from: AdaptKitRequestNotProcessed.kt */
    public static final class a implements Parcelable.Creator<y> {
        @Override // android.os.Parcelable.Creator
        public final y createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y(v9.a.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final y[] newArray(int i10) {
            return new y[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(v9.a aVar, String str) {
        super(aVar);
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(str, "message");
        this.f16921i = aVar;
        this.f16922j = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return p4.h.c(this.f16921i, yVar.f16921i) && p4.h.c(this.f16922j, yVar.f16922j);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16922j;
    }

    public final int hashCode() {
        return this.f16922j.hashCode() + (this.f16921i.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AdaptKitNotProcessedInvalidObject(adaptIdentifier=" + this.f16921i + ", message=" + this.f16922j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16921i.writeToParcel(parcel, i10);
        parcel.writeString(this.f16922j);
    }
}
