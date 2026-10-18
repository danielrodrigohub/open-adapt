package hd;

import java.util.Comparator;
import qd.l;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: hd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class C0168a<T> implements Comparator {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ l<T, Comparable<?>>[] f8646h;

        /* JADX WARN: Multi-variable type inference failed */
        public C0168a(l<? super T, ? extends Comparable<?>>[] lVarArr) {
            this.f8646h = lVarArr;
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            for (l<T, Comparable<?>> lVar : this.f8646h) {
                int iB = a.b(lVar.invoke(t10), lVar.invoke(t11));
                if (iB != 0) {
                    return iB;
                }
            }
            return 0;
        }
    }

    public static final <T> Comparator<T> a(l<? super T, ? extends Comparable<?>>... lVarArr) {
        if (lVarArr.length > 0) {
            return new C0168a(lVarArr);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final <T extends Comparable<?>> int b(T t10, T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return -1;
        }
        if (t11 == null) {
            return 1;
        }
        return t10.compareTo(t11);
    }
}
