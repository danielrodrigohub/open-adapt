package v7;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f16440h;

    /* JADX INFO: compiled from: OnBoarding.kt */
    public static final class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o((j) parcel.readParcelable(o.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public o(j jVar) {
        p4.h.j(jVar, "onBoardingRule");
        this.f16440h = jVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeParcelable(this.f16440h, i10);
    }
}
