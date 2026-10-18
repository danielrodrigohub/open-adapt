package m7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import m7.a;
import m7.a.AbstractC0206a;

/* JADX INFO: compiled from: AbstractMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0206a<MessageType, BuilderType>> implements p0 {
    public int memoizedHashCode = 0;

    /* JADX INFO: renamed from: m7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMessageLite.java */
    public static abstract class AbstractC0206a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0206a<MessageType, BuilderType>> implements p0.a {
    }

    public static <T> void h(Iterable<T> iterable, List<? super T> list) {
        Charset charset = y.f10801a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof e0) {
            List<?> listE = ((e0) iterable).e();
            e0 e0Var = (e0) list;
            int size = list.size();
            for (Object obj : listE) {
                if (obj == null) {
                    StringBuilder sbC = a0.b.c("Element at index ");
                    sbC.append(e0Var.size() - size);
                    sbC.append(" is null.");
                    String string = sbC.toString();
                    int size2 = e0Var.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(string);
                        }
                        e0Var.remove(size2);
                    }
                } else if (obj instanceof i) {
                    e0Var.j((i) obj);
                } else {
                    e0Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof y0) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (T t10 : iterable) {
            if (t10 == null) {
                StringBuilder sbC2 = a0.b.c("Element at index ");
                sbC2.append(list.size() - size3);
                sbC2.append(" is null.");
                String string2 = sbC2.toString();
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(string2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(t10);
            }
        }
    }

    private String k(String str) {
        StringBuilder sbC = a0.b.c("Serializing ");
        sbC.append(getClass().getName());
        sbC.append(" to a ");
        sbC.append(str);
        sbC.append(" threw an IOException (should never happen).");
        return sbC.toString();
    }

    @Override // m7.p0
    public final i e() {
        try {
            w wVar = (w) this;
            int iA = wVar.a();
            i.f fVar = i.f10666i;
            byte[] bArr = new byte[iA];
            Logger logger = k.f10688b;
            k.b bVar = new k.b(bArr, iA);
            wVar.g(bVar);
            if (bVar.f10692e - bVar.f10693f == 0) {
                return new i.f(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(k("ByteString"), e10);
        }
    }

    int i() {
        throw new UnsupportedOperationException();
    }

    public final int j(c1 c1Var) {
        int i10 = i();
        if (i10 != -1) {
            return i10;
        }
        int iE = c1Var.e(this);
        l(iE);
        return iE;
    }

    void l(int i10) {
        throw new UnsupportedOperationException();
    }

    public final byte[] m() {
        try {
            w wVar = (w) this;
            int iA = wVar.a();
            byte[] bArr = new byte[iA];
            Logger logger = k.f10688b;
            k.b bVar = new k.b(bArr, iA);
            wVar.g(bVar);
            if (bVar.f10692e - bVar.f10693f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(k("byte array"), e10);
        }
    }
}
