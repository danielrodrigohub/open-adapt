package w9;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl", f = "AdaptKitPairDevicesController.kt", l = {2219}, m = "syncBatteryCheck")
public final class o1 extends ld.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ya.b f17333h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public rd.w f17334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f17335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ x f17336k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17337l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(x xVar, jd.d<? super o1> dVar) {
        super(dVar);
        this.f17336k = xVar;
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) {
        this.f17335j = obj;
        this.f17337l |= Integer.MIN_VALUE;
        return x.s0(this.f17336k, null, this);
    }
}
