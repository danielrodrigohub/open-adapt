package hd;

import java.util.Comparator;
import p4.h;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator<Comparable<? super Object>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f8647h = new c();

    @Override // java.util.Comparator
    public final int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        h.j(comparable3, "a");
        h.j(comparable4, "b");
        return comparable3.compareTo(comparable4);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return d.f8648h;
    }
}
