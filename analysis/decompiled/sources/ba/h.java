package ba;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitCustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<c> f3678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f3680l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f3681m;

    /* JADX INFO: compiled from: AdaptKitCustomAnimation.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            int i10 = parcel.readInt();
            int i11 = parcel.readInt();
            int i12 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i12);
            int iC = 0;
            while (iC != i12) {
                iC = com.nike.adapt.adk.model.a.c(c.CREATOR, parcel, arrayList, iC, 1);
            }
            return new h(i10, i11, arrayList, parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    public h(int i10, int i11, List<c> list, int i12, boolean z10, boolean z11) {
        p4.h.j(list, "frames");
        this.f3676h = i10;
        this.f3677i = i11;
        this.f3678j = list;
        this.f3679k = i12;
        this.f3680l = z10;
        this.f3681m = z11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f3676h == hVar.f3676h && this.f3677i == hVar.f3677i && p4.h.c(this.f3678j, hVar.f3678j) && this.f3679k == hVar.f3679k && this.f3680l == hVar.f3680l && this.f3681m == hVar.f3681m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public final int hashCode() {
        int iE = r0.e(this.f3679k, a4.g.d(this.f3678j, r0.e(this.f3677i, Integer.hashCode(this.f3676h) * 31, 31), 31), 31);
        boolean z10 = this.f3680l;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iE + r10) * 31;
        boolean z11 = this.f3681m;
        return i10 + (z11 ? 1 : z11);
    }

    public final String toString() {
        int i10 = this.f3676h;
        int i11 = this.f3677i;
        List<c> list = this.f3678j;
        int i12 = this.f3679k;
        boolean z10 = this.f3680l;
        boolean z11 = this.f3681m;
        StringBuilder sbB = androidx.recyclerview.widget.s.b("AdaptKitCustomAnimation(id=", i10, ", repeatCount=", i11, ", frames=");
        sbB.append(list);
        sbB.append(", type=");
        sbB.append(i12);
        sbB.append(", systemCanInterrupt=");
        sbB.append(z10);
        sbB.append(", systemCanResume=");
        sbB.append(z11);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f3676h);
        parcel.writeInt(this.f3677i);
        Iterator itD = ca.a.d(this.f3678j, parcel);
        while (itD.hasNext()) {
            ((c) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeInt(this.f3679k);
        parcel.writeInt(this.f3680l ? 1 : 0);
        parcel.writeInt(this.f3681m ? 1 : 0);
    }
}
