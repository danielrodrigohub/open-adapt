package da;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitConnectionDetails.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v9.e f6135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final da.a f6136i;

    /* JADX INFO: compiled from: AdaptKitConnectionDetails.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(v9.e.valueOf(parcel.readString()), da.a.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(v9.e eVar, da.a aVar) {
        p4.h.j(eVar, "connection");
        p4.h.j(aVar, "state");
        this.f6135h = eVar;
        this.f6136i = aVar;
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
        return this.f6135h == bVar.f6135h && this.f6136i == bVar.f6136i;
    }

    public final int hashCode() {
        return this.f6136i.hashCode() + (this.f6135h.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitConnectionDetails(connection=" + this.f6135h + ", state=" + this.f6136i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f6135h.name());
        parcel.writeString(this.f6136i.name());
    }
}
