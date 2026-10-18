package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t3 extends g {
    public static final Parcelable.Creator<t3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16838l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16839m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<t3> {
        @Override // android.os.Parcelable.Creator
        public final t3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new t3(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final t3[] newArray(int i10) {
            return new t3[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t3(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16838l = str;
        this.f16839m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16839m;
    }

    @Override // v9.g
    public final String d() {
        return "LEDBlinkResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t3)) {
            return false;
        }
        t3 t3Var = (t3) obj;
        return p4.h.c(this.f16838l, t3Var.f16838l) && p4.h.c(this.f16839m, t3Var.f16839m);
    }

    public final int hashCode() {
        return this.f16839m.hashCode() + (this.f16838l.hashCode() * 31);
    }

    public final String toString() {
        return "LEDBlinkResult(id=" + this.f16838l + ", adaptIdentifier=" + this.f16839m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16838l);
        this.f16839m.writeToParcel(parcel, i10);
    }
}
