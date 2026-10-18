package i9;

import android.view.View;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.SettingsRegulatoryActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import ea.e;
import h9.l0;
import h9.v0;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p4.h;
import q7.o0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f8831h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f8832i;

    public /* synthetic */ b(Object obj, int i10) {
        this.f8831h = i10;
        this.f8832i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f8831h) {
            case 0:
                g gVar = (g) this.f8832i;
                g.a aVar = g.K0;
                p4.h.j(gVar, "this$0");
                o7.x.f12420a.a("Find Your Fit - Pressed: Done");
                int i10 = gVar.A0;
                int i11 = gVar.f8907z0;
                s9.p pVar = s9.p.f15222a;
                s9.r rVarD = gVar.x0().d();
                ArrayList arrayList = new ArrayList();
                switch (rVarD == null ? -1 : s9.p.b.f15227a[rVarD.ordinal()]) {
                    case 1:
                    case 3:
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_bb_mode_name_game), i10, i11, 0));
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_bb_mode_name_rest), f1.b.l(i10 * 0.2f), f1.b.l(i11 * 0.2f), 1));
                        s9.p.p(i10, i11, rVarD);
                        break;
                    case 2:
                    case 4:
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_nsw_mode_name_move), i10, i11, 0));
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_nsw_mode_name_casual), f1.b.l(i10 * 0.5f), f1.b.l(i11 * 0.5f), 1));
                        s9.p.p(i10, i11, rVarD);
                        break;
                    case 5:
                    case 6:
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_jordan_mode_name_locked_in), i10, i11, 0));
                        arrayList.add(s9.p.a(pVar.d(R.string.adapt_nsw_mode_name_casual), f1.b.l(i10 * 0.2f), f1.b.l(i11 * 0.2f), 1));
                        s9.p.p(i10, i11, rVarD);
                        break;
                }
                List<ea.e> listA = rd.b0.a(arrayList);
                j9.b bVar = gVar.f8896o0;
                if (bVar == null) {
                    p4.h.C("adaptShoeUtils");
                    throw null;
                }
                ea.m mVar = gVar.f8901t0;
                if (mVar == null) {
                    p4.h.C("currentPair");
                    throw null;
                }
                if (!listA.isEmpty()) {
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    inMemoryCache.getLeftDevice().setMaxTightness(bVar.f9479d);
                    inMemoryCache.getRightDevice().setMaxTightness(bVar.f9478c);
                    List listN0 = gd.n.n0(p4.h.w(mVar));
                    ArrayList arrayList2 = (ArrayList) listN0;
                    arrayList2.removeIf(new Predicate() { // from class: j9.a
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            e eVar = (e) obj;
                            h.j(eVar, "it");
                            return eVar.f6629j;
                        }
                    });
                    arrayList2.addAll(listA);
                    bVar.f9476a.updatePair(ea.m.a(mVar, null, false, ea.b.a(mVar.f6667k, null, null, bVar.f9479d, false, 95), ea.b.a(mVar.f6668l, null, null, bVar.f9478c, false, 95), null, null, listN0, 0L, false, 8039));
                }
                gVar.H0 = true;
                if (!(true ^ listA.isEmpty())) {
                    o8.d dVar = gVar.f8902u0;
                    if (dVar != null) {
                        dVar.O(o8.a.COMPLETED);
                        return;
                    } else {
                        p4.h.C("stateListener");
                        throw null;
                    }
                }
                o0 o0Var = gVar.f8890i0;
                if (o0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                o0Var.f13954h.setVisibility(8);
                o0 o0Var2 = gVar.f8890i0;
                if (o0Var2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                o0Var2.f13955i.setVisibility(8);
                o0 o0Var3 = gVar.f8890i0;
                if (o0Var3 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                o0Var3.f13949c.f13899a.setVisibility(0);
                o0 o0Var4 = gVar.f8890i0;
                if (o0Var4 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                o0Var4.f13949c.f13900b.e();
                o0 o0Var5 = gVar.f8890i0;
                if (o0Var5 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                o0Var5.f13949c.f13900b.c(new l(gVar));
                gVar.v0(listA, 0);
                return;
            case 1:
                b0 b0Var = (b0) this.f8832i;
                b0.a aVar2 = b0.f8833q0;
                p4.h.j(b0Var, "this$0");
                o7.x.f12420a.a("Put On Shoes - Pressed: Skip");
                b0Var.u0().h(v7.g.COMPLETED);
                b0Var.u0().i(v7.h.NORMAL);
                new v0(false, 1, null).e(b0Var.d0());
                return;
            case 2:
                m9.r rVar = (m9.r) this.f8832i;
                m9.r.a aVar3 = m9.r.f10909f0;
                p4.h.j(rVar, "this$0");
                BuildersKt__Builders_commonKt.launch$default(rVar.f10912e0, null, null, new m9.s(null), 3, null);
                return;
            case 3:
                SettingsRegulatoryActivity settingsRegulatoryActivity = (SettingsRegulatoryActivity) this.f8832i;
                int i12 = SettingsRegulatoryActivity.D;
                p4.h.j(settingsRegulatoryActivity, "this$0");
                o7.x.f12420a.a(settingsRegulatoryActivity.B);
                new l0(n9.c.f12029h).e(settingsRegulatoryActivity);
                return;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f8832i;
                int i13 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                TrackManager.INSTANCE.isQuickUnlaceSelected();
                o7.x.f12420a.a("Pressed: Lace/Unlace");
                p4.h.i(view, "view");
                if (shoeControllerActivity.f5885n0.c()) {
                    return;
                }
                f1.b.c(view, new o9.m(shoeControllerActivity));
                return;
        }
    }
}
