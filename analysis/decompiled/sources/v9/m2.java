package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m2 extends f {
    public static final Parcelable.Creator<m2> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16712n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16713o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16714p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f16715q;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<m2> {
        @Override // android.os.Parcelable.Creator
        public final m2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m2(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final m2[] newArray(int i10) {
            return new m2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m2(String str, v9.a aVar, Throwable th, String str2) {
        super(str, aVar, th);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(th, "error");
        p4.h.j(str2, "requested");
        this.f16712n = str;
        this.f16713o = aVar;
        this.f16714p = th;
        this.f16715q = str2;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16713o;
    }

    @Override // v9.f
    public final String c() {
        return a1.f.d(k1.a.a("The requested action: ", this.f16715q, " could not be completed for deviceId: ", this.f16712n, ". Device is not in a "), "CONNECTED_AND_AUTHENTICATED", " state.");
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16714p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "DeviceNotConnectedError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m2)) {
            return false;
        }
        m2 m2Var = (m2) obj;
        return p4.h.c(this.f16712n, m2Var.f16712n) && p4.h.c(this.f16713o, m2Var.f16713o) && p4.h.c(this.f16714p, m2Var.f16714p) && p4.h.c(this.f16715q, m2Var.f16715q);
    }

    public final int hashCode() {
        return this.f16715q.hashCode() + ((this.f16714p.hashCode() + androidx.appcompat.widget.e0.c(this.f16713o, this.f16712n.hashCode() * 31, 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16712n;
        v9.a aVar = this.f16713o;
        Throwable th = this.f16714p;
        String str2 = this.f16715q;
        StringBuilder sbA = ed.c.a("DeviceNotConnectedError(id=", str, ", adaptIdentifier=", aVar, ", error=");
        sbA.append(th);
        sbA.append(", requested=");
        sbA.append(str2);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16712n);
        this.f16713o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16714p);
        parcel.writeString(this.f16715q);
    }
}
