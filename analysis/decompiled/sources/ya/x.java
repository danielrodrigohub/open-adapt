package ya;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl", f = "AdaptKitControlsRepositories.kt", l = {1668}, m = "slotErrorType")
public final class x extends ld.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public fa.g.b f19098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public rc.b f19099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f19100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ d f19101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f19102l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(d dVar, jd.d<? super x> dVar2) {
        super(dVar2);
        this.f19101k = dVar;
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) {
        this.f19100j = obj;
        this.f19102l |= Integer.MIN_VALUE;
        return this.f19101k.o0(0, null, this);
    }
}
