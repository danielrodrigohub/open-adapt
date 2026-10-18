package t6;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Predicates.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: compiled from: Predicates.java */
    public static class b<T> implements i<T>, Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List<? extends i<? super T>> f15543h;

        public b(List list, a aVar) {
            this.f15543h = list;
        }

        @Override // t6.i
        public final boolean apply(T t10) {
            for (int i10 = 0; i10 < this.f15543h.size(); i10++) {
                if (!this.f15543h.get(i10).apply(t10)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return this.f15543h.equals(((b) obj).f15543h);
            }
            return false;
        }

        public final int hashCode() {
            return this.f15543h.hashCode() + 306654252;
        }

        public final String toString() {
            List<? extends i<? super T>> list = this.f15543h;
            StringBuilder sb2 = new StringBuilder("Predicates.");
            sb2.append("and");
            sb2.append('(');
            boolean z10 = true;
            for (T t10 : list) {
                if (!z10) {
                    sb2.append(',');
                }
                sb2.append(t10);
                z10 = false;
            }
            sb2.append(')');
            return sb2.toString();
        }
    }

    public static <T> i<T> a(i<? super T> iVar, i<? super T> iVar2) {
        Objects.requireNonNull(iVar);
        return new b(Arrays.asList(iVar, iVar2), null);
    }
}
