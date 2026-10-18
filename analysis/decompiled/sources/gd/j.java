package gd;

import java.util.Collection;

/* JADX INFO: compiled from: IteratorsJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public class j extends androidx.lifecycle.o {
    public static final int T(Iterable iterable, int i10) {
        p4.h.j(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }
}
