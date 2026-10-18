package f9;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.api.PairDataRepository;
import ea.m;
import gd.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import q7.j1;
import qd.l;
import rd.o;
import s9.p;

/* JADX INFO: compiled from: MyShoesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f7092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<f> f7093e;

    /* JADX INFO: compiled from: MyShoesAdapter.kt */
    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f7094u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final TextView f7095v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final ImageView f7096w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final TextView f7097x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final TextView f7098y;

        public a(j1 j1Var) {
            super(j1Var.f13881a);
            TextView textView = j1Var.f13885e;
            p4.h.i(textView, "binding.itemMyShoesNickName");
            this.f7094u = textView;
            TextView textView2 = j1Var.f13884d;
            p4.h.i(textView2, "binding.itemMyShoesModelName");
            this.f7095v = textView2;
            ImageView imageView = j1Var.f13883c;
            p4.h.i(imageView, "binding.itemMyShoesIcon");
            this.f7096w = imageView;
            TextView textView3 = j1Var.f13882b;
            p4.h.i(textView3, "binding.itemMyShoesConnectionStatus");
            this.f7097x = textView3;
            TextView textView4 = j1Var.f13886f;
            p4.h.i(textView4, "binding.myShoesItemBadge");
            this.f7098y = textView4;
        }
    }

    /* JADX INFO: renamed from: f9.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MyShoesAdapter.kt */
    public /* synthetic */ class C0127b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f7100b;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            f7099a = iArr;
            int[] iArr2 = new int[t9.d.values().length];
            iArr2[0] = 1;
            iArr2[1] = 2;
            iArr2[2] = 3;
            f7100b = iArr2;
        }
    }

    /* JADX INFO: compiled from: MyShoesAdapter.kt */
    public static final class c extends o implements l<f, Comparable<?>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f7101h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final Comparable<?> invoke(f fVar) {
            f fVar2 = fVar;
            p4.h.j(fVar2, "it");
            return fVar2.f7108b;
        }
    }

    /* JADX INFO: compiled from: MyShoesAdapter.kt */
    public static final class d extends o implements l<f, Comparable<?>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f7102h = new d();

        public d() {
            super(1);
        }

        @Override // qd.l
        public final Comparable<?> invoke(f fVar) {
            f fVar2 = fVar;
            p4.h.j(fVar2, "it");
            return fVar2.f7109c;
        }
    }

    /* JADX INFO: compiled from: MyShoesAdapter.kt */
    public static final class e extends o implements l<f, Comparable<?>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f7103h = new e();

        public e() {
            super(1);
        }

        @Override // qd.l
        public final Comparable<?> invoke(f fVar) {
            f fVar2 = fVar;
            p4.h.j(fVar2, "it");
            return fVar2.f7107a.f6665i;
        }
    }

    public b(Context context) {
        p4.h.j(context, "context");
        this.f7092d = context;
        this.f7093e = new ArrayList();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<f9.f>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f7093e.size();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<f9.f>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        f fVar = (f) this.f7093e.get(i10);
        m mVar = fVar.f7107a;
        t9.d dVarI = g7.c.i(fVar.f7108b, fVar.f7109c);
        aVar.f7094u.setText(mVar.f6665i);
        TextView textView = aVar.f7095v;
        p pVar = p.f15222a;
        textView.setText(pVar.h(mVar.f6670n));
        aVar.f7095v.setContentDescription(pVar.g(mVar.f6670n));
        pVar.o(aVar.f7096w, mVar.f6670n, 1);
        aVar.f7097x.setText(n(dVarI));
        aVar.f7097x.setTextColor(o(dVarI));
        TextView textView2 = aVar.f7098y;
        int iB = fVar.f7110d.b();
        if (iB > 0) {
            textView2.setVisibility(0);
            textView2.setText(String.valueOf(iB));
        } else {
            textView2.setVisibility(4);
        }
        aVar.f2453a.setOnClickListener(new f9.a(dVarI, this, mVar));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList, java.util.List<f9.f>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void i(RecyclerView.b0 b0Var, int i10, List list) {
        a aVar = (a) b0Var;
        p4.h.j(list, "payloads");
        h(aVar, i10);
        for (Object obj : list) {
            p4.h.h(obj, "null cannot be cast to non-null type android.os.Bundle");
            Bundle bundle = (Bundle) obj;
            Set<String> setKeySet = bundle.keySet();
            p4.h.i(setKeySet, "diffBundle.keySet()");
            for (String str : setKeySet) {
                if (str != null) {
                    switch (str.hashCode()) {
                        case -2002975255:
                            if (str.equals("key_bundle_colorway")) {
                                p.f15222a.o(aVar.f7096w, bundle.getString(str, ""), 1);
                            }
                            break;
                        case -1017937351:
                            if (str.equals("key_bundle_left_connection")) {
                                String string = bundle.getString("key_bundle_left_connection");
                                s(aVar, ((f) this.f7093e.get(i10)).f7107a, t9.d.valueOf(string != null ? string : "DISCONNECTED"), ((f) this.f7093e.get(i10)).f7109c);
                            }
                            break;
                        case -913774797:
                            if (str.equals("key_bundle_pair_name")) {
                                aVar.f7094u.setText(bundle.getString(str, ""));
                            }
                            break;
                        case 241053587:
                            if (str.equals("key_badge_count")) {
                                TextView textView = aVar.f7098y;
                                int i11 = bundle.getInt("key_badge_count");
                                if (i11 > 0) {
                                    textView.setVisibility(0);
                                    textView.setText(String.valueOf(i11));
                                } else {
                                    textView.setVisibility(4);
                                }
                            }
                            break;
                        case 1494820126:
                            if (str.equals("key_bundle_right_connection")) {
                                String string2 = bundle.getString("key_bundle_right_connection");
                                s(aVar, ((f) this.f7093e.get(i10)).f7107a, ((f) this.f7093e.get(i10)).f7108b, t9.d.valueOf(string2 != null ? string2 : "DISCONNECTED"));
                            }
                            break;
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_my_shoes, viewGroup, false);
        int i11 = R.id.item_my_shoes_connection_status;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.item_my_shoes_connection_status);
        if (textView != null) {
            CardView cardView = (CardView) viewInflate;
            i11 = R.id.item_my_shoes_icon;
            ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.item_my_shoes_icon);
            if (imageView != null) {
                i11 = R.id.item_my_shoes_model_name;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.item_my_shoes_model_name);
                if (textView2 != null) {
                    i11 = R.id.item_my_shoes_nick_name;
                    TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.item_my_shoes_nick_name);
                    if (textView3 != null) {
                        i11 = R.id.my_shoes_item_badge;
                        TextView textView4 = (TextView) g7.b.d(viewInflate, R.id.my_shoes_item_badge);
                        if (textView4 != null) {
                            return new a(new j1(cardView, textView, imageView, textView2, textView3, textView4));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    public final void m(List<f> list) {
        androidx.recyclerview.widget.o.a(new j(list, this.f7093e)).a(this);
        ArrayList arrayList = new ArrayList();
        this.f7093e = arrayList;
        arrayList.addAll(list);
    }

    public final String n(t9.d dVar) {
        int iOrdinal = dVar.ordinal();
        if (iOrdinal == 0) {
            return androidx.lifecycle.o.r(R.string.adapt_myshoes_connection_status_connected);
        }
        if (iOrdinal == 1) {
            return androidx.lifecycle.o.r(R.string.adapt_myshoes_connection_status_connecting);
        }
        if (iOrdinal == 2) {
            return androidx.lifecycle.o.r(R.string.adapt_myshoes_connection_status_notconnected);
        }
        throw new j2.a();
    }

    public final int o(t9.d dVar) {
        return this.f7092d.getColor(C0127b.f7100b[dVar.ordinal()] == 1 ? R.color.connected_status_color : R.color.disconnected_status_color);
    }

    public final int p(List<f> list, m mVar) {
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                androidx.lifecycle.o.L();
                throw null;
            }
            if (p4.h.c(((f) obj).f7107a, mVar)) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.ArrayList, java.util.List<f9.f>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.ArrayList, java.util.List<f9.f>] */
    public final void q(List<m> list) {
        t9.d dVar;
        p4.h.j(list, "newList");
        ArrayList arrayList = new ArrayList();
        for (m mVar : list) {
            int iP = p(this.f7093e, mVar);
            t9.d dVar2 = t9.d.DISCONNECTED;
            x8.m mVar2 = new x8.m(0, 0, 0, 7, null);
            if (iP < 0 || iP > this.f7093e.size()) {
                dVar = dVar2;
            } else {
                dVar2 = ((f) this.f7093e.get(iP)).f7108b;
                dVar = ((f) this.f7093e.get(iP)).f7109c;
                mVar2 = x8.m.a(((f) this.f7093e.get(iP)).f7110d);
            }
            arrayList.add(new f(mVar, dVar2, dVar, mVar2));
        }
        k.V(arrayList, hd.a.a(c.f7101h, d.f7102h, e.f7103h));
        m(arrayList);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<f9.f>] */
    public final void r(m mVar, boolean z10) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : this.f7093e) {
            x8.m mVarA = x8.m.a(fVar.f7110d);
            if (p4.h.c(fVar.f7107a, mVar) || (mVar == null && fVar.f7108b.b() && fVar.f7109c.b())) {
                mVarA.f17930a = z10 ? 1 : 0;
                s9.b bVar = s9.b.f15177a;
                mVarA.f17931b = bVar.b(PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null)) ? 1 : 0;
                mVarA.f17932c = bVar.d(PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null)) ? 1 : 0;
            }
            arrayList.add(new f(m.a(fVar.f7107a, null, false, null, null, null, null, null, 0L, false, 8191), fVar.f7108b, fVar.f7109c, mVarA));
        }
        m(arrayList);
    }

    public final void s(a aVar, m mVar, t9.d dVar, t9.d dVar2) {
        t9.d dVarI = g7.c.i(dVar, dVar2);
        aVar.f7097x.setText(n(dVarI));
        aVar.f7097x.setTextColor(o(dVarI));
        aVar.f2453a.setOnClickListener(new f9.a(dVarI, this, mVar));
    }
}
