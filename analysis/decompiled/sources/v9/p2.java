package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p2 extends g {
    public static final Parcelable.Creator<p2> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16760l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16761m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<p2> {
        @Override // android.os.Parcelable.Creator
        public final p2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new p2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final p2[] newArray(int i10) {
            return new p2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p2(String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16760l = str;
        this.f16761m = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16761m;
    }

    @Override // v9.g
    public final String d() {
        return "DisconnectResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p2)) {
            return false;
        }
        p2 p2Var = (p2) obj;
        return p4.h.c(this.f16760l, p2Var.f16760l) && p4.h.c(this.f16761m, p2Var.f16761m);
    }

    public final int hashCode() {
        return this.f16761m.hashCode() + (this.f16760l.hashCode() * 31);
    }

    public final String toString() {
        return "DisconnectResult(id=" + this.f16760l + ", adaptIdentifier=" + this.f16761m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16760l);
        this.f16761m.writeToParcel(parcel, i10);
    }
}
