package j8;

import android.os.Parcel;
import android.os.Parcelable;
import v7.h;

/* JADX INFO: compiled from: OnBoardingStateActionResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends f {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i8.d f9469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v7.g f9470i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h f9471j;

    /* JADX INFO: compiled from: OnBoardingStateActionResult.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(i8.d.CREATOR.createFromParcel(parcel), v7.g.valueOf(parcel.readString()), h.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(i8.d dVar, v7.g gVar, h hVar) {
        p4.h.j(dVar, "eventUUID");
        p4.h.j(gVar, "currentOnBoardingState");
        p4.h.j(hVar, "currentOnBoardingType");
        this.f9469h = dVar;
        this.f9470i = gVar;
        this.f9471j = hVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return p4.h.c(this.f9469h, cVar.f9469h) && this.f9470i == cVar.f9470i && this.f9471j == cVar.f9471j;
    }

    public final int hashCode() {
        return this.f9471j.hashCode() + ((this.f9470i.hashCode() + (this.f9469h.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CurrentOnBoardingResult(eventUUID=" + this.f9469h + ", currentOnBoardingState=" + this.f9470i + ", currentOnBoardingType=" + this.f9471j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f9469h.writeToParcel(parcel, i10);
        parcel.writeString(this.f9470i.name());
        parcel.writeString(this.f9471j.name());
    }
}
