package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: MenuPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends r0 implements s0 {
    public static Method J;
    public s0 I;

    /* JADX INFO: compiled from: MenuPopupWindow.java */
    public static class a {
        public static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        public static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    /* JADX INFO: compiled from: MenuPopupWindow.java */
    public static class b {
        public static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    /* JADX INFO: compiled from: MenuPopupWindow.java */
    public static class c extends m0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final int f1451u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final int f1452v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public s0 f1453w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public androidx.appcompat.view.menu.g f1454x;

        /* JADX INFO: compiled from: MenuPopupWindow.java */
        public static class a {
            public static int a(Configuration configuration) {
                return configuration.getLayoutDirection();
            }
        }

        public c(Context context, boolean z10) {
            super(context, z10);
            if (1 == a.a(context.getResources().getConfiguration())) {
                this.f1451u = 21;
                this.f1452v = 22;
            } else {
                this.f1451u = 22;
                this.f1452v = 21;
            }
        }

        @Override // androidx.appcompat.widget.m0, android.view.View
        public final boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            androidx.appcompat.view.menu.d dVar;
            int iPointToPosition;
            int i10;
            if (this.f1453w != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    dVar = (androidx.appcompat.view.menu.d) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    dVar = (androidx.appcompat.view.menu.d) adapter;
                }
                androidx.appcompat.view.menu.g item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i10 = iPointToPosition - headersCount) >= 0 && i10 < dVar.getCount()) {
                    item = dVar.getItem(i10);
                }
                androidx.appcompat.view.menu.g gVar = this.f1454x;
                if (gVar != item) {
                    androidx.appcompat.view.menu.e eVar = dVar.f871h;
                    if (gVar != null) {
                        this.f1453w.e(eVar, gVar);
                    }
                    this.f1454x = item;
                    if (item != null) {
                        this.f1453w.b(eVar, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i10 == this.f1451u) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i10 != this.f1452v) {
                return super.onKeyDown(i10, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (androidx.appcompat.view.menu.d) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (androidx.appcompat.view.menu.d) adapter).f871h.d(false);
            return true;
        }

        public void setHoverListener(s0 s0Var) {
            this.f1453w = s0Var;
        }

        @Override // androidx.appcompat.widget.m0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                J = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public t0(Context context, int i10, int i11) {
        super(context, null, i10, i11);
    }

    @Override // androidx.appcompat.widget.s0
    public final void b(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        s0 s0Var = this.I;
        if (s0Var != null) {
            s0Var.b(eVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.s0
    public final void e(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        s0 s0Var = this.I;
        if (s0Var != null) {
            s0Var.e(eVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.r0
    public final m0 q(Context context, boolean z10) {
        c cVar = new c(context, z10);
        cVar.setHoverListener(this);
        return cVar;
    }
}
