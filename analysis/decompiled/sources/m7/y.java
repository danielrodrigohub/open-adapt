package m7;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: Internal.java */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f10801a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f10802b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f10803c;

    /* JADX INFO: compiled from: Internal.java */
    public interface a {
        int a();
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface b {
        boolean a();
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface c extends d<Integer> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface d<E> extends List<E>, RandomAccess {
        void a();

        d<E> b(int i10);

        boolean f();
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f10803c = bArr;
        ByteBuffer.wrap(bArr);
        j.c(bArr, 0, bArr.length, false);
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static Object c(Object obj, Object obj2) {
        p0 p0Var = (p0) obj2;
        m7.a.AbstractC0206a abstractC0206a = (m7.a.AbstractC0206a) ((p0) obj).c();
        Objects.requireNonNull(abstractC0206a);
        w.a aVar = (w.a) abstractC0206a;
        if (!aVar.f10784h.getClass().isInstance(p0Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVar.l((w) ((m7.a) p0Var));
        return aVar.i();
    }
}
