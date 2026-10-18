package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends pc.c<Integer> {
    public x(y yVar) {
        super(yVar);
    }

    @Override // pc.c
    public final Object a(Object obj) {
        try {
            return Integer.valueOf(gc.d0.z((byte[]) obj).y());
        } catch (m7.z unused) {
            return 0;
        }
    }
}
