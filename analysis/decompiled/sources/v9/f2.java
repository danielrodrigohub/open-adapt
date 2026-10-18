package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f2 extends g {
    public static final Parcelable.Creator<f2> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16546l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final e f16547m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<f2> {
        @Override // android.os.Parcelable.Creator
        public final f2 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f2(parcel.readString(), e.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final f2[] newArray(int i10) {
            return new f2[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f2(String str, e eVar) {
        super(str, v9.a.f16442j);
        p4.h.j(str, "id");
        p4.h.j(eVar, "connection");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16546l = str;
        this.f16547m = eVar;
    }

    @Override // v9.g
    public final String c() {
        return a0.d.c("Connection[state: ", this.f16547m.f16528h, "]");
    }

    @Override // v9.g
    public final String d() {
        return "ConnectionUpdateResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f2)) {
            return false;
        }
        f2 f2Var = (f2) obj;
        return p4.h.c(this.f16546l, f2Var.f16546l) && this.f16547m == f2Var.f16547m;
    }

    public final int hashCode() {
        return this.f16547m.hashCode() + (this.f16546l.hashCode() * 31);
    }

    public final String toString() {
        return "ConnectionUpdateResult(id=" + this.f16546l + ", connection=" + this.f16547m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16546l);
        parcel.writeString(this.f16547m.name());
    }
}
