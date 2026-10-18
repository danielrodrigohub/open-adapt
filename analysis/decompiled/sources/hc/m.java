package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends pc.c<Boolean> {
    public m(n nVar) {
        super(nVar);
    }

    @Override // pc.c
    public final Object a(Object obj) {
        byte[] bArr = (byte[]) obj;
        if (bArr == null) {
            return Boolean.FALSE;
        }
        m0 m0VarA = m0.a(bArr);
        if (m0VarA != null) {
            return Boolean.valueOf(m0VarA.f8594b == m0.a.ACK);
        }
        return Boolean.FALSE;
    }
}
