package v9;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x6 extends g {
    public static final Parcelable.Creator<x6> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16918l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16919m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<la.c> f16920n;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<x6> {
        @Override // android.os.Parcelable.Creator
        public final x6 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            String string = parcel.readString();
            v9.a aVarCreateFromParcel = v9.a.CREATOR.createFromParcel(parcel);
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = com.nike.adapt.adk.model.a.c(la.c.CREATOR, parcel, arrayList, iC, 1);
            }
            return new x6(string, aVarCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final x6[] newArray(int i10) {
            return new x6[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x6(String str, v9.a aVar, List<la.c> list) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        this.f16918l = str;
        this.f16919m = aVar;
        this.f16920n = list;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16919m;
    }

    @Override // v9.g
    public final String d() {
        return "SessionsGetResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x6)) {
            return false;
        }
        x6 x6Var = (x6) obj;
        return p4.h.c(this.f16918l, x6Var.f16918l) && p4.h.c(this.f16919m, x6Var.f16919m) && p4.h.c(this.f16920n, x6Var.f16920n);
    }

    public final int hashCode() {
        return this.f16920n.hashCode() + androidx.appcompat.widget.e0.c(this.f16919m, this.f16918l.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f16918l;
        v9.a aVar = this.f16919m;
        List<la.c> list = this.f16920n;
        StringBuilder sbA = ed.c.a("SessionsGetResult(id=", str, ", adaptIdentifier=", aVar, ", sessions=");
        sbA.append(list);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16918l);
        this.f16919m.writeToParcel(parcel, i10);
        Iterator itD = ca.a.d(this.f16920n, parcel);
        while (itD.hasNext()) {
            ((la.c) itD.next()).writeToParcel(parcel, i10);
        }
    }
}
