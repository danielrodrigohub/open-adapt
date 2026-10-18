package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements d, Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("get_stats_left")
    public final h f526h;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new i(h.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(h hVar) {
        p4.h.j(hVar, "shoeStats");
        this.f526h = hVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && p4.h.c(this.f526h, ((i) obj).f526h);
    }

    public final int hashCode() {
        return this.f526h.hashCode();
    }

    public final String toString() {
        return "ShoeStatsLeft(shoeStats=" + this.f526h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f526h.writeToParcel(parcel, i10);
    }
}
