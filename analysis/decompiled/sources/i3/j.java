package i3;

import android.content.Context;
import android.graphics.Point;
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

/* JADX INFO: compiled from: ViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class j<T extends View, Z> extends i3.a<Z> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f8742j = R.id.glide_custom_view_target_tag;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final T f8743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f8744i;

    /* JADX INFO: compiled from: ViewTarget.java */
    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static Integer f8745d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f8746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<h> f8747b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ViewTreeObserverOnPreDrawListenerC0170a f8748c;

        /* JADX INFO: renamed from: i3.j$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ViewTarget.java */
        public static final class ViewTreeObserverOnPreDrawListenerC0170a implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final WeakReference<a> f8749h;

            public ViewTreeObserverOnPreDrawListenerC0170a(a aVar) {
                this.f8749h = new WeakReference<>(aVar);
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<i3.h>] */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f8749h.get();
                if (aVar == null || aVar.f8747b.isEmpty()) {
                    return true;
                }
                int iD = aVar.d();
                int iC = aVar.c();
                if (!aVar.e(iD, iC)) {
                    return true;
                }
                Iterator it = new ArrayList(aVar.f8747b).iterator();
                while (it.hasNext()) {
                    ((h) it.next()).a(iD, iC);
                }
                aVar.a();
                return true;
            }
        }

        public a(View view) {
            this.f8746a = view;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<i3.h>] */
        public final void a() {
            ViewTreeObserver viewTreeObserver = this.f8746a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f8748c);
            }
            this.f8748c = null;
            this.f8747b.clear();
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
            if (this.f8746a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            Context context = this.f8746a.getContext();
            if (f8745d == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                Objects.requireNonNull(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f8745d = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f8745d.intValue();
        }

        public final int c() {
            int paddingBottom = this.f8746a.getPaddingBottom() + this.f8746a.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.f8746a.getLayoutParams();
            return b(this.f8746a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        public final int d() {
            int paddingRight = this.f8746a.getPaddingRight() + this.f8746a.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.f8746a.getLayoutParams();
            return b(this.f8746a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        public final boolean e(int i10, int i11) {
            if (i10 > 0 || i10 == Integer.MIN_VALUE) {
                return i11 > 0 || i11 == Integer.MIN_VALUE;
            }
            return false;
        }
    }

    public j(T t10) {
        Objects.requireNonNull(t10, "Argument must not be null");
        this.f8743h = t10;
        this.f8744i = new a(t10);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<i3.h>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList, java.util.List<i3.h>] */
    @Override // i3.i
    public final void b(h hVar) {
        a aVar = this.f8744i;
        int iD = aVar.d();
        int iC = aVar.c();
        if (aVar.e(iD, iC)) {
            hVar.a(iD, iC);
            return;
        }
        if (!aVar.f8747b.contains(hVar)) {
            aVar.f8747b.add(hVar);
        }
        if (aVar.f8748c == null) {
            ViewTreeObserver viewTreeObserver = aVar.f8746a.getViewTreeObserver();
            a.ViewTreeObserverOnPreDrawListenerC0170a viewTreeObserverOnPreDrawListenerC0170a = new a.ViewTreeObserverOnPreDrawListenerC0170a(aVar);
            aVar.f8748c = viewTreeObserverOnPreDrawListenerC0170a;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0170a);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<i3.h>] */
    @Override // i3.i
    public final void c(h hVar) {
        this.f8744i.f8747b.remove(hVar);
    }

    @Override // i3.i
    public final h3.d e() {
        Object tag = this.f8743h.getTag(f8742j);
        if (tag == null) {
            return null;
        }
        if (tag instanceof h3.d) {
            return (h3.d) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // i3.i
    public final void i(h3.d dVar) {
        this.f8743h.setTag(f8742j, dVar);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Target for: ");
        sbC.append(this.f8743h);
        return sbC.toString();
    }
}
