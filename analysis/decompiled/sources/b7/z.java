package b7;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: Internal.java */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3564a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3565b;

    /* JADX INFO: compiled from: Internal.java */
    public interface a {
        int a();
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface b {
        boolean a();
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface c<E> extends List<E>, RandomAccess {
        void a();

        c<E> b(int i10);

        boolean f();
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f3565b = bArr;
        ByteBuffer.wrap(bArr);
        j.f(bArr, 0, bArr.length, false);
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static Object c(Object obj, Object obj2) {
        q0 q0Var = (q0) obj2;
        b7.a.AbstractC0055a abstractC0055a = (b7.a.AbstractC0055a) ((q0) obj).c();
        Objects.requireNonNull(abstractC0055a);
        x.a aVar = (x.a) abstractC0055a;
        if (!aVar.f3548h.getClass().isInstance(q0Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVar.k((x) ((b7.a) q0Var));
        return aVar.i();
    }
}
