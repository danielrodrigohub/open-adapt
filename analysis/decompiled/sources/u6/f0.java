package u6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: Lists.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 {
    public static <E> ArrayList<E> a(Iterator<? extends E> it) {
        ArrayList<E> arrayList = new ArrayList<>();
        Objects.requireNonNull(it);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @SafeVarargs
    public static <E> ArrayList<E> b(E... eArr) {
        Objects.requireNonNull(eArr);
        int length = eArr.length;
        h.b(length, "arraySize");
        ArrayList<E> arrayList = new ArrayList<>(w6.a.c(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }
}
