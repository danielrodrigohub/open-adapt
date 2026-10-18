package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q1 extends f {
    public static final Parcelable.Creator<q1> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16775n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Throwable f16776o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f16777p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final v9.a f16778q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<q1> {
        @Override // android.os.Parcelable.Creator
        public final q1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new q1(parcel.readString(), (Throwable) parcel.readSerializable(), parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final q1[] newArray(int i10) {
            return new q1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(String str, Throwable th, String str2, v9.a aVar) {
        super(str2, aVar, th);
        p4.h.j(str, "customMessage");
        p4.h.j(th, "throwable");
        p4.h.j(str2, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16775n = str;
        this.f16776o = th;
        this.f16777p = str2;
        this.f16778q = aVar;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16778q;
    }

    @Override // v9.f
    public final String c() {
        return this.f16775n;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "AutoAdaptStartError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        return p4.h.c(this.f16775n, q1Var.f16775n) && p4.h.c(this.f16776o, q1Var.f16776o) && p4.h.c(this.f16777p, q1Var.f16777p) && p4.h.c(this.f16778q, q1Var.f16778q);
    }

    public final int hashCode() {
        return this.f16778q.hashCode() + a1.f.c(this.f16777p, (this.f16776o.hashCode() + (this.f16775n.hashCode() * 31)) * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AutoAdaptStartError(customMessage=" + this.f16775n + ", throwable=" + this.f16776o + ", id=" + this.f16777p + ", adaptIdentifier=" + this.f16778q + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16775n);
        parcel.writeSerializable(this.f16776o);
        parcel.writeString(this.f16777p);
        this.f16778q.writeToParcel(parcel, i10);
    }
}
