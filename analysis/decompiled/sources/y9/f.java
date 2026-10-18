package y9;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;
import v9.m;

/* JADX INFO: compiled from: SessionCrcCheckFailedException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends m {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f18731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final la.b f18732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v9.a f18733k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f18734l;

    /* JADX INFO: compiled from: SessionCrcCheckFailedException.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new f(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(String str, la.b bVar, v9.a aVar) {
        super(aVar);
        h.j(str, "deviceId");
        h.j(bVar, "sessionId");
        h.j(aVar, "identifier");
        this.f18731i = str;
        this.f18732j = bVar;
        this.f18733k = aVar;
        this.f18734l = "Device: " + str + " with " + bVar + " had a failed CRC check";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return h.c(this.f18731i, fVar.f18731i) && h.c(this.f18732j, fVar.f18732j) && h.c(this.f18733k, fVar.f18733k);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f18734l;
    }

    public final int hashCode() {
        return this.f18733k.hashCode() + ((this.f18732j.hashCode() + (this.f18731i.hashCode() * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionCrcCheckFailedException(deviceId=" + this.f18731i + ", sessionId=" + this.f18732j + ", identifier=" + this.f18733k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f18731i);
        this.f18732j.writeToParcel(parcel, i10);
        this.f18733k.writeToParcel(parcel, i10);
    }
}
