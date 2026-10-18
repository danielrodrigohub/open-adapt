package db;

import ea.m;
import java.util.Comparator;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t10, T t11) {
        return hd.a.b(Boolean.valueOf(!((m) t10).f6666j), Boolean.valueOf(!((m) t11).f6666j));
    }
}
