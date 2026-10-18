package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e1 extends g {
    public static final Parcelable.Creator<e1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16529l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16530m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<e1> {
        @Override // android.os.Parcelable.Creator
        public final e1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e1(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final e1[] newArray(int i10) {
            return new e1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16529l = str;
        this.f16530m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16530m;
    }

    @Override // v9.g
    public final String d() {
        return "AnimationStopResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return false;
        }
        e1 e1Var = (e1) obj;
        return p4.h.c(this.f16529l, e1Var.f16529l) && p4.h.c(this.f16530m, e1Var.f16530m);
    }

    public final int hashCode() {
        return this.f16530m.hashCode() + (this.f16529l.hashCode() * 31);
    }

    public final String toString() {
        return "AnimationStopResult(id=" + this.f16529l + ", adaptIdentifier=" + this.f16530m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16529l);
        this.f16530m.writeToParcel(parcel, i10);
    }
}
