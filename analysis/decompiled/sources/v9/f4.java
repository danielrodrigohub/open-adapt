package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f4 extends g {
    public static final Parcelable.Creator<f4> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16550l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16551m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ea.i f16552n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<f4> {
        @Override // android.os.Parcelable.Creator
        public final f4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), ea.i.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final f4[] newArray(int i10) {
            return new f4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f4(String str, v9.a aVar, ea.i iVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(iVar, "lacingPosition");
        this.f16550l = str;
        this.f16551m = aVar;
        this.f16552n = iVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16551m;
    }

    @Override // v9.g
    public final String c() {
        return a0.d.c("LacePercent[lacePosition: ", this.f16552n.b(), "]");
    }

    @Override // v9.g
    public final String d() {
        return "LaceGetPercentResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f4)) {
            return false;
        }
        f4 f4Var = (f4) obj;
        return p4.h.c(this.f16550l, f4Var.f16550l) && p4.h.c(this.f16551m, f4Var.f16551m) && p4.h.c(this.f16552n, f4Var.f16552n);
    }

    public final int hashCode() {
        return this.f16552n.hashCode() + androidx.appcompat.widget.e0.c(this.f16551m, this.f16550l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16550l;
        v9.a aVar = this.f16551m;
        ea.i iVar = this.f16552n;
        StringBuilder sbA = ed.c.a("LaceGetPercentResult(id=", str, ", adaptIdentifier=", aVar, ", lacingPosition=");
        sbA.append(iVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16550l);
        this.f16551m.writeToParcel(parcel, i10);
        this.f16552n.writeToParcel(parcel, i10);
    }
}
