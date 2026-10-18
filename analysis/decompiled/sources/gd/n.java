package gd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: _Collections.kt */
/* JADX INFO: loaded from: classes.dex */
public class n extends l {
    public static final <T> T Z(List<? extends T> list) {
        p4.h.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static final <T> T a0(List<? extends T> list) {
        p4.h.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T, A extends Appendable> A b0(Iterable<? extends T> iterable, A a10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, qd.l<? super T, ? extends CharSequence> lVar) throws IOException {
        p4.h.j(iterable, "<this>");
        p4.h.j(charSequence, "separator");
        p4.h.j(charSequence2, "prefix");
        p4.h.j(charSequence3, "postfix");
        p4.h.j(charSequence4, "truncated");
        a10.append(charSequence2);
        int i11 = 0;
        for (T t10 : iterable) {
            i11++;
            if (i11 > 1) {
                a10.append(charSequence);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            androidx.lifecycle.o.d(a10, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            a10.append(charSequence4);
        }
        a10.append(charSequence3);
        return a10;
    }

    public static /* synthetic */ Appendable c0(Iterable iterable, Appendable appendable) throws IOException {
        b0(iterable, appendable, "\n", "", "", -1, "...", null);
        return appendable;
    }

    public static String d0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, qd.l lVar, int i10) throws IOException {
        if ((i10 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence4 = charSequence;
        CharSequence charSequence5 = (i10 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i10 & 4) != 0 ? "" : charSequence3;
        int i11 = (i10 & 8) != 0 ? -1 : 0;
        CharSequence charSequence7 = (i10 & 16) != 0 ? "..." : null;
        qd.l lVar2 = (i10 & 32) != 0 ? null : lVar;
        p4.h.j(iterable, "<this>");
        p4.h.j(charSequence4, "separator");
        p4.h.j(charSequence5, "prefix");
        p4.h.j(charSequence6, "postfix");
        p4.h.j(charSequence7, "truncated");
        StringBuilder sb2 = new StringBuilder();
        b0(iterable, sb2, charSequence4, charSequence5, charSequence6, i11, charSequence7, lVar2);
        String string = sb2.toString();
        p4.h.i(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static final <T> T e0(List<? extends T> list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(androidx.lifecycle.o.p(list));
    }

    public static final <T> T f0(List<? extends T> list) {
        p4.h.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static final <T> List<T> g0(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        p4.h.j(collection, "<this>");
        p4.h.j(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            l.X(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static final <T> List<T> h0(Collection<? extends T> collection, T t10) {
        p4.h.j(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t10);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> i0(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        p4.h.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List<T> listM0 = m0(iterable);
            k.V(listM0, comparator);
            return listM0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return l0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return g.i(array);
    }

    public static final <T> List<T> j0(Iterable<? extends T> iterable, int i10) {
        int i11 = 0;
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(a0.d.b("Requested element count ", i10, " is less than zero.").toString());
        }
        if (i10 == 0) {
            return p.f8070h;
        }
        if (i10 >= ((Collection) iterable).size()) {
            return l0(iterable);
        }
        if (i10 == 1) {
            return androidx.lifecycle.o.y(Z((List) iterable));
        }
        ArrayList arrayList = new ArrayList(i10);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return androidx.lifecycle.o.D(arrayList);
    }

    public static final <T, C extends Collection<? super T>> C k0(Iterable<? extends T> iterable, C c10) {
        p4.h.j(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c10.add(it.next());
        }
        return c10;
    }

    public static final <T> List<T> l0(Iterable<? extends T> iterable) {
        p4.h.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return androidx.lifecycle.o.D(m0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return p.f8070h;
        }
        if (size != 1) {
            return n0(collection);
        }
        return androidx.lifecycle.o.y(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> List<T> m0(Iterable<? extends T> iterable) {
        p4.h.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return n0((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        k0(iterable, arrayList);
        return arrayList;
    }

    public static final <T> List<T> n0(Collection<? extends T> collection) {
        p4.h.j(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final <T> Set<T> o0(Iterable<? extends T> iterable) {
        p4.h.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        k0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static final <T> Set<T> p0(Iterable<? extends T> iterable) {
        p4.h.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            k0(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            if (size != 0) {
                return size != 1 ? linkedHashSet : c3.d.o(linkedHashSet.iterator().next());
            }
            return r.f8072h;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return r.f8072h;
        }
        if (size2 == 1) {
            return c3.d.o(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(androidx.activity.k.p(collection.size()));
        k0(iterable, linkedHashSet2);
        return linkedHashSet2;
    }
}
