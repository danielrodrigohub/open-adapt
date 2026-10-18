package androidx.appcompat.widget;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.nike.adapt.adk.InMemoryCache;
import java.util.Collections;
import java.util.Iterator;
import n3.z1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g1 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f1262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f1263i;

    public /* synthetic */ g1(Object obj, int i10) {
        this.f1262h = i10;
        this.f1263i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1262h) {
            case 0:
                ((Toolbar) this.f1263i).o();
                return;
            case 1:
                y0.d0.d dVar = ((y0.w) this.f1263i).f18283h;
                Collections.emptyList();
                dVar.a();
                return;
            case 2:
                z1 z1Var = (z1) this.f1263i;
                int i10 = z1.b.f11855b;
                z1Var.e();
                return;
            case 3:
                o5.j jVar = (o5.j) this.f1263i;
                Surface surface = jVar.f12331o;
                if (surface != null) {
                    Iterator<o5.j.b> it = jVar.f12324h.iterator();
                    while (it.hasNext()) {
                        it.next().j();
                    }
                }
                SurfaceTexture surfaceTexture = jVar.f12330n;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                jVar.f12330n = null;
                jVar.f12331o = null;
                return;
            default:
                i9.g gVar = (i9.g) this.f1263i;
                i9.g.a aVar = i9.g.K0;
                p4.h.j(gVar, "this$0");
                x8.n0 n0Var = gVar.f8899r0;
                if (n0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                n0Var.p(true);
                x8.n0 n0Var2 = gVar.f8899r0;
                if (n0Var2 == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                n0Var2.t(InMemoryCache.INSTANCE.getRightDevice());
                x8.n0 n0Var3 = gVar.f8899r0;
                if (n0Var3 != null) {
                    n0Var3.f(false);
                    return;
                } else {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
        }
    }
}
