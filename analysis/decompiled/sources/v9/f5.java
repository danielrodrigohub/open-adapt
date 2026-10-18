package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f5 extends f {
    public static final Parcelable.Creator<f5> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16553n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ba.j f16554o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f16555p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Throwable f16556q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<f5> {
        @Override // android.os.Parcelable.Creator
        public final f5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f5(parcel.readString(), ba.j.CREATOR.createFromParcel(parcel), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final f5[] newArray(int i10) {
            return new f5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f5(String str, ba.j jVar, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(jVar, "productInformation");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        this.f16553n = str;
        this.f16554o = jVar;
        this.f16555p = aVar;
        this.f16556q = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16555p;
    }

    @Override // v9.f
    public final String c() {
        return androidx.recyclerview.widget.d.c("Failed to execute a product set information request for ", this.f16554o.f3699h);
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16556q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "ProductInformationSetError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f5)) {
            return false;
        }
        f5 f5Var = (f5) obj;
        return p4.h.c(this.f16553n, f5Var.f16553n) && p4.h.c(this.f16554o, f5Var.f16554o) && p4.h.c(this.f16555p, f5Var.f16555p) && p4.h.c(this.f16556q, f5Var.f16556q);
    }

    public final int hashCode() {
        return this.f16556q.hashCode() + androidx.appcompat.widget.e0.c(this.f16555p, (this.f16554o.hashCode() + (this.f16553n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "ProductInformationSetError(id=" + this.f16553n + ", productInformation=" + this.f16554o + ", adaptIdentifier=" + this.f16555p + ", error=" + this.f16556q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16553n);
        this.f16554o.writeToParcel(parcel, i10);
        this.f16555p.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16556q);
    }
}
