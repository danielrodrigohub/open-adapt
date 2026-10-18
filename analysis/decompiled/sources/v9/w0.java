package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w0 extends g {
    public static final Parcelable.Creator<w0> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ba.g f16892n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<w0> {
        @Override // android.os.Parcelable.Creator
        public final w0 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new w0(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ba.g.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final w0[] newArray(int i10) {
            return new w0[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(String str, v9.a aVar, ba.g gVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(gVar, "animation");
        this.f16890l = str;
        this.f16891m = aVar;
        this.f16892n = gVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16891m;
    }

    @Override // v9.g
    public final String d() {
        return "AnimationGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w0)) {
            return false;
        }
        w0 w0Var = (w0) obj;
        return p4.h.c(this.f16890l, w0Var.f16890l) && p4.h.c(this.f16891m, w0Var.f16891m) && p4.h.c(this.f16892n, w0Var.f16892n);
    }

    public final int hashCode() {
        return this.f16892n.hashCode() + androidx.appcompat.widget.e0.c(this.f16891m, this.f16890l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16890l;
        v9.a aVar = this.f16891m;
        ba.g gVar = this.f16892n;
        StringBuilder sbA = ed.c.a("AnimationGetResult(id=", str, ", adaptIdentifier=", aVar, ", animation=");
        sbA.append(gVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16890l);
        this.f16891m.writeToParcel(parcel, i10);
        this.f16892n.writeToParcel(parcel, i10);
    }
}
