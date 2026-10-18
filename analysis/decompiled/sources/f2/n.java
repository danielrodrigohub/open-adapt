package f2;

import java.util.Arrays;
import java.util.List;
import y1.e0;

/* JADX INFO: compiled from: ShapeGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<b> f7030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7031c;

    public n(String str, List<b> list, boolean z10) {
        this.f7029a = str;
        this.f7030b = list;
        this.f7031c = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.c(e0Var, bVar, this);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ShapeGroup{name='");
        sbC.append(this.f7029a);
        sbC.append("' Shapes: ");
        sbC.append(Arrays.toString(this.f7030b.toArray()));
        sbC.append('}');
        return sbC.toString();
    }
}
