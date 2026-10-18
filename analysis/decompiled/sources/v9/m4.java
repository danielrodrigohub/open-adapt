package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerError.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m4 extends f {
    public static final Parcelable.Creator<m4> CREATOR = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f16718n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f16719o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Throwable f16720p;

    /* JADX INFO: compiled from: AdaptKitControllerError.kt */
    public static final class a implements Parcelable.Creator<m4> {
        @Override // android.os.Parcelable.Creator
        public final m4 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new m4(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), (Throwable) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final m4[] newArray(int i10) {
            return new m4[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4(String str, v9.a aVar, Throwable th) {
        super(str, aVar, th);
        androidx.appcompat.widget.y0.d(str, "id", aVar, "adaptIdentifier", th, "error");
        this.f16718n = str;
        this.f16719o = aVar;
        this.f16720p = th;
    }

    @Override // v9.f
    public final v9.a a() {
        return this.f16719o;
    }

    @Override // v9.f
    public final Throwable d() {
        return this.f16720p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // v9.f
    public final String e() {
        return "LacePercentNotificationError";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m4)) {
            return false;
        }
        m4 m4Var = (m4) obj;
        return p4.h.c(this.f16718n, m4Var.f16718n) && p4.h.c(this.f16719o, m4Var.f16719o) && p4.h.c(this.f16720p, m4Var.f16720p);
    }

    public final int hashCode() {
        return this.f16720p.hashCode() + androidx.appcompat.widget.e0.c(this.f16719o, this.f16718n.hashCode() * 31, 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str = this.f16718n;
        v9.a aVar = this.f16719o;
        return d1.c.b(ed.c.a("LacePercentNotificationError(id=", str, ", adaptIdentifier=", aVar, ", error="), this.f16720p, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16718n);
        this.f16719o.writeToParcel(parcel, i10);
        parcel.writeSerializable(this.f16720p);
    }
}
