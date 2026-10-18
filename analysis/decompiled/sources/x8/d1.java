package x8;

import android.view.View;

/* JADX INFO: compiled from: LacingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f17879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b0 f17883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f17884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f17885g;

    public /* synthetic */ d1(View view, int i10, int i11, int i12, b0 b0Var) {
        this(view, i10, i11, i12, b0Var, false, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return p4.h.c(this.f17879a, d1Var.f17879a) && this.f17880b == d1Var.f17880b && this.f17881c == d1Var.f17881c && this.f17882d == d1Var.f17882d && p4.h.c(this.f17883e, d1Var.f17883e) && this.f17884f == d1Var.f17884f && this.f17885g == d1Var.f17885g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public final int hashCode() {
        int iHashCode = (this.f17883e.hashCode() + androidx.fragment.app.r0.e(this.f17882d, androidx.fragment.app.r0.e(this.f17881c, androidx.fragment.app.r0.e(this.f17880b, this.f17879a.hashCode() * 31, 31), 31), 31)) * 31;
        boolean z10 = this.f17884f;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode + r10) * 31;
        boolean z11 = this.f17885g;
        return i10 + (z11 ? 1 : z11);
    }

    public final String toString() {
        View view = this.f17879a;
        int i10 = this.f17880b;
        int i11 = this.f17881c;
        int i12 = this.f17882d;
        b0 b0Var = this.f17883e;
        boolean z10 = this.f17884f;
        boolean z11 = this.f17885g;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ShoeLocationReporter(view=");
        sb2.append(view);
        sb2.append(", startingIndex=");
        sb2.append(i10);
        sb2.append(", previousIndex=");
        a1.d.e(sb2, i11, ", currentIndex=", i12, ", lacingControllerAction=");
        sb2.append(b0Var);
        sb2.append(", preventMoveTo=");
        sb2.append(z10);
        sb2.append(", preventVibrate=");
        sb2.append(z11);
        sb2.append(")");
        return sb2.toString();
    }

    public d1(View view, int i10, int i11, int i12, b0 b0Var, boolean z10, boolean z11) {
        this.f17879a = view;
        this.f17880b = i10;
        this.f17881c = i11;
        this.f17882d = i12;
        this.f17883e = b0Var;
        this.f17884f = z10;
        this.f17885g = z11;
    }
}
