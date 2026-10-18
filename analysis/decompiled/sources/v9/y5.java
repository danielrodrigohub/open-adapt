package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y5 extends f {
    public static final Parcelable.Creator<y5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16936n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.b f16937o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16938p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16939q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<y5> {
        @Override // android.os.Parcelable.Creator
        public final y5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new y5(parcel.readString(), la.b.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final y5[] newArray(int i10) {
            return new y5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y5(String str, la.b bVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(bVar, "sessionId");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16936n = str;
        this.f16937o = bVar;
        this.f16938p = aVar;
        this.f16939q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16938p;
    }

    @Override // v9.f
    public final String c() {
        return "Download Error with sessionId: " + this.f16937o.f10191h + ", " + this.f16939q.getMessage();
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16939q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "SessionDownloadStopError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y5)) {
            return false;
        }
        y5 y5Var = (y5) obj;
        return p4.h.c(this.f16936n, y5Var.f16936n) && p4.h.c(this.f16937o, y5Var.f16937o) && p4.h.c(this.f16938p, y5Var.f16938p) && p4.h.c(this.f16939q, y5Var.f16939q);
    }

    public final int hashCode() {
        return this.f16939q.hashCode() + androidx.appcompat.widget.e0.c(this.f16938p, (this.f16937o.hashCode() + (this.f16936n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "SessionDownloadStopError(id=" + this.f16936n + ", sessionId=" + this.f16937o + ", adaptIdentifier=" + this.f16938p + ", error=" + this.f16939q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16936n);
        this.f16937o.writeToParcel(parcel, i10);
        this.f16938p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16939q);
    }
}
