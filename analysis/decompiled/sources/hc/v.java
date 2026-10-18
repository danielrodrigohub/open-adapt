package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends pc.c<byte[]> {
    public v(w wVar) {
        super(wVar);
    }

    @Override // pc.c
    public final Object a(Object obj) {
        byte[] bArrR = gc.c0.z((byte[]) obj).y().r();
        p4.h.i(bArrR, "parseFrom(response).deviceNonce.toByteArray()");
        return bArrR;
    }
}
