package f;

import android.content.Context;
import android.content.res.Configuration;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: compiled from: AppCompatDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p.c<WeakReference<g>> f6806h = new p.c<>(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f6807i = new Object();

    public static void q(g gVar) {
        synchronized (f6807i) {
            Iterator<WeakReference<g>> it = f6806h.iterator();
            while (it.hasNext()) {
                g gVar2 = it.next().get();
                if (gVar2 == gVar || gVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public Context d(Context context) {
        return context;
    }

    public abstract <T extends View> T e(int i10);

    public int f() {
        return -100;
    }

    public abstract MenuInflater g();

    public abstract a h();

    public abstract void i();

    public abstract void j();

    public abstract void k(Configuration configuration);

    public abstract void l();

    public abstract void m();

    public abstract void n();

    public abstract void o();

    public abstract void p();

    public abstract boolean r(int i10);

    public abstract void s(int i10);

    public abstract void t(View view);

    public abstract void u(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void v(Toolbar toolbar);

    public void w(int i10) {
    }

    public abstract void x(CharSequence charSequence);
}
