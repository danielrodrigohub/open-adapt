package hc;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.util.Objects;
import javax.crypto.spec.DHPublicKeySpec;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends pc.c<byte[]> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f8621b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(r rVar, b bVar) {
        super(rVar);
        this.f8621b = bVar;
    }

    @Override // pc.c
    public final Object a(Object obj) throws InvalidKeySpecException, InvalidKeyException {
        byte[] bArrR = gc.q.B((byte[]) obj).z().r();
        b bVar = this.f8621b;
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("devicePublicKey is ");
        p4.h.i(bArrR, "");
        sb2.append(e0.c(bArrR));
        g0.a.a(g0VarQ, sb2.toString(), null, false, "📞", 6, null);
        Objects.requireNonNull(bVar);
        bVar.f8411c.doPhase(bVar.f8412d.generatePublic(new DHPublicKeySpec(new BigInteger(1, bArrR), bVar.f8409a.getP(), bVar.f8409a.getG())), true);
        bVar.f8413e.update(bVar.f8411c.generateSecret());
        byte[] bArrDigest = bVar.f8413e.digest();
        p4.h.i(bArrDigest, "authHelper.sharedSecret");
        return bArrDigest;
    }
}
