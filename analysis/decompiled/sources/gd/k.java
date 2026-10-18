package gd;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: MutableCollectionsJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public class k extends j {
    public static final <T extends Comparable<? super T>> void U(List<T> list) {
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static final <T> void V(List<T> list, Comparator<? super T> comparator) {
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
