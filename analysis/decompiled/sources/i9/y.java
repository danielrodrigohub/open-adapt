package i9;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import q7.q0;
import q7.t1;
import q7.v1;
import q7.w1;
import q7.x1;
import q7.y1;
import x8.j0;

/* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y extends p8.h {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final b f8952h0 = new b();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final String f8953i0 = y.class.getSimpleName();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public q0 f8955c0;
    public o8.d d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f8956e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public s9.r f8957f0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f8954b0 = "ChooseYourShoesFragment";

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final fd.d f8958g0 = androidx.lifecycle.o.w(3, c.f8972h);

    /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
    public static final class a extends RecyclerView.e<f> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final y f8959d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List<d> f8960e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f8961f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f8962g;

        /* JADX INFO: renamed from: i9.y$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static final class C0173a extends f {
            /* JADX WARN: Illegal instructions before constructor call */
            public C0173a(x1 x1Var) {
                View view = x1Var.f14059a;
                p4.h.i(view, "binding.root");
                super(view);
            }
        }

        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static final class b extends f {

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            public final TextView f8963u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            public final TextView f8964v;

            /* JADX WARN: Illegal instructions before constructor call */
            public b(y1 y1Var) {
                ConstraintLayout constraintLayout = y1Var.f14064a;
                p4.h.i(constraintLayout, "binding.root");
                super(constraintLayout);
                TextView textView = y1Var.f14066c;
                p4.h.i(textView, "binding.chooseYourShoesTitle");
                this.f8963u = textView;
                TextView textView2 = y1Var.f14065b;
                p4.h.i(textView2, "binding.chooseYourShoesDescriptionOne");
                this.f8964v = textView2;
            }
        }

        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static final class c extends f {

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            public final CardView f8965u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            public final TextView f8966v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            public final ImageView f8967w;

            /* JADX WARN: Illegal instructions before constructor call */
            public c(t1 t1Var) {
                ConstraintLayout constraintLayout = t1Var.f14011a;
                p4.h.i(constraintLayout, "binding.root");
                super(constraintLayout);
                CardView cardView = t1Var.f14012b;
                p4.h.i(cardView, "binding.shoeRowCardView");
                this.f8965u = cardView;
                TextView textView = t1Var.f14014d;
                p4.h.i(textView, "binding.shoeRowName");
                this.f8966v = textView;
                ImageView imageView = t1Var.f14013c;
                p4.h.i(imageView, "binding.shoeRowImage");
                this.f8967w = imageView;
            }
        }

        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static final class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final s9.r f8968a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f8969b;

            public d(s9.r rVar, boolean z10) {
                this.f8968a = rVar;
                this.f8969b = z10;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return this.f8968a == dVar.f8968a && this.f8969b == dVar.f8969b;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v4, types: [int] */
            /* JADX WARN: Type inference failed for: r1v1, types: [int] */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v3 */
            public final int hashCode() {
                s9.r rVar = this.f8968a;
                int iHashCode = (rVar == null ? 0 : rVar.hashCode()) * 31;
                boolean z10 = this.f8969b;
                ?? r10 = z10;
                if (z10) {
                    r10 = 1;
                }
                return iHashCode + r10;
            }

            public final String toString() {
                return "ShoeUi(shoeType=" + this.f8968a + ", isSelected=" + this.f8969b + ")";
            }
        }

        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static final class e extends androidx.recyclerview.widget.o.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final List<d> f8970a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final List<d> f8971b;

            public e(List<d> list, List<d> list2) {
                p4.h.j(list, "oldShoeUiList");
                this.f8970a = list;
                this.f8971b = list2;
            }

            @Override // androidx.recyclerview.widget.o.b
            public final boolean a(int i10, int i11) {
                return this.f8970a.get(i10).f8969b == this.f8971b.get(i11).f8969b;
            }

            @Override // androidx.recyclerview.widget.o.b
            public final boolean b(int i10, int i11) {
                return this.f8970a.get(i10).f8968a == this.f8971b.get(i11).f8968a;
            }

            @Override // androidx.recyclerview.widget.o.b
            public final Object c(int i10, int i11) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("KEY_BUNDLE_IS_SELECTED", this.f8971b.get(i11).f8969b);
                return bundle;
            }

            @Override // androidx.recyclerview.widget.o.b
            public final int d() {
                return this.f8971b.size();
            }

            @Override // androidx.recyclerview.widget.o.b
            public final int e() {
                return this.f8970a.size();
            }
        }

        /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
        public static abstract class f extends RecyclerView.b0 {
            public f(View view) {
                super(view);
            }
        }

        public a(y yVar) {
            p4.h.j(yVar, "fragment");
            this.f8959d = yVar;
            this.f8960e = new ArrayList();
            this.f8961f = -1;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<i9.y$a$d>] */
        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final int a() {
            return this.f8960e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final int c(int i10) {
            if (i10 == 0) {
                return 0;
            }
            return i10 == a() + (-1) ? 2 : 1;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<i9.y$a$d>] */
        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final void h(RecyclerView.b0 b0Var, final int i10) {
            f fVar = (f) b0Var;
            if (i10 == 0) {
                b bVar = (b) fVar;
                bVar.f8964v.setVisibility(this.f8962g ? 0 : 8);
                j0.a0.q(bVar.f8963u, true);
            } else if (i10 < a() - 1) {
                c cVar = (c) fVar;
                s9.r rVar = ((d) this.f8960e.get(i10)).f8968a;
                s9.p pVar = s9.p.f15222a;
                pVar.o(cVar.f8967w, pVar.b(rVar), 1);
                cVar.f8966v.setText(pVar.l(rVar));
                cVar.f8966v.setContentDescription(pVar.j(rVar));
                cVar.f8965u.setCardBackgroundColor(androidx.lifecycle.o.o(i10 == this.f8961f ? R.color.light_grey : R.color.white));
                cVar.f8965u.setOnClickListener(new View.OnClickListener() { // from class: i9.x
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<i9.y$a$d>] */
                    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<i9.y$a$d>] */
                    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList, java.util.List<i9.y$a$d>] */
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        s9.r rVar2;
                        int i11 = i10;
                        y.a aVar = this;
                        p4.h.j(aVar, "this$0");
                        if (i11 == aVar.f8961f) {
                            return;
                        }
                        aVar.f8961f = i11;
                        y.a.d dVar = (y.a.d) aVar.f8960e.get(i11);
                        int i12 = 1;
                        if (dVar != null && (rVar2 = dVar.f8968a) != null) {
                            y.b bVar2 = y.f8952h0;
                            p4.h.i(view, "it");
                            int iA = bVar2.a(view);
                            int height = view.getHeight() + iA;
                            y yVar = aVar.f8959d;
                            int i13 = aVar.f8961f;
                            Objects.requireNonNull(yVar);
                            q0 q0Var = yVar.f8955c0;
                            if (q0Var == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            Button button = q0Var.f13979b.f14048b;
                            if (button.getVisibility() != 0) {
                                button.setVisibility(0);
                                float height2 = button.getHeight();
                                ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
                                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(button, "translationY", height2 + (marginLayoutParams != null ? marginLayoutParams.bottomMargin : 0), 0.0f);
                                objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                                objectAnimatorOfFloat.setDuration(25L);
                                objectAnimatorOfFloat.start();
                            }
                            z zVar = new z(yVar.l());
                            zVar.f2528a = i13;
                            if (iA < 0) {
                                zVar.f8973q = 10;
                                q0 q0Var2 = yVar.f8955c0;
                                if (q0Var2 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                RecyclerView.m layoutManager = q0Var2.f13979b.f14047a.getLayoutManager();
                                if (layoutManager != null) {
                                    layoutManager.I0(zVar);
                                }
                            } else {
                                q0 q0Var3 = yVar.f8955c0;
                                if (q0Var3 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                Button button2 = q0Var3.f13979b.f14048b;
                                p4.h.i(button2, "binding.chooseYourShoesS…rShoesSelectionNextButton");
                                if (height > bVar2.a(button2)) {
                                    q0 q0Var4 = yVar.f8955c0;
                                    if (q0Var4 == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    int i14 = -q0Var4.f13979b.f14048b.getHeight();
                                    q0 q0Var5 = yVar.f8955c0;
                                    if (q0Var5 == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    Button button3 = q0Var5.f13979b.f14048b;
                                    p4.h.i(button3, "binding.chooseYourShoesS…rShoesSelectionNextButton");
                                    ViewGroup.LayoutParams layoutParams2 = button3.getLayoutParams();
                                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                                    zVar.f8973q = i14 - (marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0);
                                    q0 q0Var6 = yVar.f8955c0;
                                    if (q0Var6 == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    RecyclerView.m layoutManager2 = q0Var6.f13979b.f14047a.getLayoutManager();
                                    if (layoutManager2 != null) {
                                        layoutManager2.I0(zVar);
                                    }
                                }
                            }
                            q0 q0Var7 = yVar.f8955c0;
                            if (q0Var7 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            q0Var7.f13979b.f14048b.setOnClickListener(new u8.k(yVar, rVar2, i12));
                        }
                        ArrayList arrayList = new ArrayList();
                        int size = aVar.f8960e.size();
                        int i15 = 0;
                        while (i15 < size) {
                            arrayList.add(new y.a.d(((y.a.d) aVar.f8960e.get(i15)).f8968a, i15 == aVar.f8961f));
                            i15++;
                        }
                        aVar.m(arrayList);
                        o7.x.f12420a.a("Choose Your Shoes - Selected: New Shoe");
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final void i(RecyclerView.b0 b0Var, int i10, List list) {
            f fVar = (f) b0Var;
            p4.h.j(list, "payloads");
            if (list.isEmpty()) {
                h(fVar, i10);
                return;
            }
            for (Object obj : list) {
                p4.h.h(obj, "null cannot be cast to non-null type android.os.Bundle");
                Bundle bundle = (Bundle) obj;
                Set<String> setKeySet = bundle.keySet();
                p4.h.i(setKeySet, "diffBundle.keySet()");
                Iterator<T> it = setKeySet.iterator();
                while (it.hasNext()) {
                    if (p4.h.c((String) it.next(), "KEY_BUNDLE_IS_SELECTED") && (fVar instanceof c)) {
                        ((c) fVar).f8965u.setCardBackgroundColor(androidx.lifecycle.o.o(bundle.getBoolean("KEY_BUNDLE_IS_SELECTED") ? R.color.light_grey : R.color.white));
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
            p4.h.j(viewGroup, "parent");
            if (i10 != 0) {
                if (i10 != 2) {
                    return new c(t1.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
                }
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_choose_your_shoes_selection_footer, viewGroup, false);
                Objects.requireNonNull(viewInflate, "rootView");
                return new C0173a(new x1(viewInflate));
            }
            View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_choose_your_shoes_selection_header, viewGroup, false);
            int i11 = R.id.choose_your_shoes_description_one;
            TextView textView = (TextView) g7.b.d(viewInflate2, R.id.choose_your_shoes_description_one);
            if (textView != null) {
                i11 = R.id.choose_your_shoes_description_two;
                if (((TextView) g7.b.d(viewInflate2, R.id.choose_your_shoes_description_two)) != null) {
                    i11 = R.id.choose_your_shoes_title;
                    TextView textView2 = (TextView) g7.b.d(viewInflate2, R.id.choose_your_shoes_title);
                    if (textView2 != null) {
                        return new b(new y1((ConstraintLayout) viewInflate2, textView, textView2));
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i11)));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final void k(RecyclerView.b0 b0Var) {
            f fVar = (f) b0Var;
            p4.h.j(fVar, "holder");
            if (!(fVar instanceof c) || this.f8959d.i() == null) {
                return;
            }
            t7.b.f15557a.a().e(((c) fVar).f8967w);
        }

        public final void m(List<d> list) {
            androidx.recyclerview.widget.o.a(new e(this.f8960e, list)).a(this);
            ArrayList arrayList = new ArrayList();
            this.f8960e = arrayList;
            arrayList.addAll(list);
        }
    }

    /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
    public static final class b {
        public final int a(View view) {
            p4.h.j(view, "view");
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int i10 = iArr[1];
            view.getRootView().findViewById(android.R.id.content).getLocationInWindow(iArr);
            return i10 - iArr[1];
        }
    }

    /* JADX INFO: compiled from: ChooseYourShoesFragment.kt */
    public static final class c extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f8972h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.fragment.app.m
    public final void E() {
        int i10 = 1;
        this.K = true;
        q0 q0Var = this.f8955c0;
        fd.o oVar = null;
        if (q0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        q0Var.f13978a.f14038b.setVisibility(8);
        q0 q0Var2 = this.f8955c0;
        if (q0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        q0Var2.f13979b.f14049c.setVisibility(8);
        q0 q0Var3 = this.f8955c0;
        if (q0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        RecyclerView recyclerView = q0Var3.f13979b.f14047a;
        i();
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        a aVar = new a(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(null);
        arrayList.add(s9.r.ADAPT_BB);
        arrayList.add(s9.r.ADAPT_NSW);
        arrayList.add(s9.r.ADAPT_BB2);
        arrayList.add(s9.r.ADAPT_AUTOMAX);
        arrayList.add(s9.r.JORDAN);
        arrayList.add(null);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new a.d((s9.r) it.next(), false));
        }
        aVar.m(arrayList2);
        q0 q0Var4 = this.f8955c0;
        if (q0Var4 == null) {
            p4.h.C("binding");
            throw null;
        }
        q0Var4.f13979b.f14047a.setAdapter(aVar);
        s9.r rVarD = s0().d();
        if (rVarD != null) {
            this.f8957f0 = rVarD;
            s9.p pVar = s9.p.f15222a;
            q0 q0Var5 = this.f8955c0;
            if (q0Var5 == null) {
                p4.h.C("binding");
                throw null;
            }
            ImageView imageView = q0Var5.f13978a.f14041e;
            p4.h.i(imageView, "binding.chooseYourShoesC….chooseYourShoesShoeImage");
            pVar.o(imageView, s0().f(), 1);
            q0 q0Var6 = this.f8955c0;
            if (q0Var6 == null) {
                p4.h.C("binding");
                throw null;
            }
            q0Var6.f13978a.f14038b.setVisibility(0);
            q0 q0Var7 = this.f8955c0;
            if (q0Var7 == null) {
                p4.h.C("binding");
                throw null;
            }
            q0Var7.f13978a.f14037a.setOnClickListener(new u8.j(this, rVarD, i10));
            q0 q0Var8 = this.f8955c0;
            if (q0Var8 == null) {
                p4.h.C("binding");
                throw null;
            }
            q0Var8.f13978a.f14040d.setOnClickListener(new j0(this, 4));
            q0 q0Var9 = this.f8955c0;
            if (q0Var9 == null) {
                p4.h.C("binding");
                throw null;
            }
            j0.a0.q(q0Var9.f13978a.f14039c, true);
            oVar = fd.o.f7408a;
        }
        if (oVar == null) {
            r0(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        fd.o oVar = null;
        if ((context instanceof o8.d ? (o8.d) context : null) != null) {
            this.d0 = (o8.d) context;
            oVar = fd.o.f7408a;
        }
        if (oVar != null) {
            return;
        }
        throw new IllegalStateException("Activity must implement " + o8.d.class);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_choose_your_shoes_onboarding, viewGroup, false);
        int i10 = R.id.choose_your_shoes_confirmation;
        View viewD = g7.b.d(viewInflate, R.id.choose_your_shoes_confirmation);
        if (viewD != null) {
            int i11 = R.id.choose_your_shoes_confirmation_next_button;
            Button button = (Button) g7.b.d(viewD, R.id.choose_your_shoes_confirmation_next_button);
            if (button != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) viewD;
                i11 = R.id.choose_your_shoes_dial_in_fit;
                TextView textView = (TextView) g7.b.d(viewD, R.id.choose_your_shoes_dial_in_fit);
                if (textView != null) {
                    i11 = R.id.choose_your_shoes_not_yours;
                    TextView textView2 = (TextView) g7.b.d(viewD, R.id.choose_your_shoes_not_yours);
                    if (textView2 != null) {
                        i11 = R.id.choose_your_shoes_shoe_image;
                        ImageView imageView = (ImageView) g7.b.d(viewD, R.id.choose_your_shoes_shoe_image);
                        if (imageView != null) {
                            v1 v1Var = new v1(button, constraintLayout, textView, textView2, imageView);
                            FrameLayout frameLayout = (FrameLayout) viewInflate;
                            View viewD2 = g7.b.d(viewInflate, R.id.choose_your_shoes_selection);
                            if (viewD2 != null) {
                                int i12 = R.id.choose_your_shoes_recycle_view;
                                RecyclerView recyclerView = (RecyclerView) g7.b.d(viewD2, R.id.choose_your_shoes_recycle_view);
                                if (recyclerView != null) {
                                    i12 = R.id.choose_your_shoes_selection_next_button;
                                    Button button2 = (Button) g7.b.d(viewD2, R.id.choose_your_shoes_selection_next_button);
                                    if (button2 != null) {
                                        this.f8955c0 = new q0(frameLayout, v1Var, new w1(recyclerView, button2, (RelativeLayout) viewD2));
                                        return frameLayout;
                                    }
                                }
                                throw new NullPointerException("Missing required view with ID: ".concat(viewD2.getResources().getResourceName(i12)));
                            }
                            i10 = R.id.choose_your_shoes_selection;
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(viewD.getResources().getResourceName(i11)));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.h
    public final String p0() {
        return this.f8954b0;
    }

    public final void q0(s9.r rVar) {
        TrackManager.INSTANCE.shoeTypeSelected(rVar);
        o8.d dVar = this.d0;
        if (dVar != null) {
            dVar.O(o8.a.PUT_SHOES_ON);
        } else {
            p4.h.C("stateListener");
            throw null;
        }
    }

    public final void r0(boolean z10) {
        q0 q0Var = this.f8955c0;
        if (q0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        RecyclerView.e adapter = q0Var.f13979b.f14047a.getAdapter();
        p4.h.h(adapter, "null cannot be cast to non-null type com.nike.adapt.ui.onboarding.ChooseYourShoesFragment.ChooseShoesAdapter");
        ((a) adapter).f8962g = z10;
        if (z10) {
            q0 q0Var2 = this.f8955c0;
            if (q0Var2 == null) {
                p4.h.C("binding");
                throw null;
            }
            q0Var2.f13979b.f14049c.setVisibility(0);
        } else {
            q0 q0Var3 = this.f8955c0;
            if (q0Var3 == null) {
                p4.h.C("binding");
                throw null;
            }
            ConstraintLayout constraintLayout = q0Var3.f13978a.f14038b;
            p4.h.i(constraintLayout, "binding.chooseYourShoesC…YourShoesConfirmationView");
            f1.b.o(constraintLayout, false, 3);
            q0 q0Var4 = this.f8955c0;
            if (q0Var4 == null) {
                p4.h.C("binding");
                throw null;
            }
            RelativeLayout relativeLayout = q0Var4.f13979b.f14049c;
            relativeLayout.setAlpha(0.0f);
            relativeLayout.setVisibility(0);
            f1.b.o(relativeLayout, true, 1);
        }
        this.f8956e0 = true;
    }

    public final h8.d s0() {
        return (h8.d) this.f8958g0.getValue();
    }
}
