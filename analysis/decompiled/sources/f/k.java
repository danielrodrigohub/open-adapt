package f;

import android.view.View;
import android.view.ViewGroup;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatDelegateImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ h f6870h;

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    public class a extends i0.b {
        public a() {
        }

        @Override // j0.h0
        public final void a() {
            k.this.f6870h.f6828v.setAlpha(1.0f);
            k.this.f6870h.f6831y.d(null);
            k.this.f6870h.f6831y = null;
        }

        @Override // i0.b, j0.h0
        public final void c() {
            k.this.f6870h.f6828v.setVisibility(0);
        }
    }

    public k(h hVar) {
        this.f6870h = hVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        ViewGroup viewGroup;
        h hVar = this.f6870h;
        hVar.f6829w.showAtLocation(hVar.f6828v, 55, 0, 0);
        this.f6870h.H();
        h hVar2 = this.f6870h;
        if (!hVar2.f6832z || (viewGroup = hVar2.A) == null) {
            z10 = false;
        } else {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.g.c(viewGroup)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (!z10) {
            this.f6870h.f6828v.setAlpha(1.0f);
            this.f6870h.f6828v.setVisibility(0);
            return;
        }
        this.f6870h.f6828v.setAlpha(0.0f);
        h hVar3 = this.f6870h;
        g0 g0VarB = a0.b(hVar3.f6828v);
        g0VarB.a(1.0f);
        hVar3.f6831y = g0VarB;
        this.f6870h.f6831y.d(new a());
    }
}
