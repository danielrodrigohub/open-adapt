package z8;

import android.content.Context;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import java.util.List;
import x8.i1;

/* JADX INFO: compiled from: LightPackAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<z8.a> f19396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f19398f;

    /* JADX INFO: compiled from: LightPackAdapter.kt */
    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final d f19399u;

        public a(d dVar) {
            super(dVar);
            this.f19399u = dVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends z8.a> list, int i10) {
        this.f19396d = list;
        this.f19397e = i10;
        this.f19398f = list.size() * ((Integer.MAX_VALUE / list.size()) / 2) * 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f19398f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        int size = (i10 % this.f19396d.size()) + 1;
        d dVar = aVar.f19399u;
        List<z8.a> list = this.f19396d;
        dVar.setLightPack(list.get(i10 % list.size()));
        z8.a lightPack = aVar.f19399u.getLightPack();
        aVar.f19399u.setContentDescription(s9.e.b(o.r(R.string.adapt_accessibility_light_pack_item_in_list_description), new Pair("lightPackName", lightPack != null ? o.r(lightPack.f19393j) : ""), new Pair("position", String.valueOf(size)), new Pair("listSize", String.valueOf(this.f19396d.size()))));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        p4.h.i(context, "parent.context");
        d dVar = new d(context);
        int i11 = this.f19397e;
        if (i11 != 0) {
            Context context2 = dVar.getContext();
            p4.h.i(context2, "context");
            ImageView imageView = dVar.f19401z.f14075a;
            p4.h.i(imageView, "binding.lightPackImage");
            i1.a(context2, imageView, i11);
            Context context3 = dVar.getContext();
            p4.h.i(context3, "context");
            TextView textView = dVar.f19401z.f14076b;
            p4.h.i(textView, "binding.lightPackTitle");
            i1.a(context3, textView, i11);
        }
        return new a(dVar);
    }
}
