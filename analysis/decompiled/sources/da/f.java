package da;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitCurrentConnection.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f6152h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f6153i;

    /* JADX INFO: compiled from: AdaptKitCurrentConnection.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            Parcelable.Creator<b> creator = b.CREATOR;
            return new f(creator.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(b bVar, b bVar2) {
        p4.h.j(bVar, "left");
        p4.h.j(bVar2, "right");
        this.f6152h = bVar;
        this.f6153i = bVar2;
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
        return p4.h.c(this.f6152h, fVar.f6152h) && p4.h.c(this.f6153i, fVar.f6153i);
    }

    public final int hashCode() {
        return this.f6153i.hashCode() + (this.f6152h.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitCurrentConnection(left=" + this.f6152h + ", right=" + this.f6153i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6152h.writeToParcel(parcel, i10);
        this.f6153i.writeToParcel(parcel, i10);
    }
}
