package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.Objects;

/* JADX INFO: compiled from: OrientationHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends c0 {
    public a0(RecyclerView.m mVar) {
        super(mVar);
    }

    @Override // androidx.recyclerview.widget.c0
    public final int b(View view) {
        return this.f2613a.E(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int c(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        Objects.requireNonNull(this.f2613a);
        Rect rect = ((RecyclerView.n) view.getLayoutParams()).f2509b;
        return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int d(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        Objects.requireNonNull(this.f2613a);
        Rect rect = ((RecyclerView.n) view.getLayoutParams()).f2509b;
        return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int e(View view) {
        return this.f2613a.D(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int f() {
        return this.f2613a.f2500p;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int g() {
        RecyclerView.m mVar = this.f2613a;
        return mVar.f2500p - mVar.M();
    }

    @Override // androidx.recyclerview.widget.c0
    public final int h() {
        return this.f2613a.M();
    }

    @Override // androidx.recyclerview.widget.c0
    public final int i() {
        return this.f2613a.f2498n;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int j() {
        return this.f2613a.f2499o;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int k() {
        return this.f2613a.L();
    }

    @Override // androidx.recyclerview.widget.c0
    public final int l() {
        RecyclerView.m mVar = this.f2613a;
        return (mVar.f2500p - mVar.L()) - this.f2613a.M();
    }

    @Override // androidx.recyclerview.widget.c0
    public final int n(View view) {
        this.f2613a.R(view, this.f2615c);
        return this.f2615c.right;
    }

    @Override // androidx.recyclerview.widget.c0
    public final int o(View view) {
        this.f2613a.R(view, this.f2615c);
        return this.f2615c.left;
    }

    @Override // androidx.recyclerview.widget.c0
    public final void p(int i10) {
        this.f2613a.V(i10);
    }
}
