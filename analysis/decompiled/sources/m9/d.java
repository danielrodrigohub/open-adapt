package m9;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.ColorWayActivity;
import java.util.List;
import q7.t1;

/* JADX INFO: compiled from: ColorWayActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ColorWayActivity f10844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<s9.p.a> f10845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f10847g;

    /* JADX INFO: compiled from: ColorWayActivity.kt */
    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final CardView f10848u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final TextView f10849v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final ImageView f10850w;

        public a(t1 t1Var) {
            super(t1Var.f14011a);
            CardView cardView = t1Var.f14012b;
            p4.h.i(cardView, "binding.shoeRowCardView");
            this.f10848u = cardView;
            TextView textView = t1Var.f14014d;
            p4.h.i(textView, "binding.shoeRowName");
            this.f10849v = textView;
            ImageView imageView = t1Var.f14013c;
            p4.h.i(imageView, "binding.shoeRowImage");
            this.f10850w = imageView;
        }
    }

    public d(ColorWayActivity colorWayActivity, List<s9.p.a> list, int i10) {
        p4.h.j(colorWayActivity, "activity");
        this.f10844d = colorWayActivity;
        this.f10845e = list;
        this.f10846f = i10;
        this.f10847g = "default_payload";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f10845e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        s9.p.a aVar2 = this.f10845e.get(i10);
        aVar.f10849v.setText(aVar2.f15224a);
        String str = aVar2.f15225b;
        if (aVar.f10850w.getDrawable() == null) {
            s9.p.f15222a.o(aVar.f10850w, str, 1);
        }
        m(aVar, i10);
        aVar.f10848u.setOnClickListener(new c(this, i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void i(RecyclerView.b0 b0Var, int i10, List list) {
        a aVar = (a) b0Var;
        p4.h.j(list, "payloads");
        if ((!list.isEmpty()) && p4.h.c(list.get(0), this.f10847g)) {
            aVar.f10849v.setText(this.f10845e.get(i10).f15224a);
            m(aVar, i10);
            aVar.f10848u.setOnClickListener(new c(this, i10));
        }
        h(aVar, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        return new a(t1.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void k(RecyclerView.b0 b0Var) {
        a aVar = (a) b0Var;
        p4.h.j(aVar, "holder");
        t7.b.f15557a.a().e(aVar.f10850w);
    }

    public final void m(a aVar, int i10) {
        if (i10 == this.f10846f) {
            aVar.f10849v.setVisibility(0);
            aVar.f10848u.setCardBackgroundColor(androidx.lifecycle.o.o(R.color.light_grey));
        } else {
            aVar.f10849v.setVisibility(4);
            aVar.f10848u.setCardBackgroundColor(androidx.lifecycle.o.o(R.color.white));
        }
    }
}
