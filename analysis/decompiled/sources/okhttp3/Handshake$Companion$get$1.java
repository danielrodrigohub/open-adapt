package okhttp3;

import java.security.cert.Certificate;
import java.util.List;
import rd.o;

/* JADX INFO: compiled from: Handshake.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Handshake$Companion$get$1 extends o implements qd.a<List<? extends Certificate>> {
    public final /* synthetic */ List<Certificate> $peerCertificatesCopy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Handshake$Companion$get$1(List<? extends Certificate> list) {
        super(0);
        this.$peerCertificatesCopy = list;
    }

    @Override // qd.a
    public final List<? extends Certificate> invoke() {
        return this.$peerCertificatesCopy;
    }
}
