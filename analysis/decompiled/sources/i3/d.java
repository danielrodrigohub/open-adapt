package i3;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: CustomViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<T extends View, Z> implements i<Z> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f8731j = R.id.glide_custom_view_target_tag;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f8732h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final T f8733i;

    /* JADX INFO: compiled from: CustomViewTarget.java */
    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static Integer f8734d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f8735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<h> f8736b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ViewTreeObserverOnPreDrawListenerC0169a f8737c;

        /* JADX INFO: renamed from: i3.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CustomViewTarget.java */
        public static final class ViewTreeObserverOnPreDrawListenerC0169a implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final WeakReference<a> f8738h;

            public ViewTreeObserverOnPreDrawListenerC0169a(a aVar) {
                this.f8738h = new WeakReference<>(aVar);
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<i3.h>] */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f8738h.get();
                if (aVar == null || aVar.f8736b.isEmpty()) {
                    return true;
                }
                int iD = aVar.d();
                int iC = aVar.c();
                if (!aVar.e(iD, iC)) {
                    return true;
                }
                Iterator it = new ArrayList(aVar.f8736b).iterator();
                while (it.hasNext()) {
                    ((h) it.next()).a(iD, iC);
                }
                aVar.a();
                return true;
            }
        }

        public a(View view) {
            this.f8735a = view;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<i3.h>] */
        public final void a() {
            ViewTreeObserver viewTreeObserver = this.f8735a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f8737c);
            }
            this.f8737c = null;
            this.f8736b.clear();
        }

        public final int b(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.f8735a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            if (Log.isLoggable("CustomViewTarget", 4)) {
                Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            Context context = this.f8735a.getContext();
            if (f8734d == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                Objects.requireNonNull(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f8734d = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f8734d.intValue();
        }

        public final int c() {
            int paddingBottom = this.f8735a.getPaddingBottom() + this.f8735a.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.f8735a.getLayoutParams();
            return b(this.f8735a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        public final int d() {
            int paddingRight = this.f8735a.getPaddingRight() + this.f8735a.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.f8735a.getLayoutParams();
            return b(this.f8735a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        public final boolean e(int i10, int i11) {
            if (i10 > 0 || i10 == Integer.MIN_VALUE) {
                return i11 > 0 || i11 == Integer.MIN_VALUE;
            }
            return false;
        }
    }

    public d(T t10) {
        Objects.requireNonNull(t10, "Argument must not be null");
        this.f8733i = t10;
        this.f8732h = new a(t10);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<i3.h>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList, java.util.List<i3.h>] */
    @Override // i3.i
    public final void b(h hVar) {
        a aVar = this.f8732h;
        int iD = aVar.d();
        int iC = aVar.c();
        if (aVar.e(iD, iC)) {
            hVar.a(iD, iC);
            return;
        }
        if (!aVar.f8736b.contains(hVar)) {
            aVar.f8736b.add(hVar);
        }
        if (aVar.f8737c == null) {
            ViewTreeObserver viewTreeObserver = aVar.f8735a.getViewTreeObserver();
            a.ViewTreeObserverOnPreDrawListenerC0169a viewTreeObserverOnPreDrawListenerC0169a = new a.ViewTreeObserverOnPreDrawListenerC0169a(aVar);
            aVar.f8737c = viewTreeObserverOnPreDrawListenerC0169a;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0169a);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<i3.h>] */
    @Override // i3.i
    public final void c(h hVar) {
        this.f8732h.f8736b.remove(hVar);
    }

    @Override // i3.i
    public final void d(Drawable drawable) {
    }

    @Override // i3.i
    public final h3.d e() {
        Object tag = this.f8733i.getTag(f8731j);
        if (tag == null) {
            return null;
        }
        if (tag instanceof h3.d) {
            return (h3.d) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // i3.i
    public final void f(Drawable drawable) {
        this.f8732h.a();
    }

    @Override // e3.i
    public final void g() {
    }

    @Override // e3.i
    public final void h() {
    }

    @Override // i3.i
    public final void i(h3.d dVar) {
        this.f8733i.setTag(f8731j, dVar);
    }

    @Override // e3.i
    public final void k() {
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Target for: ");
        sbC.append(this.f8733i);
        return sbC.toString();
    }
}
