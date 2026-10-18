package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x5 extends g {
    public static final Parcelable.Creator<x5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16915l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16916m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.b f16917n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<x5> {
        @Override // android.os.Parcelable.Creator
        public final x5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new x5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final x5[] newArray(int i10) {
            return new x5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x5(String str, v9.a aVar, la.b bVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "adaptKitSessionId");
        this.f16915l = str;
        this.f16916m = aVar;
        this.f16917n = bVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16916m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionDownloadStartResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x5)) {
            return false;
        }
        x5 x5Var = (x5) obj;
        return p4.h.c(this.f16915l, x5Var.f16915l) && p4.h.c(this.f16916m, x5Var.f16916m) && p4.h.c(this.f16917n, x5Var.f16917n);
    }

    public final int hashCode() {
        return this.f16917n.hashCode() + androidx.appcompat.widget.e0.c(this.f16916m, this.f16915l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16915l;
        v9.a aVar = this.f16916m;
        la.b bVar = this.f16917n;
        StringBuilder sbA = ed.c.a("SessionDownloadStartResult(id=", str, ", adaptIdentifier=", aVar, ", adaptKitSessionId=");
        sbA.append(bVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16915l);
        this.f16916m.writeToParcel(parcel, i10);
        this.f16917n.writeToParcel(parcel, i10);
    }
}
