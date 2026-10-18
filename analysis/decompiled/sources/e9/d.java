package e9;

import android.content.res.Resources;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.t;
import androidx.recyclerview.widget.t.e;
import com.nike.adapt.R;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.modes.ModeEditActivity;
import h9.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import o7.x;
import p8.p;
import q7.c1;
import x8.v;

/* JADX INFO: compiled from: ModeEditAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ModeEditActivity f6562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final t f6563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RecyclerView f6564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<ea.e> f6565g;

    /* JADX INFO: compiled from: ModeEditAdapter.kt */
    public static final class a extends RecyclerView.b0 implements e9.a.InterfaceC0119a {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f6566u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final ImageView f6567v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final ImageView f6568w;

        public a(c1 c1Var) {
            super(c1Var.f13739a);
            TextView textView = c1Var.f13742d;
            p4.h.i(textView, "binding.itemEditModeName");
            this.f6566u = textView;
            ImageView imageView = c1Var.f13741c;
            p4.h.i(imageView, "binding.itemEditModeDragHandle");
            this.f6567v = imageView;
            ImageView imageView2 = c1Var.f13740b;
            p4.h.i(imageView2, "binding.delete");
            this.f6568w = imageView2;
        }

        @Override // e9.a.InterfaceC0119a
        public final void a() {
            this.f2453a.setElevation(0.0f);
            this.f6568w.setVisibility(0);
        }

        @Override // e9.a.InterfaceC0119a
        public final void b() {
            this.f2453a.setElevation(3.0f);
            this.f2453a.startAnimation(AnimationUtils.loadAnimation(this.f2453a.getContext(), R.anim.scale_on_tap));
            this.f6568w.setVisibility(4);
        }
    }

    public d(ModeEditActivity modeEditActivity) {
        p4.h.j(modeEditActivity, "activity");
        this.f6562d = modeEditActivity;
        this.f6563e = new t(new e9.a(this));
        this.f6565g = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        List<ea.e> list = this.f6565g;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void g(RecyclerView recyclerView) {
        p4.h.j(recyclerView, "recyclerView");
        this.f6564f = recyclerView;
        t tVar = this.f6563e;
        RecyclerView recyclerView2 = tVar.f2789r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.c0(tVar);
            RecyclerView recyclerView3 = tVar.f2789r;
            t.b bVar = tVar.f2797z;
            recyclerView3.f2437x.remove(bVar);
            if (recyclerView3.f2439y == bVar) {
                recyclerView3.f2439y = null;
            }
            List<RecyclerView.o> list = tVar.f2789r.J;
            if (list != 0) {
                list.remove(tVar);
            }
            int size = tVar.f2787p.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                t.f fVar = tVar.f2787p.get(0);
                fVar.f2814g.cancel();
                tVar.f2784m.a(tVar.f2789r, fVar.f2812e);
            }
            tVar.f2787p.clear();
            tVar.f2794w = null;
            VelocityTracker velocityTracker = tVar.f2791t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                tVar.f2791t = null;
            }
            t.e eVar = tVar.f2796y;
            if (eVar != null) {
                eVar.f2806h = false;
                tVar.f2796y = null;
            }
            if (tVar.f2795x != null) {
                tVar.f2795x = null;
            }
        }
        tVar.f2789r = recyclerView;
        Resources resources = recyclerView.getResources();
        tVar.f2777f = resources.getDimension(androidx.recyclerview.R.dimen.item_touch_helper_swipe_escape_velocity);
        tVar.f2778g = resources.getDimension(androidx.recyclerview.R.dimen.item_touch_helper_swipe_escape_max_velocity);
        tVar.f2788q = ViewConfiguration.get(tVar.f2789r.getContext()).getScaledTouchSlop();
        tVar.f2789r.g(tVar);
        tVar.f2789r.f2437x.add(tVar.f2797z);
        RecyclerView recyclerView4 = tVar.f2789r;
        if (recyclerView4.J == null) {
            recyclerView4.J = new ArrayList();
        }
        recyclerView4.J.add(tVar);
        tVar.f2796y = tVar.new e();
        tVar.f2795x = new j0.e(tVar.f2789r.getContext(), tVar.f2796y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        String str;
        final a aVar = (a) b0Var;
        List<ea.e> list = this.f6565g;
        final ea.e eVar = list != null ? list.get(aVar.h()) : null;
        aVar.f6566u.setText(eVar != null ? eVar.f6628i : null);
        aVar.f6566u.setOnClickListener(new View.OnClickListener() { // from class: e9.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ea.e eVar2 = eVar;
                d dVar = this;
                p4.h.j(dVar, "this$0");
                x.f12420a.a("Pressed: Mode Edit Rename");
                new z(eVar2 != null ? eVar2.f6627h : null, eVar2 != null ? eVar2.f6628i : null).e(dVar.f6562d);
            }
        });
        aVar.f6567v.setOnTouchListener(new v(aVar, this, 1));
        aVar.f6568w.setOnClickListener(new View.OnClickListener() { // from class: e9.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d dVar = this.f6558h;
                d.a aVar2 = aVar;
                p4.h.j(dVar, "this$0");
                p4.h.j(aVar2, "$holder");
                dVar.m(aVar2.h());
            }
        });
        if (eVar == null || (str = eVar.f6628i) == null) {
            return;
        }
        aVar.f6568w.setContentDescription(s9.e.b(o.r(R.string.adapt_accessibility_remove_mode), new Pair("mode", str)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_edit_mode, viewGroup, false);
        int i11 = R.id.delete;
        ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.delete);
        if (imageView != null) {
            i11 = R.id.item_edit_mode_drag_handle;
            ImageView imageView2 = (ImageView) g7.b.d(viewInflate, R.id.item_edit_mode_drag_handle);
            if (imageView2 != null) {
                i11 = R.id.item_edit_mode_name;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.item_edit_mode_name);
                if (textView != null) {
                    return new a(new c1((ConstraintLayout) viewInflate, imageView, imageView2, textView));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    public final void m(int i10) {
        if (i10 == -1) {
            return;
        }
        List<ea.e> list = this.f6565g;
        ea.e eVarRemove = list != null ? list.remove(i10) : null;
        this.f2473a.f(i10, 1);
        ArrayList arrayList = new ArrayList();
        List<ea.e> list2 = this.f6565g;
        if (list2 != null) {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((ea.e) it.next()).f6628i);
            }
        }
        List<ea.e> list3 = this.f6565g;
        if (list3 != null) {
            int size = list3.size();
            TrackManager trackManager = TrackManager.INSTANCE;
            Object[] array = arrayList.toArray(new String[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            trackManager.isModeDeleted(size, (String[]) array);
        }
        x.f12420a.a("Pressed : Mode Deleted");
        if (this.f6565g == null || eVarRemove == null) {
            return;
        }
        ModeEditActivity modeEditActivity = this.f6562d;
        Objects.requireNonNull(modeEditActivity);
        IDeviceController iDeviceController = modeEditActivity.J;
        if (iDeviceController != null) {
            iDeviceController.requestModeTo(new p(eVarRemove));
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    public final void n(List<ea.e> list) {
        this.f6565g = list;
        d();
    }
}
