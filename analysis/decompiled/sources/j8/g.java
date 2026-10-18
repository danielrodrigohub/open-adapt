package j8;

import android.os.Parcel;
import android.os.Parcelable;
import v7.h;

/* JADX INFO: compiled from: OnBoardingStateActionRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends e {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v7.g f9473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f9474i;

    /* JADX INFO: compiled from: OnBoardingStateActionRequest.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(v7.g.valueOf(parcel.readString()), h.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(v7.g gVar, h hVar) {
        p4.h.j(gVar, "currentOnBoardingState");
        p4.h.j(hVar, "currentOnBoardingType");
        this.f9473h = gVar;
        this.f9474i = hVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f9473h == gVar.f9473h && this.f9474i == gVar.f9474i;
    }

    public final int hashCode() {
        return this.f9474i.hashCode() + (this.f9473h.hashCode() * 31);
    }

    public final String toString() {
        return "UpdateOnBoardingActionRequest(currentOnBoardingState=" + this.f9473h + ", currentOnBoardingType=" + this.f9474i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f9473h.name());
        parcel.writeString(this.f9474i.name());
    }
}
