package e9;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.ui.view.DuoColorView;
import gd.p;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import s9.n;
import x8.j0;

/* JADX INFO: compiled from: ModesSelectionAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends RecyclerView.e<RecyclerView.b0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f6584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<n> f6585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d9.a f6587g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d9.a f6588h;

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f6589u;

        public a(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.mode_add_row_text);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.mode_add_row_text)");
            this.f6589u = (TextView) viewFindViewById;
        }
    }

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public static final class b extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f6590u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final TextView f6591v;

        public b(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.mode_control_label);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.mode_control_label)");
            this.f6590u = (TextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.mode_control_action);
            p4.h.i(viewFindViewById2, "row.findViewById(R.id.mode_control_action)");
            this.f6591v = (TextView) viewFindViewById2;
        }
    }

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public static final class c extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final CardView f6592u;

        public c(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.item_mode_find_fit_background);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.it…mode_find_fit_background)");
            this.f6592u = (CardView) viewFindViewById;
        }
    }

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public interface d {
        void B();

        void H();

        void N(ea.e eVar, boolean z10, boolean z11);

        void U();

        void l();

        void x();
    }

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public static final class e extends RecyclerView.b0 {
        public final DuoColorView A;
        public final View B;
        public final TextView C;
        public final TextView D;
        public final DuoColorView E;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final View f6593u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final View f6594v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final View f6595w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final TextView f6596x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final TextView f6597y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public final TextView f6598z;

        public e(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.item_mode_row_parent);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.item_mode_row_parent)");
            this.f6593u = viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.item_mode_background);
            p4.h.i(viewFindViewById2, "row.findViewById(R.id.item_mode_background)");
            this.f6594v = viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R.id.slide_item_mode_background);
            p4.h.i(viewFindViewById3, "row.findViewById(R.id.slide_item_mode_background)");
            this.f6595w = viewFindViewById3;
            View viewFindViewById4 = view.findViewById(R.id.item_mode_width_calculator);
            p4.h.i(viewFindViewById4, "row.findViewById(R.id.item_mode_width_calculator)");
            this.f6596x = (TextView) viewFindViewById4;
            View viewFindViewById5 = view.findViewById(R.id.item_mode_name);
            p4.h.i(viewFindViewById5, "row.findViewById(R.id.item_mode_name)");
            this.f6597y = (TextView) viewFindViewById5;
            View viewFindViewById6 = view.findViewById(R.id.item_mode_percentages);
            p4.h.i(viewFindViewById6, "row.findViewById(R.id.item_mode_percentages)");
            this.f6598z = (TextView) viewFindViewById6;
            View viewFindViewById7 = view.findViewById(R.id.item_mode_image_icon);
            p4.h.i(viewFindViewById7, "row.findViewById(R.id.item_mode_image_icon)");
            this.A = (DuoColorView) viewFindViewById7;
            View viewFindViewById8 = view.findViewById(R.id.slide_dynamic_view);
            p4.h.i(viewFindViewById8, "row.findViewById(R.id.slide_dynamic_view)");
            this.B = viewFindViewById8;
            View viewFindViewById9 = view.findViewById(R.id.slide_item_mode_name);
            p4.h.i(viewFindViewById9, "row.findViewById(R.id.slide_item_mode_name)");
            this.C = (TextView) viewFindViewById9;
            View viewFindViewById10 = view.findViewById(R.id.slide_item_mode_percentages);
            p4.h.i(viewFindViewById10, "row.findViewById(R.id.slide_item_mode_percentages)");
            this.D = (TextView) viewFindViewById10;
            View viewFindViewById11 = view.findViewById(R.id.slide_item_mode_image_icon);
            p4.h.i(viewFindViewById11, "row.findViewById(R.id.slide_item_mode_image_icon)");
            this.E = (DuoColorView) viewFindViewById11;
        }
    }

    /* JADX INFO: compiled from: ModesSelectionAdapter.kt */
    public static final class f extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final View f6599u;

        public f(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.mode_plus_row_parent);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.mode_plus_row_parent)");
            this.f6599u = viewFindViewById;
        }
    }

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class g<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(((ea.e) t10).f6632m, ((ea.e) t11).f6632m);
        }
    }

    public i(d dVar) {
        p pVar = p.f8070h;
        p4.h.j(dVar, "clickListener");
        this.f6584d = dVar;
        this.f6585e = new ArrayList();
        n(gd.n.i0(pVar, new k()));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<s9.n>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f6585e.size();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<s9.n>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int c(int i10) {
        return ((n) this.f6585e.get(i10)).f15215a;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList, java.util.List<s9.n>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, final int i10) {
        String string;
        int i11 = b0Var.f2458f;
        int i12 = 2;
        if (i11 == 0) {
            b bVar = (b) b0Var;
            bVar.f6590u.setText(o.r(R.string.adapt_presets_modes_header_title));
            bVar.f6591v.setText(o.r(R.string.adapt_presets_modes_header_label));
            bVar.f6591v.setOnClickListener(new o8.f(this, i12));
            return;
        }
        int i13 = 0;
        int i14 = 1;
        if (i11 == 1) {
            b bVar2 = (b) b0Var;
            bVar2.f6590u.setText(o.r(R.string.adapt_custom_header_label));
            bVar2.f6591v.setText(o.r(R.string.adapt_modes_edit_button_label));
            bVar2.f6591v.setOnClickListener(new e9.f(this, i13));
            return;
        }
        if (i11 != 2) {
            int i15 = 3;
            if (i11 == 3) {
                ((a) b0Var).f6589u.setOnClickListener(new j0(this, i12));
                return;
            } else if (i11 == 4) {
                ((c) b0Var).f6592u.setOnClickListener(new o8.e(this, i15));
                return;
            } else {
                if (i11 != 5) {
                    return;
                }
                ((f) b0Var).f6599u.setOnClickListener(new o8.k(this, i14));
                return;
            }
        }
        final e eVar = (e) b0Var;
        final n nVar = (n) this.f6585e.get(i10);
        final ea.e eVar2 = nVar.f15216b;
        eVar.f6593u.setOnClickListener(new View.OnClickListener() { // from class: e9.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final i iVar = this.f6575h;
                ea.e eVar3 = eVar2;
                final n nVar2 = nVar;
                final i.e eVar4 = eVar;
                final int i16 = i10;
                p4.h.j(iVar, "this$0");
                p4.h.j(nVar2, "$current");
                p4.h.j(eVar4, "$holder");
                if (!iVar.f6586f) {
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    if (inMemoryCache.getLeftDevice().getBattery().getState().isCharging() || inMemoryCache.getRightDevice().getBattery().getState().isCharging()) {
                        iVar.f6584d.B();
                        return;
                    }
                    iVar.f6584d.N(eVar3, nVar2.f15217c, eVar3 != null ? eVar3.f6629j : false);
                }
                if (nVar2.f15217c || iVar.f6586f) {
                    return;
                }
                nVar2.f15217c = true;
                new Handler().postDelayed(new Runnable() { // from class: e9.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        d9.a aVar;
                        d9.a aVar2;
                        final i iVar2 = iVar;
                        i.e eVar5 = eVar4;
                        n nVar3 = nVar2;
                        int i17 = i16;
                        p4.h.j(iVar2, "this$0");
                        p4.h.j(eVar5, "$holder");
                        p4.h.j(nVar3, "$current");
                        iVar2.f6586f = true;
                        View view2 = eVar5.f6594v;
                        final View view3 = eVar5.f6595w;
                        ea.e eVar6 = nVar3.f15216b;
                        if (eVar6 != null && (aVar = iVar2.f6587g) != null && (aVar2 = iVar2.f6588h) != null) {
                            int iAbs = Math.abs(eVar6.f6630k.f6618h.f6649i.f6646j - aVar.f6126k);
                            int iAbs2 = Math.abs(eVar6.f6631l.f6618h.f6649i.f6646j - aVar2.f6126k);
                            long j10 = iAbs > iAbs2 ? iAbs : iAbs2;
                            final ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
                            final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, view2.getWidth());
                            valueAnimatorOfInt.setDuration(j10 * 80);
                            valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
                            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e9.e
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                                    View view4 = view3;
                                    i iVar3 = iVar2;
                                    ValueAnimator valueAnimator2 = valueAnimatorOfInt;
                                    p4.h.j(view4, "$slideViewContent");
                                    p4.h.j(iVar3, "this$0");
                                    p4.h.j(valueAnimator, "it");
                                    Object animatedValue = valueAnimator.getAnimatedValue();
                                    p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                                    layoutParams2.width = ((Integer) animatedValue).intValue();
                                    view4.setLayoutParams(layoutParams2);
                                    p4.h.i(valueAnimator2, "");
                                    valueAnimator2.addListener(new j(iVar3));
                                }
                            });
                            valueAnimatorOfInt.start();
                        }
                        iVar2.m(i17);
                    }
                }, 0L);
            }
        });
        if (eVar2 != null) {
            boolean z10 = eVar2.f6629j;
            String str = eVar2.f6628i;
            p4.h.j(str, "name");
            if (z10) {
                try {
                    BigfootApplication.e eVar3 = BigfootApplication.f5638p;
                    string = eVar3.a().getString(eVar3.a().getResources().getIdentifier(str, "string", eVar3.a().getPackageName()));
                    p4.h.i(string, "{\n            BigfootApp…N.packageName))\n        }");
                } catch (Throwable unused) {
                    string = "";
                }
                str = string;
            }
            float f10 = 5;
            String str2 = Math.min((int) (((float) Math.rint(eVar2.f6630k.f6618h.f6648h.f6647j / f10)) * f10), 100) + " / " + Math.min((int) (((float) Math.rint(eVar2.f6631l.f6618h.f6648h.f6647j / f10)) * f10), 100);
            eVar.f6597y.setText(str);
            eVar.f6596x.setText(str);
            eVar.f6598z.setText(str2);
            eVar.A.setVisibility(8);
            eVar.E.setVisibility(8);
            if (!nVar.f15216b.f6629j) {
                ba.f fVar = eVar2.f6630k.f6619i.f6626l;
                ba.f fVar2 = eVar2.f6631l.f6619i.f6626l;
                if (fVar != null && fVar2 != null) {
                    AdaptMarshaller.AdaptPreset.Companion companion = AdaptMarshaller.AdaptPreset.Companion;
                    AdaptShoeColor adaptShoeColor = new AdaptShoeColor(companion.parse(fVar), companion.parse(fVar2), null, 4, null);
                    ShoeColor shoeColorValueOf = ShoeColor.Companion.valueOf(adaptShoeColor);
                    eVar.A.b(shoeColorValueOf, true, true, adaptShoeColor.isOff());
                    eVar.E.b(shoeColorValueOf, true, true, adaptShoeColor.isOff());
                    int iCeil = (int) Math.ceil(TypedValue.applyDimension(1, 14.0f, eVar.A.getContext().getResources().getDisplayMetrics()));
                    eVar.A.getLayoutParams().width = iCeil;
                    eVar.A.getLayoutParams().height = iCeil;
                    eVar.E.getLayoutParams().width = iCeil;
                    eVar.E.getLayoutParams().height = iCeil;
                    eVar.A.setVisibility(0);
                    eVar.E.setVisibility(0);
                }
            }
            eVar.D.setText(str2);
            if (nVar.f15217c) {
                eVar.f6595w.getLayoutParams().width = eVar.f6594v.getWidth();
            } else {
                eVar.f6595w.getLayoutParams().width = 0;
            }
            eVar.f6593u.getViewTreeObserver().addOnGlobalLayoutListener(new l(eVar, this));
        }
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.ArrayList, java.util.List<s9.n>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void i(RecyclerView.b0 b0Var, int i10, List<Object> list) {
        p4.h.j(list, "payloads");
        h(b0Var, i10);
        if (list.isEmpty()) {
            return;
        }
        Object obj = list.get(0);
        if (b0Var.f2458f == 2) {
            e eVar = (e) b0Var;
            if (p4.h.c(obj, "default_mode_payload")) {
                if (((n) this.f6585e.get(i10)).f15217c) {
                    eVar.f6595w.getLayoutParams().width = eVar.f6594v.getWidth();
                } else {
                    eVar.f6595w.getLayoutParams().width = 0;
                }
            }
        }
        h(b0Var, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        RecyclerView.b0 bVar;
        p4.h.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (i10 == 0 || i10 == 1) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.item_mode_control_row_layout, viewGroup, false);
            p4.h.i(viewInflate, "from(context).inflate(R.…ow_layout, parent, false)");
            bVar = new b(viewInflate);
        } else if (i10 == 2) {
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.item_mode_row_layout, viewGroup, false);
            p4.h.i(viewInflate2, "from(context).inflate(R.…ow_layout, parent, false)");
            bVar = new e(viewInflate2);
        } else if (i10 == 3) {
            View viewInflate3 = LayoutInflater.from(context).inflate(R.layout.item_mode_add_row_layout, viewGroup, false);
            p4.h.i(viewInflate3, "from(context).inflate(R.…ow_layout, parent, false)");
            bVar = new a(viewInflate3);
        } else if (i10 == 4) {
            View viewInflate4 = LayoutInflater.from(context).inflate(R.layout.item_mode_find_fit_row_layout, viewGroup, false);
            p4.h.i(viewInflate4, "from(context).inflate(R.…ow_layout, parent, false)");
            bVar = new c(viewInflate4);
        } else {
            if (i10 != 5) {
                return new b(new View(context));
            }
            View viewInflate5 = LayoutInflater.from(context).inflate(R.layout.item_mode_plus_row_layout, viewGroup, false);
            p4.h.i(viewInflate5, "from(context).inflate(R.…ow_layout, parent, false)");
            bVar = new f(viewInflate5);
        }
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<s9.n>] */
    public final void m(int i10) {
        int i11 = 0;
        for (Object obj : this.f6585e) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                o.L();
                throw null;
            }
            n nVar = (n) obj;
            if (nVar.f15215a == 2 && nVar.f15217c && i11 != i10) {
                nVar.f15217c = false;
                f(i11, "default_mode_payload");
            }
            i11 = i12;
        }
    }

    public final void n(List<ea.e> list) {
        boolean z10;
        boolean z11;
        Iterator<ea.e> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().f6629j) {
                    z10 = true;
                    break;
                }
            } else {
                z10 = false;
                break;
            }
        }
        Iterator<ea.e> it2 = list.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (!it2.next().f6629j) {
                    z11 = true;
                    break;
                }
            } else {
                z11 = false;
                break;
            }
        }
        Iterator<ea.e> it3 = list.iterator();
        int i10 = 0;
        while (it3.hasNext()) {
            if (!it3.next().f6629j) {
                i10++;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!z10 && !z11) {
            arrayList.add(new n(4, null, 6));
            arrayList.add(new n(3, null, 6));
        } else if (!z10 && z11) {
            arrayList.add(new n(4, null, 6));
            arrayList.add(new n(1, null, 6));
            Iterator<ea.e> it4 = list.iterator();
            while (it4.hasNext()) {
                arrayList.add(new n(2, it4.next(), 4));
            }
            if (i10 < 3) {
                arrayList.add(new n(5, null, 6));
            }
        } else if (!z10 || z11) {
            arrayList.add(new n(0, null, 6));
            for (ea.e eVar : list) {
                if (eVar.f6629j) {
                    arrayList.add(new n(2, eVar, 4));
                }
            }
            arrayList.add(new n(1, null, 6));
            for (ea.e eVar2 : list) {
                if (!eVar2.f6629j) {
                    arrayList.add(new n(2, eVar2, 4));
                }
            }
            if (i10 < 3) {
                arrayList.add(new n(5, null, 6));
            }
        } else {
            arrayList.add(new n(0, null, 6));
            Iterator<ea.e> it5 = list.iterator();
            while (it5.hasNext()) {
                arrayList.add(new n(2, it5.next(), 4));
            }
            arrayList.add(new n(3, null, 6));
        }
        this.f6585e = arrayList;
        d();
    }

    public final void o(List<ea.e> list, d9.a aVar, d9.a aVar2) {
        p4.h.j(list, "modes");
        n(gd.n.i0(list, new g()));
        p(aVar, aVar2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<s9.n>] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, java.util.ArrayList, java.util.List<s9.n>] */
    public final void p(d9.a aVar, d9.a aVar2) {
        if (this.f6586f) {
            return;
        }
        this.f6587g = aVar;
        this.f6588h = aVar2;
        ?? r10 = this.f6585e;
        p4.h.j(r10, "dataSet");
        Iterator it = r10.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            Object next = it.next();
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            n nVar = (n) next;
            ea.e eVar = nVar.f15216b;
            if (eVar != null) {
                ea.c cVar = eVar.f6630k;
                int i12 = cVar.f6618h.f6648h.f6647j;
                int i13 = aVar.f6125j;
                boolean z10 = i12 <= i13 + 2 && i12 >= i13 + (-2);
                ea.c cVar2 = eVar.f6631l;
                int i14 = cVar2.f6618h.f6648h.f6647j;
                int i15 = aVar2.f6125j;
                boolean z11 = i14 <= i15 + 2 && i14 >= i15 + (-2);
                boolean z12 = cVar2.f6619i.f6626l == aVar.f6124i;
                boolean z13 = cVar.f6619i.f6626l == aVar2.f6124i;
                String str = eVar.f6628i;
                Locale locale = Locale.ROOT;
                p4.h.i(locale, "ROOT");
                String lowerCase = str.toLowerCase(locale);
                p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                String lowerCase2 = n.f15214d.toLowerCase(locale);
                p4.h.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                boolean zC = p4.h.c(lowerCase, lowerCase2);
                boolean z14 = z10 && z11;
                boolean z15 = nVar.f15216b.f6629j || (z12 && z13);
                if (z14 && z15 && zC) {
                    break;
                }
            }
            i10 = i11;
        }
        if (i10 != -1) {
            ((n) this.f6585e.get(i10)).f15217c = true;
            f(i10, "default_mode_payload");
            m(i10);
        }
    }
}
