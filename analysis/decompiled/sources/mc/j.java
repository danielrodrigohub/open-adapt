package mc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;

/* JADX INFO: compiled from: CustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f11044l = new a();
    public static final Parcelable.Creator<j> CREATOR = new b();

    /* JADX INFO: compiled from: CustomAnimation.kt */
    public static final class a {
        public final j a(gc.p pVar) {
            int i10;
            int iZ = pVar.z();
            int iB = pVar.B();
            int iOrdinal = pVar.A().ordinal();
            int i11 = 5;
            if (iOrdinal == 0) {
                i10 = 1;
            } else if (iOrdinal == 1) {
                i10 = 2;
            } else if (iOrdinal == 2) {
                i10 = 3;
            } else if (iOrdinal == 3) {
                i10 = 4;
            } else {
                if (iOrdinal != 4) {
                    throw new j2.a();
                }
                i10 = 5;
            }
            int iOrdinal2 = pVar.y().ordinal();
            if (iOrdinal2 == 0) {
                i11 = 1;
            } else if (iOrdinal2 == 1) {
                i11 = 2;
            } else if (iOrdinal2 == 2) {
                i11 = 3;
            } else if (iOrdinal2 == 3) {
                i11 = 4;
            } else if (iOrdinal2 != 4) {
                if (iOrdinal2 != 5) {
                    throw new j2.a();
                }
                i11 = 6;
            }
            return new j(iZ, iB, i10, i11);
        }
    }

    /* JADX INFO: compiled from: CustomAnimation.kt */
    public static final class b implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new j(parcel.readInt(), parcel.readInt(), a4.g.j(parcel.readString()), com.nike.adapt.adk.model.a.h(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(int i10, int i11, int i12, int i13) {
        androidx.appcompat.widget.o.d(i12, "state");
        androidx.appcompat.widget.o.d(i13, "endStatus");
        this.f11045h = i10;
        this.f11046i = i11;
        this.f11047j = i12;
        this.f11048k = i13;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f11045h == jVar.f11045h && this.f11046i == jVar.f11046i && this.f11047j == jVar.f11047j && this.f11048k == jVar.f11048k;
    }

    public final int hashCode() {
        return q.g.a(this.f11048k) + ((q.g.a(this.f11047j) + r0.e(this.f11046i, Integer.hashCode(this.f11045h) * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("CustomAnimation(id=");
        sbC.append(this.f11045h);
        sbC.append(", timeRemainingMs=");
        sbC.append(this.f11046i);
        sbC.append(", state=");
        sbC.append(a4.g.i(this.f11047j));
        sbC.append(", endStatus=");
        sbC.append(com.nike.adapt.adk.model.a.f(this.f11048k));
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f11045h);
        parcel.writeInt(this.f11046i);
        parcel.writeString(a4.g.g(this.f11047j));
        parcel.writeString(com.nike.adapt.adk.model.a.d(this.f11048k));
    }
}
