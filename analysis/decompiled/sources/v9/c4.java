package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c4 extends g {
    public static final Parcelable.Creator<c4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16494m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ba.i f16495n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<c4> {
        @Override // android.os.Parcelable.Creator
        public final c4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ba.i.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final c4[] newArray(int i10) {
            return new c4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c4(String str, v9.a aVar, ba.i iVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(iVar, "laceEngineStats");
        this.f16493l = str;
        this.f16494m = aVar;
        this.f16495n = iVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16494m;
    }

    @Override // v9.g
    public final String d() {
        return "LaceEngineStatsGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c4)) {
            return false;
        }
        c4 c4Var = (c4) obj;
        return p4.h.c(this.f16493l, c4Var.f16493l) && p4.h.c(this.f16494m, c4Var.f16494m) && p4.h.c(this.f16495n, c4Var.f16495n);
    }

    public final int hashCode() {
        return this.f16495n.hashCode() + androidx.appcompat.widget.e0.c(this.f16494m, this.f16493l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16493l;
        v9.a aVar = this.f16494m;
        ba.i iVar = this.f16495n;
        StringBuilder sbA = ed.c.a("LaceEngineStatsGetResult(id=", str, ", adaptIdentifier=", aVar, ", laceEngineStats=");
        sbA.append(iVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16493l);
        this.f16494m.writeToParcel(parcel, i10);
        this.f16495n.writeToParcel(parcel, i10);
    }
}
