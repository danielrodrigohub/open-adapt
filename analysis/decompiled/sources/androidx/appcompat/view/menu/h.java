package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: MenuPopupHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f937f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i.a f940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public k.d f941j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f942k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f938g = 8388611;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a f943l = new a();

    /* JADX INFO: compiled from: MenuPopupHelper.java */
    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            h.this.c();
        }
    }

    /* JADX INFO: compiled from: MenuPopupHelper.java */
    public static class b {
        public static void a(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    public h(Context context, e eVar, View view, boolean z10, int i10, int i11) {
        this.f932a = context;
        this.f933b = eVar;
        this.f937f = view;
        this.f934c = z10;
        this.f935d = i10;
        this.f936e = i11;
    }

    public final k.d a() {
        if (this.f941j == null) {
            Display defaultDisplay = ((WindowManager) this.f932a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            b.a(defaultDisplay, point);
            k.d bVar = Math.min(point.x, point.y) >= this.f932a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width) ? new androidx.appcompat.view.menu.b(this.f932a, this.f937f, this.f935d, this.f936e, this.f934c) : new k(this.f932a, this.f933b, this.f937f, this.f935d, this.f936e, this.f934c);
            bVar.l(this.f933b);
            bVar.r(this.f943l);
            bVar.n(this.f937f);
            bVar.j(this.f940i);
            bVar.o(this.f939h);
            bVar.p(this.f938g);
            this.f941j = bVar;
        }
        return this.f941j;
    }

    public final boolean b() {
        k.d dVar = this.f941j;
        return dVar != null && dVar.c();
    }

    public void c() {
        this.f941j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f942k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(i.a aVar) {
        this.f940i = aVar;
        k.d dVar = this.f941j;
        if (dVar != null) {
            dVar.j(aVar);
        }
    }

    public final void e(int i10, int i11, boolean z10, boolean z11) {
        k.d dVarA = a();
        dVarA.s(z11);
        if (z10) {
            int i12 = this.f938g;
            View view = this.f937f;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if ((Gravity.getAbsoluteGravity(i12, a0.e.d(view)) & 7) == 5) {
                i10 -= this.f937f.getWidth();
            }
            dVarA.q(i10);
            dVarA.t(i11);
            int i13 = (int) ((this.f932a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            dVarA.f9544h = new Rect(i10 - i13, i11 - i13, i10 + i13, i11 + i13);
        }
        dVarA.a();
    }
}
