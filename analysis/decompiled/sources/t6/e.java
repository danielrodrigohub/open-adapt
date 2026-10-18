package t6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: Joiner.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15541a;

    public e(String str) {
        Objects.requireNonNull(str);
        this.f15541a = str;
    }

    @CanIgnoreReturnValue
    public final <A extends Appendable> A a(A a10, Iterator<? extends Object> it) throws IOException {
        if (it.hasNext()) {
            Object next = it.next();
            Objects.requireNonNull(next);
            a10.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
            while (it.hasNext()) {
                a10.append(this.f15541a);
                Object next2 = it.next();
                Objects.requireNonNull(next2);
                a10.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
            }
        }
        return a10;
    }

    public final String b(Iterable<? extends Object> iterable) {
        Iterator<? extends Object> it = iterable.iterator();
        StringBuilder sb2 = new StringBuilder();
        try {
            a(sb2, it);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
