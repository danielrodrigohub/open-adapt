package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o5 extends g {
    public static final Parcelable.Creator<o5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16750l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final la.e f16751m;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<o5> {
        @Override // android.os.Parcelable.Creator
        public final o5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new o5(parcel.readString(), la.e.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final o5[] newArray(int i10) {
            return new o5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o5(String str, la.e eVar) {
        super(str, v9.a.f16443k);
        p4.h.j(str, "id");
        p4.h.j(eVar, "sessionAggregate");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16750l = str;
        this.f16751m = eVar;
    }

    @Override // v9.g
    public final String d() {
        return "SessionAggregateNotificationResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o5)) {
            return false;
        }
        o5 o5Var = (o5) obj;
        return p4.h.c(this.f16750l, o5Var.f16750l) && p4.h.c(this.f16751m, o5Var.f16751m);
    }

    public final int hashCode() {
        return this.f16751m.hashCode() + (this.f16750l.hashCode() * 31);
    }

    public final String toString() {
        return "SessionAggregateNotificationResult(id=" + this.f16750l + ", sessionAggregate=" + this.f16751m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16750l);
        this.f16751m.writeToParcel(parcel, i10);
    }
}
