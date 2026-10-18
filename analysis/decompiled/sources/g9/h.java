package g9;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import gd.n;
import gd.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x8.j0;

/* JADX INFO: compiled from: AutoLaceAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends RecyclerView.e<RecyclerView.b0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f7882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<i> f7883e;

    /* JADX INFO: compiled from: AutoLaceAdapter.kt */
    public interface a {
        void Q(boolean z10, ea.e eVar);

        void S();
    }

    /* JADX INFO: compiled from: AutoLaceAdapter.kt */
    public static final class b extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final View f7884u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final RadioButton f7885v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final TextView f7886w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final TextView f7887x;

        public b(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.auto_lace_default_row_parent);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.au…_lace_default_row_parent)");
            this.f7884u = viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.auto_lace_default_radio);
            p4.h.i(viewFindViewById2, "row.findViewById(R.id.auto_lace_default_radio)");
            this.f7885v = (RadioButton) viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R.id.auto_lace_default_label);
            p4.h.i(viewFindViewById3, "row.findViewById(R.id.auto_lace_default_label)");
            this.f7886w = (TextView) viewFindViewById3;
            View viewFindViewById4 = view.findViewById(R.id.auto_lace_default_value);
            p4.h.i(viewFindViewById4, "row.findViewById(R.id.auto_lace_default_value)");
            this.f7887x = (TextView) viewFindViewById4;
        }
    }

    /* JADX INFO: compiled from: AutoLaceAdapter.kt */
    public static final class c extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final View f7888u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final RadioButton f7889v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final TextView f7890w;

        public c(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.auto_lace_mode_row_parent);
            p4.h.i(viewFindViewById, "row.findViewById(R.id.auto_lace_mode_row_parent)");
            this.f7888u = viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.auto_lace_mode_radio);
            p4.h.i(viewFindViewById2, "row.findViewById(R.id.auto_lace_mode_radio)");
            this.f7889v = (RadioButton) viewFindViewById2;
            View viewFindViewById3 = view.findViewById(R.id.auto_lace_mode_label);
            p4.h.i(viewFindViewById3, "row.findViewById(R.id.auto_lace_mode_label)");
            this.f7890w = (TextView) viewFindViewById3;
        }
    }

    public h(a aVar) {
        p pVar = p.f8070h;
        p4.h.j(aVar, "clickListener");
        this.f7882d = aVar;
        this.f7883e = new ArrayList();
        o(pVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g9.i>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f7883e.size();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g9.i>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int c(int i10) {
        return ((i) this.f7883e.get(i10)).f7891a;
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.ArrayList, java.util.List<g9.i>] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList, java.util.List<g9.i>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<g9.i>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, final int i10) {
        String str;
        int i11 = b0Var.f2458f;
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
            final c cVar = (c) b0Var;
            cVar.f7889v.setChecked(((i) this.f7883e.get(i10)).f7893c);
            TextView textView = cVar.f7890w;
            ea.e eVar = ((i) this.f7883e.get(i10)).f7892b;
            if (eVar == null || (str = eVar.f6628i) == null) {
                str = "";
            }
            textView.setText(str);
            cVar.f7889v.setOnClickListener(new View.OnClickListener() { // from class: g9.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h hVar = this.f7876h;
                    h.c cVar2 = cVar;
                    int i12 = i10;
                    p4.h.j(hVar, "this$0");
                    p4.h.j(cVar2, "$holder");
                    hVar.n(cVar2.f7889v, i12, false);
                }
            });
            cVar.f7888u.setOnClickListener(new View.OnClickListener() { // from class: g9.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h hVar = this.f7879h;
                    h.c cVar2 = cVar;
                    int i12 = i10;
                    p4.h.j(hVar, "this$0");
                    p4.h.j(cVar2, "$holder");
                    hVar.n(cVar2.f7889v, i12, false);
                }
            });
            return;
        }
        final b bVar = (b) b0Var;
        k kVar = k.f7894a;
        v7.b bVarA = k.a();
        bVar.f7885v.setChecked(((i) this.f7883e.get(i10)).f7893c);
        bVar.f7886w.setText(o.r(R.string.auto_lace_feature_default));
        float f10 = 5;
        bVar.f7887x.setText(Math.min((int) (((float) Math.rint(bVarA.f16363a / f10)) * f10), 100) + " / " + Math.min((int) (((float) Math.rint(bVarA.f16364b / f10)) * f10), 100));
        bVar.f7885v.setOnClickListener(new View.OnClickListener() { // from class: g9.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h hVar = this.f7873h;
                h.b bVar2 = bVar;
                int i12 = i10;
                p4.h.j(hVar, "this$0");
                p4.h.j(bVar2, "$holder");
                hVar.n(bVar2.f7885v, i12, true);
            }
        });
        bVar.f7884u.setOnClickListener(new j0(this, 3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        RecyclerView.b0 bVar;
        p4.h.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (i10 == 1) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.auto_lace_default_row, viewGroup, false);
            p4.h.i(viewInflate, "from(context).inflate(R.…fault_row, parent, false)");
            bVar = new b(viewInflate);
        } else {
            if (i10 != 2) {
                return new b(new View(context));
            }
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.auto_lace_mode_row, viewGroup, false);
            p4.h.i(viewInflate2, "from(context).inflate(R.…_mode_row, parent, false)");
            bVar = new c(viewInflate2);
        }
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g9.i>] */
    public final void m(int i10) {
        int i11 = 0;
        for (Object obj : this.f7883e) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                o.L();
                throw null;
            }
            i iVar = (i) obj;
            if (iVar.f7893c && i11 != i10) {
                iVar.f7893c = false;
                e(i11);
            }
            i11 = i12;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<g9.i>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<g9.i>] */
    public final void n(RadioButton radioButton, int i10, boolean z10) {
        radioButton.setChecked(true);
        ((i) this.f7883e.get(i10)).f7893c = true;
        m(i10);
        this.f7882d.Q(z10, ((i) this.f7883e.get(i10)).f7892b);
    }

    public final void o(List<ea.e> list) {
        p4.h.j(list, "modes");
        k kVar = k.f7894a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ ((ea.e) obj).f6629j) {
                arrayList.add(obj);
            }
        }
        List listI0 = n.i0(arrayList, new j());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new i(1, null));
        Iterator it = listI0.iterator();
        while (it.hasNext()) {
            arrayList2.add(new i(2, (ea.e) it.next()));
        }
        this.f7883e = arrayList2;
        d();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g9.i>] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.ArrayList, java.util.List<g9.i>] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.util.ArrayList, java.util.List<g9.i>] */
    public final void p(int i10, int i11) {
        boolean z10 = false;
        int i12 = 0;
        for (Object obj : this.f7883e) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                o.L();
                throw null;
            }
            i iVar = (i) obj;
            ea.e eVar = iVar.f7892b;
            if (eVar != null) {
                int i14 = eVar.f6630k.f6618h.f6648h.f6647j;
                int i15 = eVar.f6631l.f6618h.f6648h.f6647j;
                if (Math.abs(i14 - i10) <= 2 && Math.abs(i15 - i11) <= 2) {
                    iVar.f7893c = true;
                    e(i12);
                    m(i12);
                    z10 = true;
                }
            }
            i12 = i13;
        }
        if (z10) {
            return;
        }
        k kVar = k.f7894a;
        k.e(i10, i11);
        Iterator it = this.f7883e.iterator();
        int i16 = 0;
        while (it.hasNext()) {
            if (((i) it.next()).f7891a == 1) {
                ((i) this.f7883e.get(i16)).f7893c = true;
                e(i16);
                m(i16);
            }
            i16++;
        }
        i16 = -1;
        ((i) this.f7883e.get(i16)).f7893c = true;
        e(i16);
        m(i16);
    }
}
