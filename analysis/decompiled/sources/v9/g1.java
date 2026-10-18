package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g1 extends g {
    public static final Parcelable.Creator<g1> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16563l;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<g1> {
        @Override // android.os.Parcelable.Creator
        public final g1 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g1(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final g1[] newArray(int i10) {
            return new g1[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(String str) {
        super(str, v9.a.f16442j);
        p4.h.j(str, "id");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f16563l = str;
    }

    @Override // v9.g
    public final String d() {
        return "AuthKeyExchangeReadyResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g1) && p4.h.c(this.f16563l, ((g1) obj).f16563l);
    }

    public final int hashCode() {
        return this.f16563l.hashCode();
    }

    public final String toString() {
        return a0.d.c("AuthKeyExchangeReadyResult(id=", this.f16563l, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16563l);
    }
}
