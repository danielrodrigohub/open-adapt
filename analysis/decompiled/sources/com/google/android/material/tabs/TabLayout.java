package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.j1;
import androidx.lifecycle.o;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import j0.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import n0.k;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes.dex */
@ViewPager.d
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final int f5410b0 = R.style.Widget_Design_TabLayout;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final i0.e<g> f5411c0 = new i0.g(16);
    public final int A;
    public final int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public boolean L;
    public com.google.android.material.tabs.a M;
    public c N;
    public final ArrayList<c> O;
    public j P;
    public ValueAnimator Q;
    public ViewPager R;
    public j1.a S;
    public e T;
    public h U;
    public b V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final i0.e<i> f5412a0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList<g> f5413h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f5414i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f5415j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5416k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5417l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5418m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5419n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5420o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f5421p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ColorStateList f5422q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ColorStateList f5423r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Drawable f5424s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5425t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PorterDuff.Mode f5426u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float f5427v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f5428w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f5429x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f5430y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f5431z;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public class b implements ViewPager.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f5433a;

        public b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public final void a(ViewPager viewPager, j1.a aVar) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.R == viewPager) {
                tabLayout.l(aVar, this.f5433a);
            }
        }
    }

    @Deprecated
    public interface c<T extends g> {
        void L(T t10);

        void V(T t10);

        void r(T t10);
    }

    public interface d extends c<g> {
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.j();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.j();
        }
    }

    public class f extends LinearLayout {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final /* synthetic */ int f5436l = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ValueAnimator f5437h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f5438i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f5439j;

        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ View f5441a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ View f5442b;

            public a(View view, View view2) {
                this.f5441a = view;
                this.f5442b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                f.this.c(this.f5441a, this.f5442b, valueAnimator.getAnimatedFraction());
            }
        }

        public class b extends AnimatorListenerAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f5444a;

            public b(int i10) {
                this.f5444a = i10;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                f.this.f5438i = this.f5444a;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                f.this.f5438i = this.f5444a;
            }
        }

        public f(Context context) {
            super(context);
            this.f5438i = -1;
            setWillNotDraw(false);
        }

        public final void a() {
            View childAt = getChildAt(this.f5438i);
            TabLayout tabLayout = TabLayout.this;
            com.google.android.material.tabs.a aVar = tabLayout.M;
            Drawable drawable = tabLayout.f5424s;
            Objects.requireNonNull(aVar);
            RectF rectFA = com.google.android.material.tabs.a.a(tabLayout, childAt);
            drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
        }

        public final void b(int i10) {
            Rect bounds = TabLayout.this.f5424s.getBounds();
            TabLayout.this.f5424s.setBounds(bounds.left, 0, bounds.right, i10);
            requestLayout();
        }

        public final void c(View view, View view2, float f10) {
            if (view != null && view.getWidth() > 0) {
                TabLayout tabLayout = TabLayout.this;
                tabLayout.M.b(tabLayout, view, view2, f10, tabLayout.f5424s);
            } else {
                Drawable drawable = TabLayout.this.f5424s;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f5424s.getBounds().bottom);
            }
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.k(this);
        }

        public final void d(boolean z10, int i10, int i11) {
            View childAt = getChildAt(this.f5438i);
            View childAt2 = getChildAt(i10);
            if (childAt2 == null) {
                a();
                return;
            }
            a aVar = new a(childAt, childAt2);
            if (!z10) {
                this.f5437h.removeAllUpdateListeners();
                this.f5437h.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f5437h = valueAnimator;
            valueAnimator.setInterpolator(p5.a.f13253b);
            valueAnimator.setDuration(i11);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.addListener(new b(i10));
            valueAnimator.start();
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int iHeight = TabLayout.this.f5424s.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.f5424s.getIntrinsicHeight();
            }
            int i10 = TabLayout.this.F;
            int height = 0;
            if (i10 == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i10 == 1) {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            } else if (i10 != 2) {
                iHeight = i10 != 3 ? 0 : getHeight();
            }
            if (TabLayout.this.f5424s.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f5424s.getBounds();
                TabLayout.this.f5424s.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawable = tabLayout.f5424s;
                int i11 = tabLayout.f5425t;
                if (i11 != 0) {
                    b0.a.b.g(drawable, i11);
                } else {
                    b0.a.b.h(drawable, null);
                }
                drawable.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            ValueAnimator valueAnimator = this.f5437h;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                a();
            } else {
                d(false, this.f5438i, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (View.MeasureSpec.getMode(i10) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z10 = true;
            if (tabLayout.D == 1 || tabLayout.G == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) s.a(getContext(), 16)) * 2)) {
                    boolean z11 = false;
                    for (int i13 = 0; i13 < childCount; i13++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z11 = true;
                        }
                    }
                    z10 = z11;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.D = 0;
                    tabLayout2.q(false);
                }
                if (z10) {
                    super.onMeasure(i10, i11);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i10) {
            super.onRtlPropertiesChanged(i10);
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Drawable f5446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CharSequence f5447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f5448c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f5450e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TabLayout f5451f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public i f5452g;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f5449d = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5453h = -1;

        public final boolean a() {
            TabLayout tabLayout = this.f5451f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.f5449d;
        }

        public final void b() {
            TabLayout tabLayout = this.f5451f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.k(this, true);
        }

        public final g c(CharSequence charSequence) {
            this.f5448c = charSequence;
            g();
            return this;
        }

        public final g d(int i10) {
            this.f5450e = LayoutInflater.from(this.f5452g.getContext()).inflate(i10, (ViewGroup) this.f5452g, false);
            g();
            return this;
        }

        public final g e(int i10) {
            TabLayout tabLayout = this.f5451f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            f(tabLayout.getResources().getText(i10));
            return this;
        }

        public final g f(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f5448c) && !TextUtils.isEmpty(charSequence)) {
                this.f5452g.setContentDescription(charSequence);
            }
            this.f5447b = charSequence;
            g();
            return this;
        }

        public final void g() {
            i iVar = this.f5452g;
            if (iVar != null) {
                iVar.g();
            }
        }
    }

    public static class h implements ViewPager.i {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final WeakReference<TabLayout> f5454h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f5455i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f5456j;

        public h(TabLayout tabLayout) {
            this.f5454h = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public final void D(int i10, float f10) {
            TabLayout tabLayout = this.f5454h.get();
            if (tabLayout != null) {
                int i11 = this.f5456j;
                tabLayout.m(i10, f10, i11 != 2 || this.f5455i == 1, (i11 == 2 && this.f5455i == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public final void i(int i10) {
            this.f5455i = this.f5456j;
            this.f5456j = i10;
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public final void n(int i10) {
            TabLayout tabLayout = this.f5454h.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f5456j;
            tabLayout.k(tabLayout.h(i10), i11 == 0 || (i11 == 2 && this.f5455i == 0));
        }
    }

    public final class i extends LinearLayout {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final /* synthetic */ int f5457s = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public g f5458h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f5459i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f5460j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f5461k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public r5.a f5462l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f5463m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f5464n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ImageView f5465o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public Drawable f5466p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f5467q;

        public i(Context context) {
            super(context);
            this.f5467q = 2;
            h(context);
            int i10 = TabLayout.this.f5416k;
            int i11 = TabLayout.this.f5417l;
            int i12 = TabLayout.this.f5418m;
            int i13 = TabLayout.this.f5419n;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.e.k(this, i10, i11, i12, i13);
            setGravity(17);
            setOrientation(!TabLayout.this.H ? 1 : 0);
            setClickable(true);
            a0.k.d(this, u.b(getContext(), 1002));
        }

        private r5.a getBadge() {
            return this.f5462l;
        }

        private r5.a getOrCreateBadge() {
            if (this.f5462l == null) {
                Context context = getContext();
                int i10 = r5.a.f14612v;
                int i11 = r5.a.f14611u;
                this.f5462l = new r5.a(context);
            }
            e();
            r5.a aVar = this.f5462l;
            if (aVar != null) {
                return aVar;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public final void a(boolean z10) {
            setClipChildren(z10);
            setClipToPadding(z10);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z10);
                viewGroup.setClipToPadding(z10);
            }
        }

        public final boolean b() {
            return this.f5462l != null;
        }

        public final void c(View view) {
            if (b() && view != null) {
                a(false);
                r5.a aVar = this.f5462l;
                Rect rect = new Rect();
                view.getDrawingRect(rect);
                aVar.setBounds(rect);
                aVar.f(view, null);
                if (aVar.c() != null) {
                    aVar.c().setForeground(aVar);
                } else {
                    view.getOverlay().add(aVar);
                }
                this.f5461k = view;
            }
        }

        public final void d() {
            if (b()) {
                a(true);
                View view = this.f5461k;
                if (view != null) {
                    r5.a aVar = this.f5462l;
                    if (aVar != null) {
                        if (aVar.c() != null) {
                            aVar.c().setForeground(null);
                        } else {
                            view.getOverlay().remove(aVar);
                        }
                    }
                    this.f5461k = null;
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f5466p;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.f5466p.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public final void e() {
            g gVar;
            g gVar2;
            if (b()) {
                if (this.f5463m != null) {
                    d();
                    return;
                }
                ImageView imageView = this.f5460j;
                if (imageView != null && (gVar2 = this.f5458h) != null && gVar2.f5446a != null) {
                    if (this.f5461k == imageView) {
                        f(imageView);
                        return;
                    } else {
                        d();
                        c(this.f5460j);
                        return;
                    }
                }
                if (this.f5459i == null || (gVar = this.f5458h) == null) {
                    d();
                    return;
                }
                Objects.requireNonNull(gVar);
                View view = this.f5461k;
                TextView textView = this.f5459i;
                if (view == textView) {
                    f(textView);
                } else {
                    d();
                    c(this.f5459i);
                }
            }
        }

        public final void f(View view) {
            if (b() && view == this.f5461k) {
                r5.a aVar = this.f5462l;
                Rect rect = new Rect();
                view.getDrawingRect(rect);
                aVar.setBounds(rect);
                aVar.f(view, null);
            }
        }

        public final void g() {
            g gVar = this.f5458h;
            View view = gVar != null ? gVar.f5450e : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.f5463m = view;
                TextView textView = this.f5459i;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f5460j;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f5460j.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(android.R.id.text1);
                this.f5464n = textView2;
                if (textView2 != null) {
                    this.f5467q = k.a.b(textView2);
                }
                this.f5465o = (ImageView) view.findViewById(android.R.id.icon);
            } else {
                View view2 = this.f5463m;
                if (view2 != null) {
                    removeView(view2);
                    this.f5463m = null;
                }
                this.f5464n = null;
                this.f5465o = null;
            }
            boolean z10 = false;
            if (this.f5463m == null) {
                if (this.f5460j == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.f5460j = imageView2;
                    addView(imageView2, 0);
                }
                if (this.f5459i == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f5459i = textView3;
                    addView(textView3);
                    this.f5467q = k.a.b(this.f5459i);
                }
                this.f5459i.setTextAppearance(TabLayout.this.f5420o);
                ColorStateList colorStateList = TabLayout.this.f5421p;
                if (colorStateList != null) {
                    this.f5459i.setTextColor(colorStateList);
                }
                i(this.f5459i, this.f5460j);
                e();
                ImageView imageView3 = this.f5460j;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new com.google.android.material.tabs.b(this, imageView3));
                }
                TextView textView4 = this.f5459i;
                if (textView4 != null) {
                    textView4.addOnLayoutChangeListener(new com.google.android.material.tabs.b(this, textView4));
                }
            } else {
                TextView textView5 = this.f5464n;
                if (textView5 != null || this.f5465o != null) {
                    i(textView5, this.f5465o);
                }
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.f5448c)) {
                setContentDescription(gVar.f5448c);
            }
            if (gVar != null && gVar.a()) {
                z10 = true;
            }
            setSelected(z10);
        }

        public int getContentHeight() {
            View[] viewArr = {this.f5459i, this.f5460j, this.f5463m};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z10 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f5459i, this.f5460j, this.f5463m};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z10 ? Math.max(iMax, view.getRight()) : view.getRight();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        public g getTab() {
            return this.f5458h;
        }

        public final void h(Context context) {
            GradientDrawable gradientDrawable;
            int i10 = TabLayout.this.f5429x;
            if (i10 != 0) {
                Drawable drawableB = g.a.b(context, i10);
                this.f5466p = drawableB;
                if (drawableB != null && drawableB.isStateful()) {
                    this.f5466p.setState(getDrawableState());
                }
            } else {
                this.f5466p = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (TabLayout.this.f5423r != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateList = TabLayout.this.f5423r;
                ColorStateList colorStateList2 = new ColorStateList(new int[][]{k6.a.f9727c, StateSet.NOTHING}, new int[]{k6.a.a(colorStateList, k6.a.f9726b), k6.a.a(colorStateList, k6.a.f9725a)});
                boolean z10 = TabLayout.this.L;
                if (z10) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateList2, gradientDrawable, z10 ? null : gradientDrawable3);
            }
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(this, rippleDrawable);
            TabLayout.this.invalidate();
        }

        public final void i(TextView textView, ImageView imageView) {
            Drawable drawable;
            g gVar = this.f5458h;
            Drawable drawableMutate = (gVar == null || (drawable = gVar.f5446a) == null) ? null : drawable.mutate();
            if (drawableMutate != null) {
                b0.a.b.h(drawableMutate, TabLayout.this.f5422q);
                PorterDuff.Mode mode = TabLayout.this.f5426u;
                if (mode != null) {
                    b0.a.b.i(drawableMutate, mode);
                }
            }
            g gVar2 = this.f5458h;
            CharSequence charSequence = gVar2 != null ? gVar2.f5447b : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z10 = !TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (z10) {
                    textView.setText(charSequence);
                    Objects.requireNonNull(this.f5458h);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iA = (z10 && imageView.getVisibility() == 0) ? (int) s.a(getContext(), 8) : 0;
                if (TabLayout.this.H) {
                    if (iA != j0.h.b(marginLayoutParams)) {
                        j0.h.g(marginLayoutParams, iA);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iA != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iA;
                    j0.h.g(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.f5458h;
            CharSequence charSequence2 = gVar3 != null ? gVar3.f5448c : null;
            if (!z10) {
                charSequence = charSequence2;
            }
            j1.a(this, charSequence);
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            Context context;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            r5.a aVar = this.f5462l;
            if (aVar != null && aVar.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                StringBuilder sb2 = new StringBuilder();
                sb2.append((Object) contentDescription);
                sb2.append(", ");
                r5.a aVar2 = this.f5462l;
                Object quantityString = null;
                if (aVar2.isVisible()) {
                    if (!aVar2.e()) {
                        quantityString = aVar2.f14617l.f14627b.f14638o;
                    } else if (aVar2.f14617l.f14627b.f14639p != 0 && (context = aVar2.f14613h.get()) != null) {
                        int iD = aVar2.d();
                        int i10 = aVar2.f14620o;
                        quantityString = iD <= i10 ? context.getResources().getQuantityString(aVar2.f14617l.f14627b.f14639p, aVar2.d(), Integer.valueOf(aVar2.d())) : context.getString(aVar2.f14617l.f14627b.f14640q, Integer.valueOf(i10));
                    }
                }
                sb2.append(quantityString);
                accessibilityNodeInfo.setContentDescription(sb2.toString());
            }
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) k0.f.c.a(0, 1, this.f5458h.f5449d, 1, isSelected()).f9568a);
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) k0.f.a.f9555e.f9563a);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R.string.item_view_role_description));
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0095  */
        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i10, int i11) {
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f5430y, Integer.MIN_VALUE);
            }
            super.onMeasure(i10, i11);
            if (this.f5459i != null) {
                float f10 = TabLayout.this.f5427v;
                int i12 = this.f5467q;
                ImageView imageView = this.f5460j;
                boolean z10 = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f5459i;
                    if (textView != null && textView.getLineCount() > 1) {
                        f10 = TabLayout.this.f5428w;
                    }
                } else {
                    i12 = 1;
                }
                float textSize = this.f5459i.getTextSize();
                int lineCount = this.f5459i.getLineCount();
                int iB = k.a.b(this.f5459i);
                if (f10 != textSize || (iB >= 0 && i12 != iB)) {
                    if (TabLayout.this.G == 1 && f10 > textSize && lineCount == 1) {
                        Layout layout = this.f5459i.getLayout();
                        if (layout != null) {
                            if ((f10 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                                z10 = false;
                            }
                        } else {
                            z10 = false;
                        }
                    }
                    if (z10) {
                        this.f5459i.setTextSize(0, f10);
                        this.f5459i.setMaxLines(i12);
                        super.onMeasure(i10, i11);
                    }
                }
            }
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f5458h == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f5458h.b();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            if (isSelected() != z10) {
            }
            super.setSelected(z10);
            TextView textView = this.f5459i;
            if (textView != null) {
                textView.setSelected(z10);
            }
            ImageView imageView = this.f5460j;
            if (imageView != null) {
                imageView.setSelected(z10);
            }
            View view = this.f5463m;
            if (view != null) {
                view.setSelected(z10);
            }
        }

        public void setTab(g gVar) {
            if (gVar != this.f5458h) {
                this.f5458h = gVar;
                g();
            }
        }
    }

    public static class j implements d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ViewPager f5469h;

        public j(ViewPager viewPager) {
            this.f5469h = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public final void L(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public final void V(g gVar) {
            this.f5469h.setCurrentItem(gVar.f5449d);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public final void r(g gVar) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.tabStyle;
        int i11 = f5410b0;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.f5413h = new ArrayList<>();
        this.f5424s = new GradientDrawable();
        this.f5425t = 0;
        this.f5430y = Integer.MAX_VALUE;
        this.J = -1;
        this.O = new ArrayList<>();
        this.f5412a0 = new i0.f(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        f fVar = new f(context2);
        this.f5415j = fVar;
        super.addView(fVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R.styleable.TabLayout;
        int i12 = R.styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayD = n.d(context2, attributeSet, iArr, i10, i11, i12);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            m6.f fVar2 = new m6.f();
            fVar2.o(ColorStateList.valueOf(colorDrawable.getColor()));
            fVar2.m(context2);
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            fVar2.n(a0.i.i(this));
            a0.d.q(this, fVar2);
        }
        setSelectedTabIndicator(j6.c.c(context2, typedArrayD, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayD.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        fVar.b(typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayD.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(typedArrayD.getInt(R.styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(typedArrayD.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.f5419n = dimensionPixelSize;
        this.f5418m = dimensionPixelSize;
        this.f5417l = dimensionPixelSize;
        this.f5416k = dimensionPixelSize;
        this.f5416k = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.f5417l = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.f5417l);
        this.f5418m = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.f5418m);
        this.f5419n = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.f5419n);
        int resourceId = typedArrayD.getResourceId(i12, R.style.TextAppearance_Design_Tab);
        this.f5420o = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.f5427v = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.f5421p = j6.c.a(context2, typedArrayObtainStyledAttributes, androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            int i13 = R.styleable.TabLayout_tabTextColor;
            if (typedArrayD.hasValue(i13)) {
                this.f5421p = j6.c.a(context2, typedArrayD, i13);
            }
            int i14 = R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayD.hasValue(i14)) {
                this.f5421p = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayD.getColor(i14, 0), this.f5421p.getDefaultColor()});
            }
            this.f5422q = j6.c.a(context2, typedArrayD, R.styleable.TabLayout_tabIconTint);
            this.f5426u = s.c(typedArrayD.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.f5423r = j6.c.a(context2, typedArrayD, R.styleable.TabLayout_tabRippleColor);
            this.E = typedArrayD.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, HttpStatusCodesKt.HTTP_MULT_CHOICE);
            this.f5431z = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.A = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.f5429x = typedArrayD.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.C = typedArrayD.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.G = typedArrayD.getInt(R.styleable.TabLayout_tabMode, 1);
            this.D = typedArrayD.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.H = typedArrayD.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.L = typedArrayD.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayD.recycle();
            Resources resources = getResources();
            this.f5428w = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.B = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            e();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private int getDefaultHeight() {
        int size = this.f5413h.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f5413h.get(i10);
            if (gVar != null && gVar.f5446a != null && !TextUtils.isEmpty(gVar.f5447b)) {
                z10 = true;
                break;
            }
        }
        return (!z10 || this.H) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i10 = this.f5431z;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.G;
        if (i11 == 0 || i11 == 2) {
            return this.B;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f5415j.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.f5415j.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = this.f5415j.getChildAt(i11);
                boolean z10 = true;
                childAt.setSelected(i11 == i10);
                if (i11 != i10) {
                    z10 = false;
                }
                childAt.setActivated(z10);
                i11++;
            }
        }
    }

    @Deprecated
    public final void a(c cVar) {
        if (this.O.contains(cVar)) {
            return;
        }
        this.O.add(cVar);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        c(view);
    }

    public final void b(g gVar, boolean z10) {
        int size = this.f5413h.size();
        if (gVar.f5451f != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        gVar.f5449d = size;
        this.f5413h.add(size, gVar);
        int size2 = this.f5413h.size();
        while (true) {
            size++;
            if (size >= size2) {
                break;
            } else {
                this.f5413h.get(size).f5449d = size;
            }
        }
        i iVar = gVar.f5452g;
        iVar.setSelected(false);
        iVar.setActivated(false);
        f fVar = this.f5415j;
        int i10 = gVar.f5449d;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        p(layoutParams);
        fVar.addView(iVar, i10, layoutParams);
        if (z10) {
            gVar.b();
        }
    }

    public final void c(View view) {
        if (!(view instanceof p6.c)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        p6.c cVar = (p6.c) view;
        g gVarI = i();
        Objects.requireNonNull(cVar);
        if (!TextUtils.isEmpty(cVar.getContentDescription())) {
            gVarI.c(cVar.getContentDescription());
        }
        b(gVarI, this.f5413h.isEmpty());
    }

    public final void d(int i10) {
        boolean z10;
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() != null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.g.c(this)) {
                f fVar = this.f5415j;
                int childCount = fVar.getChildCount();
                int i11 = 0;
                while (true) {
                    if (i11 >= childCount) {
                        z10 = false;
                        break;
                    } else {
                        if (fVar.getChildAt(i11).getWidth() <= 0) {
                            z10 = true;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z10) {
                    int scrollX = getScrollX();
                    int iF = f(i10, 0.0f);
                    if (scrollX != iF) {
                        g();
                        this.Q.setIntValues(scrollX, iF);
                        this.Q.start();
                    }
                    f fVar2 = this.f5415j;
                    int i12 = this.E;
                    ValueAnimator valueAnimator = fVar2.f5437h;
                    if (valueAnimator != null && valueAnimator.isRunning()) {
                        fVar2.f5437h.cancel();
                    }
                    fVar2.d(true, i10, i12);
                    return;
                }
            }
        }
        m(i10, 0.0f, true, true);
    }

    public final void e() {
        int i10 = this.G;
        int iMax = (i10 == 0 || i10 == 2) ? Math.max(0, this.C - this.f5416k) : 0;
        f fVar = this.f5415j;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.e.k(fVar, iMax, 0, 0, 0);
        int i11 = this.G;
        if (i11 == 0) {
            int i12 = this.D;
            if (i12 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i12 == 1) {
                this.f5415j.setGravity(1);
            } else if (i12 == 2) {
            }
            this.f5415j.setGravity(8388611);
        } else if (i11 == 1 || i11 == 2) {
            if (this.D == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f5415j.setGravity(1);
        }
        q(true);
    }

    public final int f(int i10, float f10) {
        View childAt;
        int i11 = this.G;
        if ((i11 != 0 && i11 != 2) || (childAt = this.f5415j.getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < this.f5415j.getChildCount() ? this.f5415j.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        return a0.e.d(this) == 0 ? left + i13 : left - i13;
    }

    public final void g() {
        if (this.Q == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.Q = valueAnimator;
            valueAnimator.setInterpolator(p5.a.f13253b);
            this.Q.setDuration(this.E);
            this.Q.addUpdateListener(new a());
        }
    }

    public int getSelectedTabPosition() {
        g gVar = this.f5414i;
        if (gVar != null) {
            return gVar.f5449d;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f5413h.size();
    }

    public int getTabGravity() {
        return this.D;
    }

    public ColorStateList getTabIconTint() {
        return this.f5422q;
    }

    public int getTabIndicatorAnimationMode() {
        return this.K;
    }

    public int getTabIndicatorGravity() {
        return this.F;
    }

    public int getTabMaxWidth() {
        return this.f5430y;
    }

    public int getTabMode() {
        return this.G;
    }

    public ColorStateList getTabRippleColor() {
        return this.f5423r;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f5424s;
    }

    public ColorStateList getTabTextColors() {
        return this.f5421p;
    }

    public final g h(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return this.f5413h.get(i10);
    }

    public final g i() {
        g gVarB = f5411c0.b();
        if (gVarB == null) {
            gVarB = new g();
        }
        gVarB.f5451f = this;
        i0.e<i> eVar = this.f5412a0;
        i iVarB = eVar != null ? eVar.b() : null;
        if (iVarB == null) {
            iVarB = new i(getContext());
        }
        iVarB.setTab(gVarB);
        iVarB.setFocusable(true);
        iVarB.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVarB.f5448c)) {
            iVarB.setContentDescription(gVarB.f5447b);
        } else {
            iVarB.setContentDescription(gVarB.f5448c);
        }
        gVarB.f5452g = iVarB;
        int i10 = gVarB.f5453h;
        if (i10 != -1) {
            iVarB.setId(i10);
        }
        return gVarB;
    }

    public final void j() {
        int currentItem;
        for (int childCount = this.f5415j.getChildCount() - 1; childCount >= 0; childCount--) {
            i iVar = (i) this.f5415j.getChildAt(childCount);
            this.f5415j.removeViewAt(childCount);
            if (iVar != null) {
                iVar.setTab(null);
                iVar.setSelected(false);
                this.f5412a0.a(iVar);
            }
            requestLayout();
        }
        Iterator<g> it = this.f5413h.iterator();
        while (it.hasNext()) {
            g next = it.next();
            it.remove();
            next.f5451f = null;
            next.f5452g = null;
            next.f5446a = null;
            next.f5453h = -1;
            next.f5447b = null;
            next.f5448c = null;
            next.f5449d = -1;
            next.f5450e = null;
            f5411c0.a(next);
        }
        this.f5414i = null;
        j1.a aVar = this.S;
        if (aVar != null) {
            aVar.c();
            for (int i10 = 0; i10 < 2; i10++) {
                g gVarI = i();
                Objects.requireNonNull(this.S);
                gVarI.f(null);
                b(gVarI, false);
            }
            ViewPager viewPager = this.R;
            if (viewPager == null || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            k(h(currentItem), true);
        }
    }

    public final void k(g gVar, boolean z10) {
        g gVar2 = this.f5414i;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                for (int size = this.O.size() - 1; size >= 0; size--) {
                    this.O.get(size).r(gVar);
                }
                d(gVar.f5449d);
                return;
            }
            return;
        }
        int i10 = gVar != null ? gVar.f5449d : -1;
        if (z10) {
            if ((gVar2 == null || gVar2.f5449d == -1) && i10 != -1) {
                m(i10, 0.0f, true, true);
            } else {
                d(i10);
            }
            if (i10 != -1) {
                setSelectedTabView(i10);
            }
        }
        this.f5414i = gVar;
        if (gVar2 != null) {
            for (int size2 = this.O.size() - 1; size2 >= 0; size2--) {
                this.O.get(size2).L(gVar2);
            }
        }
        if (gVar != null) {
            for (int size3 = this.O.size() - 1; size3 >= 0; size3--) {
                this.O.get(size3).V(gVar);
            }
        }
    }

    public final void l(j1.a aVar, boolean z10) {
        e eVar;
        j1.a aVar2 = this.S;
        if (aVar2 != null && (eVar = this.T) != null) {
            aVar2.f9239a.unregisterObserver(eVar);
        }
        this.S = aVar;
        if (z10 && aVar != null) {
            if (this.T == null) {
                this.T = new e();
            }
            aVar.f9239a.registerObserver(this.T);
        }
        j();
    }

    public final void m(int i10, float f10, boolean z10, boolean z11) {
        int iRound = Math.round(i10 + f10);
        if (iRound < 0 || iRound >= this.f5415j.getChildCount()) {
            return;
        }
        if (z11) {
            f fVar = this.f5415j;
            ValueAnimator valueAnimator = fVar.f5437h;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                fVar.f5437h.cancel();
            }
            fVar.f5438i = i10;
            fVar.f5439j = f10;
            fVar.c(fVar.getChildAt(i10), fVar.getChildAt(fVar.f5438i + 1), fVar.f5439j);
        }
        ValueAnimator valueAnimator2 = this.Q;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.Q.cancel();
        }
        scrollTo(i10 < 0 ? 0 : f(i10, f10), 0);
        if (z10) {
            setSelectedTabView(iRound);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void n(ViewPager viewPager, boolean z10) {
        List<ViewPager.h> list;
        List<ViewPager.i> list2;
        ViewPager viewPager2 = this.R;
        if (viewPager2 != null) {
            h hVar = this.U;
            if (hVar != null && (list2 = viewPager2.f2974b0) != 0) {
                list2.remove(hVar);
            }
            b bVar = this.V;
            if (bVar != null && (list = this.R.d0) != 0) {
                list.remove(bVar);
            }
        }
        j jVar = this.P;
        if (jVar != null) {
            this.O.remove(jVar);
            this.P = null;
        }
        if (viewPager != null) {
            this.R = viewPager;
            if (this.U == null) {
                this.U = new h(this);
            }
            h hVar2 = this.U;
            hVar2.f5456j = 0;
            hVar2.f5455i = 0;
            if (viewPager.f2974b0 == null) {
                viewPager.f2974b0 = new ArrayList();
            }
            viewPager.f2974b0.add(hVar2);
            j jVar2 = new j(viewPager);
            this.P = jVar2;
            a(jVar2);
            j1.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                l(adapter, true);
            }
            if (this.V == null) {
                this.V = new b();
            }
            b bVar2 = this.V;
            bVar2.f5433a = true;
            if (viewPager.d0 == null) {
                viewPager.d0 = new ArrayList();
            }
            viewPager.d0.add(bVar2);
            m(viewPager.getCurrentItem(), 0.0f, true, true);
        } else {
            this.R = null;
            l(null, false);
        }
        this.W = z10;
    }

    public final void o() {
        int size = this.f5413h.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f5413h.get(i10).g();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o.J(this);
        if (this.R == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                n((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.W) {
            setupWithViewPager(null);
            this.W = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        i iVar;
        Drawable drawable;
        for (int i10 = 0; i10 < this.f5415j.getChildCount(); i10++) {
            View childAt = this.f5415j.getChildAt(i10);
            if ((childAt instanceof i) && (drawable = (iVar = (i) childAt).f5466p) != null) {
                drawable.setBounds(iVar.getLeft(), iVar.getTop(), iVar.getRight(), iVar.getBottom());
                iVar.f5466p.draw(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) k0.f.b.a(1, getTabCount(), 1).f9567a);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iRound = Math.round(s.a(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i11);
        boolean z10 = false;
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int iA = this.A;
            if (iA <= 0) {
                iA = (int) (size - s.a(getContext(), 56));
            }
            this.f5430y = iA;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i12 = this.G;
            if (i12 == 0) {
                if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                    z10 = true;
                }
            } else if (i12 != 1) {
                if (i12 == 2) {
                    if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                        z10 = true;
                    }
                }
            } else if (childAt.getMeasuredWidth() != getMeasuredWidth()) {
                z10 = true;
            }
            if (z10) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 8) {
            if (!(getTabMode() == 0 || getTabMode() == 2)) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void p(LinearLayout.LayoutParams layoutParams) {
        if (this.G == 1 && this.D == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public final void q(boolean z10) {
        for (int i10 = 0; i10 < this.f5415j.getChildCount(); i10++) {
            View childAt = this.f5415j.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            p((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z10) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        o.I(this, f10);
    }

    public void setInlineLabel(boolean z10) {
        if (this.H != z10) {
            this.H = z10;
            for (int i10 = 0; i10 < this.f5415j.getChildCount(); i10++) {
                View childAt = this.f5415j.getChildAt(i10);
                if (childAt instanceof i) {
                    i iVar = (i) childAt;
                    iVar.setOrientation(!TabLayout.this.H ? 1 : 0);
                    TextView textView = iVar.f5464n;
                    if (textView == null && iVar.f5465o == null) {
                        iVar.i(iVar.f5459i, iVar.f5460j);
                    } else {
                        iVar.i(textView, iVar.f5465o);
                    }
                }
            }
            e();
        }
    }

    public void setInlineLabelResource(int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.Q.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f5424s != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f5424s = drawable;
            int intrinsicHeight = this.J;
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable.getIntrinsicHeight();
            }
            this.f5415j.b(intrinsicHeight);
        }
    }

    public void setSelectedTabIndicatorColor(int i10) {
        this.f5425t = i10;
        q(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.F != i10) {
            this.F = i10;
            f fVar = this.f5415j;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.k(fVar);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.J = i10;
        this.f5415j.b(i10);
    }

    public void setTabGravity(int i10) {
        if (this.D != i10) {
            this.D = i10;
            e();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f5422q != colorStateList) {
            this.f5422q = colorStateList;
            o();
        }
    }

    public void setTabIconTintResource(int i10) {
        setTabIconTint(g.a.a(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.K = i10;
        if (i10 == 0) {
            this.M = new com.google.android.material.tabs.a();
            return;
        }
        if (i10 == 1) {
            this.M = new p6.a();
        } else {
            if (i10 == 2) {
                this.M = new p6.b();
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z10) {
        this.I = z10;
        f fVar = this.f5415j;
        int i10 = f.f5436l;
        fVar.a();
        f fVar2 = this.f5415j;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.k(fVar2);
    }

    public void setTabMode(int i10) {
        if (i10 != this.G) {
            this.G = i10;
            e();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f5423r != colorStateList) {
            this.f5423r = colorStateList;
            for (int i10 = 0; i10 < this.f5415j.getChildCount(); i10++) {
                View childAt = this.f5415j.getChildAt(i10);
                if (childAt instanceof i) {
                    Context context = getContext();
                    int i11 = i.f5457s;
                    ((i) childAt).h(context);
                }
            }
        }
    }

    public void setTabRippleColorResource(int i10) {
        setTabRippleColor(g.a.a(getContext(), i10));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f5421p != colorStateList) {
            this.f5421p = colorStateList;
            o();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(j1.a aVar) {
        l(aVar, false);
    }

    public void setUnboundedRipple(boolean z10) {
        if (this.L != z10) {
            this.L = z10;
            for (int i10 = 0; i10 < this.f5415j.getChildCount(); i10++) {
                View childAt = this.f5415j.getChildAt(i10);
                if (childAt instanceof i) {
                    Context context = getContext();
                    int i11 = i.f5457s;
                    ((i) childAt).h(context);
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        n(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10) {
        c(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(c cVar) {
        c cVar2 = this.N;
        if (cVar2 != null) {
            this.O.remove(cVar2);
        }
        this.N = cVar;
        if (cVar != null) {
            a(cVar);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    public void setSelectedTabIndicator(int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(g.a.b(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
