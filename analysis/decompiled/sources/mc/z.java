package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: SessionEnded.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z implements Parcelable {
    public static final Parcelable.Creator<z> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11121h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11122i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11123j;

    /* JADX INFO: compiled from: SessionEnded.kt */
    public static final class a implements Parcelable.Creator<z> {
        @Override // android.os.Parcelable.Creator
        public final z createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new z(parcel.readInt(), parcel.readInt(), androidx.appcompat.widget.o.p(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final z[] newArray(int i10) {
            return new z[i10];
        }
    }

    public z(int i10, int i11, int i12) {
        androidx.appcompat.widget.o.d(i12, "event");
        this.f11121h = i10;
        this.f11122i = i11;
        this.f11123j = i12;
    }

    public final int a() {
        return this.f11123j;
    }

    public final int b() {
        return this.f11121h;
    }

    public final int c() {
        return this.f11122i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.f11121h == zVar.f11121h && this.f11122i == zVar.f11122i && this.f11123j == zVar.f11123j;
    }

    public final int hashCode() {
        return q.g.a(this.f11123j) + r0.e(this.f11122i, Integer.hashCode(this.f11121h) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SessionEnded(sessionId=");
        sbC.append(this.f11121h);
        sbC.append(", sessionSize=");
        sbC.append(this.f11122i);
        sbC.append(", event=");
        sbC.append(androidx.appcompat.widget.o.j(this.f11123j));
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11121h);
        parcel.writeInt(this.f11122i);
        parcel.writeString(androidx.appcompat.widget.o.g(this.f11123j));
    }
}
