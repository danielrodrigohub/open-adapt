package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitSessionError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u6 extends q0 {
    public static final Parcelable.Creator<u6> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final v9.a f16867j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final la.b f16868k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16869l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16870m;

    /* JADX INFO: compiled from: AdaptKitSessionError.kt */
    public static final class a implements Parcelable.Creator<u6> {
        @Override // android.os.Parcelable.Creator
        public final u6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u6(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final u6[] newArray(int i10) {
            return new u6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u6(String str, v9.a aVar, la.b bVar, String str2) {
        super(aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "sessionId");
        p4.h.j(str2, "errorMessage");
        this.f16866i = str;
        this.f16867j = aVar;
        this.f16868k = bVar;
        this.f16869l = str2;
        this.f16870m = "An unexpected error: " + str2 + " on this session: " + bVar + ".";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u6)) {
            return false;
        }
        u6 u6Var = (u6) obj;
        return p4.h.c(this.f16866i, u6Var.f16866i) && p4.h.c(this.f16867j, u6Var.f16867j) && p4.h.c(this.f16868k, u6Var.f16868k) && p4.h.c(this.f16869l, u6Var.f16869l);
    }

    @Override // v9.m, java.lang.Throwable
    public final String getMessage() {
        return this.f16870m;
    }

    public final int hashCode() {
        return this.f16869l.hashCode() + ((this.f16868k.hashCode() + androidx.appcompat.widget.e0.c(this.f16867j, this.f16866i.hashCode() * 31, 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16866i;
        v9.a aVar = this.f16867j;
        la.b bVar = this.f16868k;
        String str2 = this.f16869l;
        StringBuilder sbA = ed.c.a("SessionUnexpectedError(id=", str, ", adaptIdentifier=", aVar, ", sessionId=");
        sbA.append(bVar);
        sbA.append(", errorMessage=");
        sbA.append(str2);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16866i);
        this.f16867j.writeToParcel(parcel, i10);
        this.f16868k.writeToParcel(parcel, i10);
        parcel.writeString(this.f16869l);
    }
}
