package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.e0;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<S> extends y {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final /* synthetic */ int f5209l0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f5210b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public com.google.android.material.datepicker.d<S> f5211c0;
    public com.google.android.material.datepicker.a d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public t f5212e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5213f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public com.google.android.material.datepicker.c f5214g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public RecyclerView f5215h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public RecyclerView f5216i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public View f5217j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public View f5218k0;

    /* JADX INFO: compiled from: MaterialCalendar.java */
    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f5219h;

        public a(int i10) {
            this.f5219h = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.f5216i0.k0(this.f5219h);
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    public class b extends j0.a {
        @Override // j0.a
        public final void d(View view, k0.f fVar) {
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            fVar.p(null);
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    public class c extends z {
        public final /* synthetic */ int G;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, int i10, int i11) {
            super(context, i10);
            this.G = i11;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void K0(RecyclerView.y yVar, int[] iArr) {
            if (this.G == 0) {
                iArr[0] = g.this.f5216i0.getWidth();
                iArr[1] = g.this.f5216i0.getWidth();
            } else {
                iArr[0] = g.this.f5216i0.getHeight();
                iArr[1] = g.this.f5216i0.getHeight();
            }
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    public class d implements e {
        public d() {
        }
    }

    /* JADX INFO: compiled from: MaterialCalendar.java */
    public interface e {
    }

    @Override // androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (bundle == null) {
            bundle = this.f1971n;
        }
        this.f5210b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.f5211c0 = (com.google.android.material.datepicker.d) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.d0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f5212e0 = (t) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(l(), this.f5210b0);
        this.f5214g0 = new com.google.android.material.datepicker.c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        t tVar = this.d0.f5171h;
        if (o.u0(contextThemeWrapper)) {
            i10 = R.layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = R.layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        Resources resources = f0().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i12 = u.f5258m;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i12 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i12) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        j0.a0.p(gridView, new b());
        gridView.setAdapter((ListAdapter) new f());
        gridView.setNumColumns(tVar.f5254k);
        gridView.setEnabled(false);
        this.f5216i0 = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.f5216i0.setLayoutManager(new c(l(), i11, i11));
        this.f5216i0.setTag("MONTHS_VIEW_GROUP_TAG");
        w wVar = new w(contextThemeWrapper, this.f5211c0, this.d0, new d());
        this.f5216i0.setAdapter(wVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        int i13 = R.id.mtrl_calendar_year_selector_frame;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(i13);
        this.f5215h0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f5215h0.setLayoutManager(new GridLayoutManager(contextThemeWrapper, integer));
            this.f5215h0.setAdapter(new d0(this));
            this.f5215h0.g(new h(this));
        }
        int i14 = R.id.month_navigation_fragment_toggle;
        if (viewInflate.findViewById(i14) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(i14);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            j0.a0.p(materialButton, new i(this));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(R.id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.f5217j0 = viewInflate.findViewById(i13);
            this.f5218k0 = viewInflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            t0(1);
            materialButton.setText(this.f5212e0.w());
            this.f5216i0.h(new j(this, wVar, materialButton));
            materialButton.setOnClickListener(new k(this));
            materialButton3.setOnClickListener(new l(this, wVar));
            materialButton2.setOnClickListener(new m(this, wVar));
        }
        if (!o.u0(contextThemeWrapper)) {
            new e0().a(this.f5216i0);
        }
        this.f5216i0.h0(wVar.n(this.f5212e0));
        return viewInflate;
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f5210b0);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f5211c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f5212e0);
    }

    @Override // com.google.android.material.datepicker.y
    public final boolean p0(x<S> xVar) {
        return this.f5272a0.add(xVar);
    }

    public final LinearLayoutManager q0() {
        return (LinearLayoutManager) this.f5216i0.getLayoutManager();
    }

    public final void r0(int i10) {
        this.f5216i0.post(new a(i10));
    }

    public final void s0(t tVar) {
        w wVar = (w) this.f5216i0.getAdapter();
        int iN = wVar.n(tVar);
        int iN2 = iN - wVar.n(this.f5212e0);
        boolean z10 = Math.abs(iN2) > 3;
        boolean z11 = iN2 > 0;
        this.f5212e0 = tVar;
        if (z10 && z11) {
            this.f5216i0.h0(iN - 3);
            r0(iN);
        } else if (!z10) {
            r0(iN);
        } else {
            this.f5216i0.h0(iN + 3);
            r0(iN);
        }
    }

    public final void t0(int i10) {
        this.f5213f0 = i10;
        if (i10 == 2) {
            this.f5215h0.getLayoutManager().w0(((d0) this.f5215h0.getAdapter()).m(this.f5212e0.f5253j));
            this.f5217j0.setVisibility(0);
            this.f5218k0.setVisibility(8);
        } else if (i10 == 1) {
            this.f5217j0.setVisibility(8);
            this.f5218k0.setVisibility(0);
            s0(this.f5212e0);
        }
    }
}
