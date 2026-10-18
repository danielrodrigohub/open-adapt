package hd;

import p4.h;

/* JADX INFO: compiled from: _Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public class b extends a {
    public static final Comparable c(Comparable comparable, Comparable comparable2) {
        h.j(comparable, "a");
        h.j(comparable2, "b");
        return comparable.compareTo(comparable2) <= 0 ? comparable : comparable2;
    }
}
