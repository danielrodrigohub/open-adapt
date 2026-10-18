package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h1 extends g {
    public static final Parcelable.Creator<h1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ea.b f16580l;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<h1> {
        @Override // android.os.Parcelable.Creator
        public final h1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h1(ea.b.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final h1[] newArray(int i10) {
            return new h1[i10];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public h1(ea.b bVar) {
        p4.h.j(bVar, "adaptKitDevice");
        String str = bVar.f6612j;
        v9.a.C0295a c0295a = v9.a.f16441i;
        super(str, v9.a.f16442j);
        this.f16580l = bVar;
    }

    @Override // v9.g
    public final String d() {
        return "AuthKeyUpdatedResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h1) && p4.h.c(this.f16580l, ((h1) obj).f16580l);
    }

    public final int hashCode() {
        return this.f16580l.hashCode();
    }

    public final String toString() {
        return "AuthKeyUpdatedResult(adaptKitDevice=" + this.f16580l + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f16580l.writeToParcel(parcel, i10);
    }
}
