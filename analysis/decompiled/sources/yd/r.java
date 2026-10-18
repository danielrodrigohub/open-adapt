package yd;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends rd.o implements qd.l<vd.e, String> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CharSequence f19204h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(CharSequence charSequence) {
        super(1);
        this.f19204h = charSequence;
    }

    @Override // qd.l
    public final String invoke(vd.e eVar) {
        vd.e eVar2 = eVar;
        p4.h.j(eVar2, "it");
        return s.D0(this.f19204h, eVar2);
    }
}
