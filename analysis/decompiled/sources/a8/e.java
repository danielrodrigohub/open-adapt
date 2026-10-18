package a8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ShoeStats.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @f7.b("totalDoubleTapClassifications")
    public final int f507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @f7.b("doubleTapFalsePositives")
    public final int f508i;

    /* JADX INFO: compiled from: ShoeStats.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(int i10, int i11) {
        this.f507h = i10;
        this.f508i = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f507h == eVar.f507h && this.f508i == eVar.f508i;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f508i) + (Integer.hashCode(this.f507h) * 31);
    }

    public final String toString() {
        return "GestureStats(totalDoubleTapClassifications=" + this.f507h + ", doubleTapFalsePositives=" + this.f508i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f507h);
        parcel.writeInt(this.f508i);
    }
}
