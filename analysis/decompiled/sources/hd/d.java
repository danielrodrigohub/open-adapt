package hd;

import java.util.Comparator;
import p4.h;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Comparator<Comparable<? super Object>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f8648h = new d();

    @Override // java.util.Comparator
    public final int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        h.j(comparable3, "a");
        h.j(comparable4, "b");
        return comparable4.compareTo(comparable3);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return c.f8647h;
    }
}
