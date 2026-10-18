package androidx.activity;

import android.view.View;
import androidx.appcompat.widget.l1;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import m9.o;
import m9.v;
import n3.m1;
import n3.x1;
import s9.z;
import x8.f0;
import y1.g0;
import y1.j0;
import y1.k0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f702i;

    public /* synthetic */ g(Object obj, int i10) {
        this.f701h = i10;
        this.f702i = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        View view;
        x1 x1Var;
        switch (this.f701h) {
            case 0:
                h.b((h) this.f702i);
                return;
            case 1:
                ((l1) this.f702i).c(false);
                return;
            case 2:
                k0 k0Var = (k0) this.f702i;
                j0<T> j0Var = k0Var.f18385d;
                if (j0Var == 0) {
                    return;
                }
                V v10 = j0Var.f18376a;
                if (v10 != 0) {
                    synchronized (k0Var) {
                        Iterator it = new ArrayList(k0Var.f18382a).iterator();
                        while (it.hasNext()) {
                            ((g0) it.next()).a(v10);
                        }
                    }
                    return;
                }
                Throwable th = j0Var.f18377b;
                synchronized (k0Var) {
                    ArrayList arrayList = new ArrayList(k0Var.f18383b);
                    if (arrayList.isEmpty()) {
                        k2.c.c("Lottie encountered an error but no failure listener was added:", th);
                        return;
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((g0) it2.next()).a(th);
                    }
                    return;
                }
            case 3:
                DashMediaSource dashMediaSource = (DashMediaSource) this.f702i;
                int i10 = DashMediaSource.W;
                dashMediaSource.G();
                return;
            case 4:
                i9.g gVar = (i9.g) this.f702i;
                i9.g.a aVar = i9.g.K0;
                p4.h.j(gVar, "this$0");
                f0 f0Var = gVar.f8900s0;
                if (f0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
                f0Var.p(true);
                f0 f0Var2 = gVar.f8900s0;
                if (f0Var2 == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
                f0Var2.t(InMemoryCache.INSTANCE.getLeftDevice());
                f0 f0Var3 = gVar.f8900s0;
                if (f0Var3 != null) {
                    f0Var3.f(false);
                    return;
                } else {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            case 5:
                v vVar = (v) this.f702i;
                v.a aVar2 = v.f10923o0;
                p4.h.j(vVar, "this$0");
                if ((!vVar.B() || vVar.G || (view = vVar.M) == null || view.getWindowToken() == null || vVar.M.getVisibility() != 0) ? false : true) {
                    o.b bVar = vVar.f10927k0;
                    if (bVar != null) {
                        bVar.G(z.UPDATE_COMPLETE);
                        return;
                    } else {
                        p4.h.C("listener");
                        throw null;
                    }
                }
                return;
            case 6:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f702i;
                int i11 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                if (shoeControllerActivity.f5881j0 == null || (x1Var = shoeControllerActivity.f5880i0) == null) {
                    return;
                }
                x1Var.i0(new m1(0.4f));
                return;
            default:
                p9.d.a((p9.d) this.f702i);
                return;
        }
    }
}
