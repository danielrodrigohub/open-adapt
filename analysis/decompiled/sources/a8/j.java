package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements d, Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("get_stats_right")
    public final h f527h;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j(h.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(h hVar) {
        p4.h.j(hVar, "shoeStats");
        this.f527h = hVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && p4.h.c(this.f527h, ((j) obj).f527h);
    }

    public final int hashCode() {
        return this.f527h.hashCode();
    }

    public final String toString() {
        return "ShoeStatsRight(shoeStats=" + this.f527h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f527h.writeToParcel(parcel, i10);
    }
}
