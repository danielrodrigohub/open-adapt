package v9;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f16448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ qd.a f16449i;

    public /* synthetic */ a0(qd.a aVar, int i10) {
        this.f16448h = i10;
        this.f16449i = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16448h) {
            case 0:
                qd.a aVar = this.f16449i;
                p4.h.j(aVar, "$tmp0");
                aVar.invoke();
                break;
            default:
                qd.a aVar2 = this.f16449i;
                nb.b bVar = nb.b.f12034i;
                p4.h.j(aVar2, "$tmp0");
                aVar2.invoke();
                break;
        }
    }
}
