package fb;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends rd.o implements qd.l<s.a, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ s f7250h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(s sVar) {
        super(1);
        this.f7250h = sVar;
    }

    @Override // qd.l
    public final fd.o invoke(s.a aVar) {
        s.a aVar2 = aVar;
        p4.h.j(aVar2, "command");
        this.f7250h.f7302d.K(new z(aVar2));
        return fd.o.f7408a;
    }
}
