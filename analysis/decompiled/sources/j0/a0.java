package j0;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap<View, g0> f9147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Field f9148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f9149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f9150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final v f9151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9152f;

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class a implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final WeakHashMap<View, Boolean> f9153h = new WeakHashMap<>();

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f9153h.entrySet()) {
                    View key = entry.getKey();
                    boolean zBooleanValue = entry.getValue().booleanValue();
                    boolean z10 = key.isShown() && key.getWindowVisibility() == 0;
                    if (zBooleanValue != z10) {
                        a0.j(key, z10 ? 16 : 32);
                        this.f9153h.put(key, Boolean.valueOf(z10));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static abstract class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class<T> f9155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9156c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f9157d;

        public b(int i10, Class<T> cls, int i11, int i12) {
            this.f9154a = i10;
            this.f9155b = cls;
            this.f9157d = i11;
            this.f9156c = i12;
        }

        public final boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        public abstract T b(View view);

        public abstract void c(View view, T t10);

        public final T d(View view) {
            if (Build.VERSION.SDK_INT >= this.f9156c) {
                return b(view);
            }
            T t10 = (T) view.getTag(this.f9154a);
            if (this.f9155b.isInstance(t10)) {
                return t10;
            }
            return null;
        }

        public final void e(View view, T t10) {
            if (Build.VERSION.SDK_INT >= this.f9156c) {
                c(view, t10);
                return;
            }
            if (f(d(view), t10)) {
                j0.a aVarE = a0.e(view);
                if (aVarE == null) {
                    aVarE = new j0.a();
                }
                a0.p(view, aVarE);
                view.setTag(this.f9154a, t10);
                a0.j(view, this.f9157d);
            }
        }

        public abstract boolean f(T t10, T t11);
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class c {
        public static boolean a(View view) {
            return view.hasOnClickListeners();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class d {
        public static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        public static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        public static int c(View view) {
            return view.getImportantForAccessibility();
        }

        public static int d(View view) {
            return view.getMinimumHeight();
        }

        public static int e(View view) {
            return view.getMinimumWidth();
        }

        public static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        public static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        public static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        public static boolean i(View view) {
            return view.hasTransientState();
        }

        public static boolean j(View view, int i10, Bundle bundle) {
            return view.performAccessibilityAction(i10, bundle);
        }

        public static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        public static void l(View view, int i10, int i11, int i12, int i13) {
            view.postInvalidateOnAnimation(i10, i11, i12, i13);
        }

        public static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void n(View view, Runnable runnable, long j10) {
            view.postOnAnimationDelayed(runnable, j10);
        }

        public static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        public static void p(View view) {
            view.requestFitSystemWindows();
        }

        public static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        public static void r(View view, boolean z10) {
            view.setHasTransientState(z10);
        }

        public static void s(View view, int i10) {
            view.setImportantForAccessibility(i10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class e {
        public static int a() {
            return View.generateViewId();
        }

        public static Display b(View view) {
            return view.getDisplay();
        }

        public static int c(View view) {
            return view.getLabelFor();
        }

        public static int d(View view) {
            return view.getLayoutDirection();
        }

        public static int e(View view) {
            return view.getPaddingEnd();
        }

        public static int f(View view) {
            return view.getPaddingStart();
        }

        public static boolean g(View view) {
            return view.isPaddingRelative();
        }

        public static void h(View view, int i10) {
            view.setLabelFor(i10);
        }

        public static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        public static void j(View view, int i10) {
            view.setLayoutDirection(i10);
        }

        public static void k(View view, int i10, int i11, int i12, int i13) {
            view.setPaddingRelative(i10, i11, i12, i13);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class f {
        public static Rect a(View view) {
            return view.getClipBounds();
        }

        public static boolean b(View view) {
            return view.isInLayout();
        }

        public static void c(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class g {
        public static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        public static boolean b(View view) {
            return view.isAttachedToWindow();
        }

        public static boolean c(View view) {
            return view.isLaidOut();
        }

        public static boolean d(View view) {
            return view.isLayoutDirectionResolved();
        }

        public static void e(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i10);
        }

        public static void f(View view, int i10) {
            view.setAccessibilityLiveRegion(i10);
        }

        public static void g(AccessibilityEvent accessibilityEvent, int i10) {
            accessibilityEvent.setContentChangeTypes(i10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class h {
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        public static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        public static void c(View view) {
            view.requestApplyInsets();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class i {

        /* JADX INFO: compiled from: ViewCompat.java */
        public class a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public l0 f9158a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ View f9159b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ j0.q f9160c;

            public a(View view, j0.q qVar) {
                this.f9159b = view;
                this.f9160c = qVar;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                l0 l0VarL = l0.l(windowInsets, view);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 30) {
                    i.a(windowInsets, this.f9159b);
                    if (l0VarL.equals(this.f9158a)) {
                        return this.f9160c.a(view, l0VarL).k();
                    }
                }
                this.f9158a = l0VarL;
                l0 l0VarA = this.f9160c.a(view, l0VarL);
                if (i10 >= 30) {
                    return l0VarA.k();
                }
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                h.c(view);
                return l0VarA.k();
            }
        }

        public static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        public static l0 b(View view, l0 l0Var, Rect rect) {
            WindowInsets windowInsetsK = l0Var.k();
            if (windowInsetsK != null) {
                return l0.l(view.computeSystemWindowInsets(windowInsetsK, rect), view);
            }
            rect.setEmpty();
            return l0Var;
        }

        public static boolean c(View view, float f10, float f11, boolean z10) {
            return view.dispatchNestedFling(f10, f11, z10);
        }

        public static boolean d(View view, float f10, float f11) {
            return view.dispatchNestedPreFling(f10, f11);
        }

        public static boolean e(View view, int i10, int i11, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
        }

        public static boolean f(View view, int i10, int i11, int i12, int i13, int[] iArr) {
            return view.dispatchNestedScroll(i10, i11, i12, i13, iArr);
        }

        public static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        public static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        public static float i(View view) {
            return view.getElevation();
        }

        public static l0 j(View view) {
            l0.e cVar;
            if (!l0.a.f9199d || !view.isAttachedToWindow()) {
                return null;
            }
            try {
                Object obj = l0.a.f9196a.get(view.getRootView());
                if (obj == null) {
                    return null;
                }
                Rect rect = (Rect) l0.a.f9197b.get(obj);
                Rect rect2 = (Rect) l0.a.f9198c.get(obj);
                if (rect == null || rect2 == null) {
                    return null;
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 30) {
                    cVar = new l0.d();
                } else {
                    cVar = i10 >= 29 ? new l0.c() : new l0.b();
                }
                cVar.c(a0.c.c(rect));
                cVar.d(a0.c.c(rect2));
                l0 l0VarB = cVar.b();
                l0VarB.j(l0VarB);
                l0VarB.a(view.getRootView());
                return l0VarB;
            } catch (IllegalAccessException e10) {
                StringBuilder sbC = a0.b.c("Failed to get insets from AttachInfo. ");
                sbC.append(e10.getMessage());
                Log.w("WindowInsetsCompat", sbC.toString(), e10);
                return null;
            }
        }

        public static String k(View view) {
            return view.getTransitionName();
        }

        public static float l(View view) {
            return view.getTranslationZ();
        }

        public static float m(View view) {
            return view.getZ();
        }

        public static boolean n(View view) {
            return view.hasNestedScrollingParent();
        }

        public static boolean o(View view) {
            return view.isImportantForAccessibility();
        }

        public static boolean p(View view) {
            return view.isNestedScrollingEnabled();
        }

        public static void q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        public static void r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        public static void s(View view, float f10) {
            view.setElevation(f10);
        }

        public static void t(View view, boolean z10) {
            view.setNestedScrollingEnabled(z10);
        }

        public static void u(View view, j0.q qVar) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, qVar);
            }
            if (qVar == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, qVar));
            }
        }

        public static void v(View view, String str) {
            view.setTransitionName(str);
        }

        public static void w(View view, float f10) {
            view.setTranslationZ(f10);
        }

        public static void x(View view, float f10) {
            view.setZ(f10);
        }

        public static boolean y(View view, int i10) {
            return view.startNestedScroll(i10);
        }

        public static void z(View view) {
            view.stopNestedScroll();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class j {
        public static l0 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            l0 l0VarL = l0.l(rootWindowInsets, null);
            l0VarL.j(l0VarL);
            l0VarL.a(view.getRootView());
            return l0VarL;
        }

        public static int b(View view) {
            return view.getScrollIndicators();
        }

        public static void c(View view, int i10) {
            view.setScrollIndicators(i10);
        }

        public static void d(View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class k {
        public static void a(View view) {
            view.cancelDragAndDrop();
        }

        public static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        public static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        public static void d(View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        public static boolean e(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i10) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i10);
        }

        public static void f(View view, View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class l {
        public static void a(View view, Collection<View> collection, int i10) {
            view.addKeyboardNavigationClusters(collection, i10);
        }

        public static int b(View view) {
            return view.getImportantForAutofill();
        }

        public static int c(View view) {
            return view.getNextClusterForwardId();
        }

        public static boolean d(View view) {
            return view.hasExplicitFocusable();
        }

        public static boolean e(View view) {
            return view.isFocusedByDefault();
        }

        public static boolean f(View view) {
            return view.isImportantForAutofill();
        }

        public static boolean g(View view) {
            return view.isKeyboardNavigationCluster();
        }

        public static View h(View view, View view2, int i10) {
            return view.keyboardNavigationClusterSearch(view2, i10);
        }

        public static boolean i(View view) {
            return view.restoreDefaultFocus();
        }

        public static void j(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        public static void k(View view, boolean z10) {
            view.setFocusedByDefault(z10);
        }

        public static void l(View view, int i10) {
            view.setImportantForAutofill(i10);
        }

        public static void m(View view, boolean z10) {
            view.setKeyboardNavigationCluster(z10);
        }

        public static void n(View view, int i10) {
            view.setNextClusterForwardId(i10);
        }

        public static void o(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class m {
        public static void a(View view, final r rVar) {
            int i10 = R.id.tag_unhandled_key_listeners;
            p.g gVar = (p.g) view.getTag(i10);
            if (gVar == null) {
                gVar = new p.g();
                view.setTag(i10, gVar);
            }
            Objects.requireNonNull(rVar);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: j0.b0
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return rVar.a();
                }
            };
            gVar.put(rVar, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        public static void e(View view, r rVar) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            p.g gVar = (p.g) view.getTag(R.id.tag_unhandled_key_listeners);
            if (gVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) gVar.getOrDefault(rVar, null)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static <T> T f(View view, int i10) {
            return (T) view.requireViewById(i10);
        }

        public static void g(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        public static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void i(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class n {
        public static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        public static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        public static void c(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }

        public static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class o {
        public static CharSequence a(View view) {
            return view.getStateDescription();
        }

        public static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static final class p {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static j0.c b(View view, j0.c cVar) {
            ContentInfo contentInfoC = cVar.f9168a.c();
            Objects.requireNonNull(contentInfoC);
            ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoC);
            if (contentInfoPerformReceiveContent == null) {
                return null;
            }
            return contentInfoPerformReceiveContent == contentInfoC ? cVar : new j0.c(new j0.c.d(contentInfoPerformReceiveContent));
        }

        public static void c(View view, String[] strArr, j0.r rVar) {
            if (rVar == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new q(rVar));
            }
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static final class q implements OnReceiveContentListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j0.r f9161a;

        public q(j0.r rVar) {
            this.f9161a = rVar;
        }

        @Override // android.view.OnReceiveContentListener
        public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            j0.c cVar = new j0.c(new j0.c.d(contentInfo));
            j0.c cVarA = this.f9161a.a(view, cVar);
            if (cVarA == null) {
                return null;
            }
            if (cVarA == cVar) {
                return contentInfo;
            }
            ContentInfo contentInfoC = cVarA.f9168a.c();
            Objects.requireNonNull(contentInfoC);
            return contentInfoC;
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public interface r {
        boolean a();
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class s {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ArrayList<WeakReference<View>> f9162d = new ArrayList<>();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakHashMap<View, Boolean> f9163a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SparseArray<WeakReference<View>> f9164b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<KeyEvent> f9165c = null;

        public final View a(View view, KeyEvent keyEvent) {
            View viewA;
            WeakHashMap<View, Boolean> weakHashMap = this.f9163a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                do {
                    childCount--;
                    if (childCount >= 0) {
                        viewA = a(viewGroup.getChildAt(childCount), keyEvent);
                    }
                } while (viewA == null);
                return viewA;
            }
            if (b(view, keyEvent)) {
                return view;
            }
            return null;
        }

        public final boolean b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((r) arrayList.get(size)).a()) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        new AtomicInteger(1);
        f9147a = null;
        f9149c = false;
        f9150d = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        f9151e = v.f9238h;
        f9152f = new a();
    }

    public static void a(View view, k0.f.a aVar) {
        j0.a aVarE = e(view);
        if (aVarE == null) {
            aVarE = new j0.a();
        }
        p(view, aVarE);
        m(aVar.a(), view);
        h(view).add(aVar);
        j(view, 0);
    }

    public static g0 b(View view) {
        if (f9147a == null) {
            f9147a = new WeakHashMap<>();
        }
        g0 g0Var = f9147a.get(view);
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(view);
        f9147a.put(view, g0Var2);
        return g0Var2;
    }

    public static l0 c(View view, l0 l0Var) {
        WindowInsets windowInsetsK = l0Var.k();
        if (windowInsetsK != null) {
            WindowInsets windowInsetsA = h.a(view, windowInsetsK);
            if (!windowInsetsA.equals(windowInsetsK)) {
                return l0.l(windowInsetsA, view);
            }
        }
        return l0Var;
    }

    public static boolean d(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = s.f9162d;
        int i10 = R.id.tag_unhandled_key_event_manager;
        s sVar = (s) view.getTag(i10);
        if (sVar == null) {
            sVar = new s();
            view.setTag(i10, sVar);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap<View, Boolean> weakHashMap = sVar.f9163a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = s.f9162d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (sVar.f9163a == null) {
                        sVar.f9163a = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = s.f9162d;
                        View view2 = arrayList3.get(size).get();
                        if (view2 == null) {
                            arrayList3.remove(size);
                        } else {
                            sVar.f9163a.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                sVar.f9163a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View viewA = sVar.a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (sVar.f9164b == null) {
                    sVar.f9164b = new SparseArray<>();
                }
                sVar.f9164b.put(keyCode, new WeakReference<>(viewA));
            }
        }
        return viewA != null;
    }

    public static j0.a e(View view) {
        View.AccessibilityDelegate accessibilityDelegateF = f(view);
        if (accessibilityDelegateF == null) {
            return null;
        }
        return accessibilityDelegateF instanceof j0.a.C0178a ? ((j0.a.C0178a) accessibilityDelegateF).f9146a : new j0.a(accessibilityDelegateF);
    }

    public static View.AccessibilityDelegate f(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return n.a(view);
        }
        if (f9149c) {
            return null;
        }
        if (f9148b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f9148b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f9149c = true;
                return null;
            }
        }
        try {
            Object obj = f9148b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f9149c = true;
            return null;
        }
    }

    public static CharSequence g(View view) {
        Object tag;
        int i10 = R.id.tag_accessibility_pane_title;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = m.b(view);
        } else {
            tag = view.getTag(i10);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static List<k0.f.a> h(View view) {
        int i10 = R.id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i10);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i10, arrayList2);
        return arrayList2;
    }

    public static String[] i(View view) {
        return Build.VERSION.SDK_INT >= 31 ? p.a(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void j(View view, int i10) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z10 = g(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (g.a(view) != 0 || z10) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z10 ? 32 : 2048);
                g.g(accessibilityEventObtain, i10);
                if (z10) {
                    accessibilityEventObtain.getText().add(g(view));
                    if (d.c(view) == 0) {
                        d.s(view, 1);
                    }
                    for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                        if (d.c((View) parent) == 4) {
                            d.s(view, 2);
                            break;
                        }
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i10 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                g.g(accessibilityEventObtain2, i10);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(g(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    g.e(view.getParent(), view, view, i10);
                } catch (AbstractMethodError e10) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e10);
                }
            }
        }
    }

    public static l0 k(View view, l0 l0Var) {
        WindowInsets windowInsetsK = l0Var.k();
        if (windowInsetsK != null) {
            WindowInsets windowInsetsB = h.b(view, windowInsetsK);
            if (!windowInsetsB.equals(windowInsetsK)) {
                return l0.l(windowInsetsB, view);
            }
        }
        return l0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static j0.c l(View view, j0.c cVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + cVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return p.b(view, cVar);
        }
        j0.r rVar = (j0.r) view.getTag(R.id.tag_on_receive_content_listener);
        if (rVar == null) {
            return (view instanceof j0.s ? (j0.s) view : f9151e).a(cVar);
        }
        j0.c cVarA = rVar.a(view, cVar);
        if (cVarA == null) {
            return null;
        }
        return (view instanceof j0.s ? (j0.s) view : f9151e).a(cVarA);
    }

    public static void m(int i10, View view) {
        List<k0.f.a> listH = h(view);
        for (int i11 = 0; i11 < listH.size(); i11++) {
            if (listH.get(i11).a() == i10) {
                listH.remove(i11);
                return;
            }
        }
    }

    public static void n(View view, k0.f.a aVar, k0.j jVar) {
        a(view, new k0.f.a(null, aVar.f9564b, null, jVar, aVar.f9565c));
    }

    public static void o(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            n.c(view, context, iArr, attributeSet, typedArray, i10, 0);
        }
    }

    public static void p(View view, j0.a aVar) {
        if (aVar == null && (f(view) instanceof j0.a.C0178a)) {
            aVar = new j0.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.f9145b);
    }

    public static void q(View view, boolean z10) {
        new z(R.id.tag_accessibility_heading).e(view, Boolean.valueOf(z10));
    }

    public static void r(View view, CharSequence charSequence) {
        new x(R.id.tag_accessibility_pane_title, CharSequence.class).e(view, charSequence);
        if (charSequence == null) {
            a aVar = f9152f;
            aVar.f9153h.remove(view);
            view.removeOnAttachStateChangeListener(aVar);
            d.o(view.getViewTreeObserver(), aVar);
            return;
        }
        a aVar2 = f9152f;
        aVar2.f9153h.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
        view.addOnAttachStateChangeListener(aVar2);
        if (g.b(view)) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(aVar2);
        }
    }
}
