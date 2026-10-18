package z8;

import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import rd.o;

/* JADX INFO: compiled from: LightPacksActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f19411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ LightPacksActivity f19412i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(qd.a<fd.o> aVar, LightPacksActivity lightPacksActivity) {
        super(0);
        this.f19411h = aVar;
        this.f19412i = lightPacksActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f19411h.invoke();
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        if (inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20) {
            LightPacksActivity lightPacksActivity = this.f19412i;
            m mVar = lightPacksActivity.L;
            if (mVar != null) {
                a aVar = lightPacksActivity.T;
                if (aVar == null) {
                    p4.h.C("selectedLightPack");
                    throw null;
                }
                mVar.b(aVar);
            }
        } else {
            LightPacksActivity lightPacksActivity2 = this.f19412i;
            n nVar = lightPacksActivity2.M;
            if (nVar == null) {
                p4.h.C("subtitleManager");
                throw null;
            }
            a aVar2 = lightPacksActivity2.T;
            if (aVar2 == null) {
                p4.h.C("selectedLightPack");
                throw null;
            }
            nVar.g(aVar2);
            this.f19412i.u0();
        }
        return fd.o.f7408a;
    }
}
