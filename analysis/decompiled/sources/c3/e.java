package c3;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: GifDrawableResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends a3.c<c> {
    public e(c cVar) {
        super(cVar);
    }

    @Override // r2.w
    public final int a() {
        g gVar = ((c) this.f209h).f3835h.f3845a;
        return gVar.f3847a.f() + gVar.f3861o;
    }

    @Override // r2.w
    public final Class<c> b() {
        return c.class;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<c3.g$b>] */
    @Override // r2.w
    public final void c() {
        ((c) this.f209h).stop();
        c cVar = (c) this.f209h;
        cVar.f3838k = true;
        g gVar = cVar.f3835h.f3845a;
        gVar.f3849c.clear();
        Bitmap bitmap = gVar.f3858l;
        if (bitmap != null) {
            gVar.f3851e.e(bitmap);
            gVar.f3858l = null;
        }
        gVar.f3852f = false;
        g.a aVar = gVar.f3855i;
        if (aVar != null) {
            gVar.f3850d.o(aVar);
            gVar.f3855i = null;
        }
        g.a aVar2 = gVar.f3857k;
        if (aVar2 != null) {
            gVar.f3850d.o(aVar2);
            gVar.f3857k = null;
        }
        g.a aVar3 = gVar.f3860n;
        if (aVar3 != null) {
            gVar.f3850d.o(aVar3);
            gVar.f3860n = null;
        }
        gVar.f3847a.clear();
        gVar.f3856j = true;
    }

    @Override // a3.c, r2.s
    public final void initialize() {
        ((c) this.f209h).b().prepareToDraw();
    }
}
