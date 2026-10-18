package pc;

import hc.m0;
import p4.h;

/* JADX INFO: compiled from: BooleanCommandResponse.kt */
/* JADX INFO: loaded from: classes.dex */
public class b extends c<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(lc.b<Boolean> bVar) {
        super(bVar);
        h.j(bVar, "request");
    }

    @Override // pc.c
    public final void c(byte[] bArr) {
        try {
            if (a(bArr).booleanValue()) {
                this.f13423a.j(Boolean.TRUE);
            } else {
                this.f13423a.k(new Throwable("Response was NAK'd"));
            }
        } catch (Throwable th) {
            this.f13423a.k(th);
        }
    }

    @Override // pc.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Boolean a(byte[] bArr) throws Exception {
        if (bArr == null) {
            throw new Exception("Response was empty");
        }
        m0 m0VarA = m0.a(bArr);
        return (m0VarA == null || m0VarA.f8594b != m0.a.NAK) ? Boolean.TRUE : Boolean.FALSE;
    }
}
