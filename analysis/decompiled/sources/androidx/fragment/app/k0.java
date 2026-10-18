package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: FragmentTransitionImpl.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public abstract class k0 {

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f1936h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ArrayList f1937i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ArrayList f1938j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ ArrayList f1939k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ ArrayList f1940l;

        public a(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f1936h = i10;
            this.f1937i = arrayList;
            this.f1938j = arrayList2;
            this.f1939k = arrayList3;
            this.f1940l = arrayList4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (int i10 = 0; i10 < this.f1936h; i10++) {
                View view = (View) this.f1937i.get(i10);
                String str = (String) this.f1938j.get(i10);
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                j0.a0.i.v(view, str);
                j0.a0.i.v((View) this.f1939k.get(i10), (String) this.f1940l.get(i10));
            }
        }
    }

    public static void d(List<View> list, View view) {
        boolean z10;
        boolean z11;
        int size = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z10 = false;
                break;
            } else {
                if (list.get(i10) == view) {
                    z10 = true;
                    break;
                }
                i10++;
            }
        }
        if (z10) {
            return;
        }
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if (j0.a0.i.k(view) != null) {
            list.add(view);
        }
        for (int i11 = size; i11 < list.size(); i11++) {
            View view2 = list.get(i11);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = viewGroup.getChildAt(i12);
                    int i13 = 0;
                    while (true) {
                        if (i13 >= size) {
                            z11 = false;
                            break;
                        } else {
                            if (list.get(i13) == childAt) {
                                z11 = true;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (!z11 && j0.a0.i.k(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    public static boolean h(List list) {
        return list == null || list.isEmpty();
    }

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList<View> arrayList);

    public abstract void c(ViewGroup viewGroup, Object obj);

    public abstract boolean e(Object obj);

    public abstract Object f(Object obj);

    public final void g(View view, Rect rect) {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        if (j0.a0.g.b(view)) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            int[] iArr = new int[2];
            view.getRootView().getLocationOnScreen(iArr);
            rectF.offset(iArr[0], iArr[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract Object i(Object obj, Object obj2, Object obj3);

    public abstract Object j(Object obj, Object obj2, Object obj3);

    public final ArrayList<String> k(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = arrayList.get(i10);
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            arrayList2.add(j0.a0.i.k(view));
            j0.a0.i.v(view, null);
        }
        return arrayList2;
    }

    public abstract void l(Object obj, View view, ArrayList<View> arrayList);

    public abstract void m(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void n(Object obj, Rect rect);

    public abstract void o(Object obj, View view);

    public void p(Object obj, f0.d dVar, Runnable runnable) {
        runnable.run();
    }

    public final void q(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = arrayList.get(i10);
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            String strK = j0.a0.i.k(view2);
            arrayList4.add(strK);
            if (strK != null) {
                j0.a0.i.v(view2, null);
                String str = map.get(strK);
                for (int i11 = 0; i11 < size; i11++) {
                    if (str.equals(arrayList3.get(i11))) {
                        j0.a0.i.v(arrayList2.get(i11), strK);
                        break;
                    }
                }
            }
        }
        j0.t.a(view, new a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void r(Object obj, View view, ArrayList<View> arrayList);

    public abstract void s(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object t(Object obj);
}
