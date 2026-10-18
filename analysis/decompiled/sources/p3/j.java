package p3;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import java.util.Iterator;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f12773j;

    public /* synthetic */ j(Object obj, Object obj2, int i10) {
        this.f12771h = i10;
        this.f12773j = obj;
        this.f12772i = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12771h) {
            case 0:
                p.a aVar = (p.a) this.f12773j;
                q3.e eVar = (q3.e) this.f12772i;
                p pVar = aVar.f12790b;
                int i10 = m5.g0.f10384a;
                pVar.y(eVar);
                break;
            case 1:
                n5.s.a aVar2 = (n5.s.a) this.f12773j;
                q3.e eVar2 = (q3.e) this.f12772i;
                n5.s sVar = aVar2.f11984b;
                int i11 = m5.g0.f10384a;
                sVar.q(eVar2);
                break;
            default:
                o5.j jVar = (o5.j) this.f12773j;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.f12772i;
                SurfaceTexture surfaceTexture2 = jVar.f12330n;
                Surface surface = jVar.f12331o;
                Surface surface2 = new Surface(surfaceTexture);
                jVar.f12330n = surfaceTexture;
                jVar.f12331o = surface2;
                Iterator<o5.j.b> it = jVar.f12324h.iterator();
                while (it.hasNext()) {
                    it.next().e(surface2);
                }
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface != null) {
                    surface.release();
                }
                break;
        }
    }
}
