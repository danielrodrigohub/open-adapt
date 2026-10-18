package f;

import android.view.View;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatDelegateImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends i0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f6872a;

    public l(h hVar) {
        this.f6872a = hVar;
    }

    @Override // j0.h0
    public final void a() {
        this.f6872a.f6828v.setAlpha(1.0f);
        this.f6872a.f6831y.d(null);
        this.f6872a.f6831y = null;
    }

    @Override // i0.b, j0.h0
    public final void c() {
        this.f6872a.f6828v.setVisibility(0);
        if (this.f6872a.f6828v.getParent() instanceof View) {
            View view = (View) this.f6872a.f6828v.getParent();
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.h.c(view);
        }
    }
}
