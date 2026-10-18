package oc;

import androidx.fragment.app.r0;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: BigfootAnimationFrameData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f12543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f12544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12547g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<a> f12548h;

    public b(int i10, int i11, boolean z10, boolean z11, int i12, int i13, List list) {
        h.j(list, "data");
        this.f12541a = i10;
        this.f12542b = i11;
        this.f12543c = z10;
        this.f12544d = z11;
        this.f12545e = i12;
        this.f12546f = 0;
        this.f12547g = i13;
        this.f12548h = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f12541a == bVar.f12541a && this.f12542b == bVar.f12542b && this.f12543c == bVar.f12543c && this.f12544d == bVar.f12544d && this.f12545e == bVar.f12545e && this.f12546f == bVar.f12546f && this.f12547g == bVar.f12547g && h.c(this.f12548h, bVar.f12548h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final int hashCode() {
        int iE = r0.e(this.f12542b, Integer.hashCode(this.f12541a) * 31, 31);
        boolean z10 = this.f12543c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iE + r10) * 31;
        boolean z11 = this.f12544d;
        return this.f12548h.hashCode() + r0.e(this.f12547g, r0.e(this.f12546f, r0.e(this.f12545e, (i10 + (z11 ? 1 : z11)) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootAnimationFrameData(type=");
        sbC.append(this.f12541a);
        sbC.append(", id=");
        sbC.append(this.f12542b);
        sbC.append(", interruptable=");
        sbC.append(this.f12543c);
        sbC.append(", resumable=");
        sbC.append(this.f12544d);
        sbC.append(", repeatCount=");
        sbC.append(this.f12545e);
        sbC.append(", repeatDelayMs=");
        sbC.append(this.f12546f);
        sbC.append(", cycleLengthMs=");
        sbC.append(this.f12547g);
        sbC.append(", data=");
        sbC.append(this.f12548h);
        sbC.append(')');
        return sbC.toString();
    }
}
