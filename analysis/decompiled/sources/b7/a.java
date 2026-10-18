package b7;

import b7.a;
import b7.a.AbstractC0055a;
import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: AbstractMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0055a<MessageType, BuilderType>> implements q0 {
    public int memoizedHashCode = 0;

    /* JADX INFO: renamed from: b7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMessageLite.java */
    public static abstract class AbstractC0055a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0055a<MessageType, BuilderType>> implements q0.a {
    }

    @Override // b7.q0
    public final i e() {
        try {
            x xVar = (x) this;
            int iA = xVar.a();
            i.f fVar = i.f3419i;
            byte[] bArr = new byte[iA];
            Logger logger = l.f3445b;
            l.b bVar = new l.b(bArr, iA);
            xVar.g(bVar);
            if (bVar.f3449e - bVar.f3450f == 0) {
                return new i.f(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(j("ByteString"), e10);
        }
    }

    int h() {
        throw new UnsupportedOperationException();
    }

    public final int i(e1 e1Var) {
        int iH = h();
        if (iH != -1) {
            return iH;
        }
        int iE = e1Var.e(this);
        k(iE);
        return iE;
    }

    public final String j(String str) {
        StringBuilder sbC = a0.b.c("Serializing ");
        sbC.append(getClass().getName());
        sbC.append(" to a ");
        sbC.append(str);
        sbC.append(" threw an IOException (should never happen).");
        return sbC.toString();
    }

    void k(int i10) {
        throw new UnsupportedOperationException();
    }

    public final byte[] l() {
        try {
            x xVar = (x) this;
            int iA = xVar.a();
            byte[] bArr = new byte[iA];
            Logger logger = l.f3445b;
            l.b bVar = new l.b(bArr, iA);
            xVar.g(bVar);
            if (bVar.f3449e - bVar.f3450f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(j("byte array"), e10);
        }
    }
}
