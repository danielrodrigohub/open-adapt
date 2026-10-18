package ea;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: AdaptKitDeviceColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ba.f f6626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f6620m = new a();
    public static final Parcelable.Creator<d> CREATOR = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final d f6621n = new d(HttpStatusCodesKt.HTTP_OK, 255, 0, 5);

    /* JADX INFO: compiled from: AdaptKitDeviceColor.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: AdaptKitDeviceColor.kt */
    public static final class b implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(parcel.readInt(), parcel.readInt(), parcel.readInt(), androidx.appcompat.widget.o.n(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(ba.f fVar) {
        this(fVar.f3652h, fVar.f3653i, fVar.f3654j, 5);
        p4.h.j(fVar, "colorPreset");
        androidx.appcompat.widget.o.d(5, "intensity");
    }

    public final String a() {
        ba.f fVar = this.f6626l;
        String str = fVar != null ? fVar.f3655k : null;
        int iA = q.g.a(this.f6625k);
        int i10 = this.f6622h;
        int i11 = this.f6623i;
        int i12 = this.f6624j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DeviceColor[preset: ");
        sb2.append(str);
        sb2.append(", intensity: ");
        sb2.append(iA);
        sb2.append(", rgb: [red: ");
        a1.d.e(sb2, i10, ", green: ", i11, ", blue: ");
        return androidx.recyclerview.widget.s.a(sb2, i12, "]]");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f6622h == dVar.f6622h && this.f6623i == dVar.f6623i && this.f6624j == dVar.f6624j && this.f6625k == dVar.f6625k;
    }

    public final int hashCode() {
        return q.g.a(this.f6625k) + r0.e(this.f6624j, r0.e(this.f6623i, Integer.hashCode(this.f6622h) * 31, 31), 31);
    }

    public final String toString() {
        int i10 = this.f6622h;
        int i11 = this.f6623i;
        int i12 = this.f6624j;
        int i13 = this.f6625k;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("AdaptKitDeviceColor(red=", i10, ", green=", i11, ", blue=");
        sbB.append(i12);
        sbB.append(", intensity=");
        sbB.append(androidx.appcompat.widget.o.h(i13));
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f6622h);
        parcel.writeInt(this.f6623i);
        parcel.writeInt(this.f6624j);
        parcel.writeString(androidx.appcompat.widget.o.e(this.f6625k));
    }

    public d(int i10, int i11, int i12, int i13) {
        androidx.appcompat.widget.o.d(i13, "intensity");
        this.f6622h = i10;
        this.f6623i = i11;
        this.f6624j = i12;
        this.f6625k = i13;
        for (ba.f fVar : ba.f.values()) {
            if (ba.f.a.a(fVar.f3652h, i10) && ba.f.a.a(fVar.f3653i, i11) && ba.f.a.a(fVar.f3654j, i12)) {
                this.f6626l = fVar;
            }
        }
        fVar = null;
        this.f6626l = fVar;
    }
}
