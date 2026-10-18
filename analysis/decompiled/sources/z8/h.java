package z8;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import rd.o;

/* JADX INFO: compiled from: LightPacksActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p9.d f19408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f19409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ LightPacksActivity f19410j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(p9.d dVar, qd.a<fd.o> aVar, LightPacksActivity lightPacksActivity) {
        super(0);
        this.f19408h = dVar;
        this.f19409i = aVar;
        this.f19410j = lightPacksActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f19408h.c();
        this.f19409i.invoke();
        LightPacksActivity lightPacksActivity = this.f19410j;
        lightPacksActivity.f5783c0 = true;
        BuildersKt__Builders_commonKt.launch$default(lightPacksActivity.A, null, null, new g(lightPacksActivity, null), 3, null);
        TrackManager.INSTANCE.lightPacksTooltipOneNextSelected();
        return fd.o.f7408a;
    }
}
