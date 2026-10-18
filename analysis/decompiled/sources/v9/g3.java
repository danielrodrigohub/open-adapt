package v9;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g3 extends g {
    public static final Parcelable.Creator<g3> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<ga.a> f16566l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16567m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f16568n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<g3> {
        @Override // android.os.Parcelable.Creator
        public final g3 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 != i10; i11++) {
                arrayList.add(parcel.readParcelable(g3.class.getClassLoader()));
            }
            return new g3(arrayList, parcel.readString(), v9.a.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final g3[] newArray(int i10) {
            return new g3[i10];
        }
    }

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class b extends rd.o implements qd.l<ga.a, CharSequence> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f16569h = new b();

        public b() {
            super(1);
        }

        @Override // qd.l
        public final CharSequence invoke(ga.a aVar) {
            ga.a aVar2 = aVar;
            p4.h.j(aVar2, "it");
            return aVar2.b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public g3(List<? extends ga.a> list, String str, v9.a aVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16566l = list;
        this.f16567m = str;
        this.f16568n = aVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16568n;
    }

    @Override // v9.g
    public final String c() {
        return gd.n.d0(this.f16566l, null, null, null, b.f16569h, 31);
    }

    @Override // v9.g
    public final String d() {
        return "GestureConfigurationGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g3)) {
            return false;
        }
        g3 g3Var = (g3) obj;
        return p4.h.c(this.f16566l, g3Var.f16566l) && p4.h.c(this.f16567m, g3Var.f16567m) && p4.h.c(this.f16568n, g3Var.f16568n);
    }

    public final int hashCode() {
        return this.f16568n.hashCode() + a1.f.c(this.f16567m, this.f16566l.hashCode() * 31, 31);
    }

    public final String toString() {
        return "GestureConfigurationGetResult(gestureConfigurations=" + this.f16566l + ", id=" + this.f16567m + ", adaptIdentifier=" + this.f16568n + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        Iterator itD = ca.a.d(this.f16566l, parcel);
        while (itD.hasNext()) {
            parcel.writeParcelable((Parcelable) itD.next(), i10);
        }
        parcel.writeString(this.f16567m);
        this.f16568n.writeToParcel(parcel, i10);
    }
}
