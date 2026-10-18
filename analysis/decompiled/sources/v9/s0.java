package v9;

/* JADX INFO: compiled from: AdaptKitSessionListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s0 extends rd.o implements qd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f16814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f16815i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s0(Object obj, Object obj2) {
        super(0);
        this.f16814h = obj;
        this.f16815i = obj2;
    }

    @Override // qd.a
    public final /* bridge */ /* synthetic */ Object invoke() {
        m169invoke();
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public final void m169invoke() {
        a aVarN = ((ya.h0) this.f16814h).n();
        String strP = ((ya.h0) this.f16814h).p();
        try {
            if (!((ya.d) this.f16815i).g0().b()) {
                ((ya.h0) this.f16814h).k(new m2(((ya.d) this.f16815i).f18763f, aVarN, new Exception("No device connected"), strP));
                return;
            }
            Object obj = this.f16814h;
            if (((ya.h0) obj) instanceof nc.c) {
                t tVar = t.f16822a;
                t.f16830i.a(new eb.c(new eb.a(strP + ": " + ((ya.d) this.f16815i).f18763f + " with value: " + ((nc.c) ((ya.h0) obj)).getValue() + " from " + aVarN.c())));
            } else {
                t tVar2 = t.f16822a;
                t.f16830i.a(new eb.c(new eb.a(strP + ": " + ((ya.d) this.f16815i).f18763f + " from " + aVarN.c())));
            }
            ya.d.Y((ya.d) this.f16815i, (ya.h0) this.f16814h);
        } catch (Throwable th) {
            ((ya.h0) this.f16814h).k(th);
        }
    }
}
