package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5606a;

    public class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ View f5607h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f5608i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ e6.a f5609j;

        public a(View view, int i10, e6.a aVar) {
            this.f5607h = view;
            this.f5608i = i10;
            this.f5609j = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            this.f5607h.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.f5606a == this.f5608i) {
                e6.a aVar = this.f5609j;
                expandableBehavior.s((View) aVar, this.f5607h, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f5606a = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public abstract boolean b(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        int i10;
        e6.a aVar = (e6.a) view2;
        if (!(!aVar.a() ? this.f5606a != 1 : !((i10 = this.f5606a) == 0 || i10 == 2))) {
            return false;
        }
        this.f5606a = aVar.a() ? 1 : 2;
        s((View) aVar, view, aVar.a(), true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10) {
        e6.a aVar;
        int i11;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (!a0.g.c(view)) {
            ArrayList arrayList = (ArrayList) coordinatorLayout.e(view);
            int size = arrayList.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    aVar = null;
                    break;
                }
                View view2 = (View) arrayList.get(i12);
                if (b(view, view2)) {
                    aVar = (e6.a) view2;
                    break;
                }
                i12++;
            }
            if (aVar != null) {
                if (!aVar.a() ? this.f5606a != 1 : !((i11 = this.f5606a) == 0 || i11 == 2)) {
                    int i13 = aVar.a() ? 1 : 2;
                    this.f5606a = i13;
                    view.getViewTreeObserver().addOnPreDrawListener(new a(view, i13, aVar));
                }
            }
        }
        return false;
    }

    public abstract void s(View view, View view2, boolean z10, boolean z11);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5606a = 0;
    }
}
