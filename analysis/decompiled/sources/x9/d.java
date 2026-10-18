package x9;

import v9.m;

/* JADX INFO: compiled from: ConnectionConditional.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<ErrorCondition extends v9.m> extends b<ErrorCondition> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final da.d f18070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final da.d f18071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ea.m f18072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f18073d;

    public d(da.d dVar, da.d dVar2, ea.m mVar) {
        p4.h.j(dVar, "leftConnectionState");
        p4.h.j(dVar2, "rightConnectionState");
        p4.h.j(mVar, "adaptKitPairedDevices");
        this.f18070a = dVar;
        this.f18071b = dVar2;
        this.f18072c = mVar;
    }

    @Override // x9.b
    public final boolean d() {
        String strC;
        int iOrdinal = a().f17254i.ordinal();
        if (iOrdinal == 0) {
            strC = this.f18072c.f6667k.f6612j;
        } else if (iOrdinal == 1) {
            strC = this.f18072c.f6668l.f6612j;
        } else {
            if (iOrdinal != 2) {
                throw new j2.a();
            }
            ea.m mVar = this.f18072c;
            strC = a0.d.c(mVar.f6667k.f6612j, ",", mVar.f6668l.f6612j);
        }
        this.f18073d = strC;
        int iOrdinal2 = a().f17254i.ordinal();
        if (iOrdinal2 != 0) {
            if (iOrdinal2 != 1) {
                if (iOrdinal2 != 2) {
                    throw new j2.a();
                }
                boolean z10 = (!this.f18070a.g() || g()) && !(this.f18070a.b() && g());
                boolean z11 = (!this.f18071b.g() || g()) && !(this.f18071b.b() && g());
                if (z10 || z11) {
                    return true;
                }
            } else if ((!this.f18071b.g() || g()) && (!this.f18071b.b() || !g())) {
                return true;
            }
        } else if ((!this.f18070a.g() || g()) && (!this.f18070a.b() || !g())) {
            return true;
        }
        return false;
    }

    public abstract boolean g();
}
