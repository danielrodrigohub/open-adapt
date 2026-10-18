package gd;

import androidx.appcompat.widget.y0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ReversedViews.kt */
/* JADX INFO: loaded from: classes.dex */
public class l extends k {
    public static final int W(List list, int i10) {
        if (new vd.e(0, androidx.lifecycle.o.p(list)).o(i10)) {
            return androidx.lifecycle.o.p(list) - i10;
        }
        StringBuilder sbC = y0.c("Element index ", i10, " must be in range [");
        sbC.append(new vd.e(0, androidx.lifecycle.o.p(list)));
        sbC.append("].");
        throw new IndexOutOfBoundsException(sbC.toString());
    }

    public static final boolean X(Collection collection, Iterable iterable) {
        p4.h.j(collection, "<this>");
        p4.h.j(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z10 = false;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static final Object Y(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(androidx.lifecycle.o.p(list));
    }
}
