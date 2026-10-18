package f6;

import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.floatingactionbutton.d f7086h;

    public c(com.google.android.material.floatingactionbutton.d dVar) {
        this.f7086h = dVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        com.google.android.material.floatingactionbutton.d dVar = this.f7086h;
        float rotation = dVar.f5329w.getRotation();
        if (dVar.f5322p == rotation) {
            return true;
        }
        dVar.f5322p = rotation;
        dVar.u();
        return true;
    }
}
