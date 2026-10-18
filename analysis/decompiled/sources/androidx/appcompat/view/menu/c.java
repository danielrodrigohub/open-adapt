package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertController;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: ListMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements i, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f862h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LayoutInflater f863i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f864j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ExpandedMenuView f865k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f866l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public i.a f867m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f868n;

    /* JADX INFO: compiled from: ListMenuPresenter.java */
    public class a extends BaseAdapter {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f869h = -1;

        public a() {
            b();
        }

        public final void b() {
            e eVar = c.this.f864j;
            g gVar = eVar.f899v;
            if (gVar != null) {
                eVar.j();
                ArrayList<g> arrayList = eVar.f887j;
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (arrayList.get(i10) == gVar) {
                        this.f869h = i10;
                        return;
                    }
                }
            }
            this.f869h = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final g getItem(int i10) {
            e eVar = c.this.f864j;
            eVar.j();
            ArrayList<g> arrayList = eVar.f887j;
            Objects.requireNonNull(c.this);
            int i11 = i10 + 0;
            int i12 = this.f869h;
            if (i12 >= 0 && i11 >= i12) {
                i11++;
            }
            return arrayList.get(i11);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            e eVar = c.this.f864j;
            eVar.j();
            int size = eVar.f887j.size();
            Objects.requireNonNull(c.this);
            int i10 = size + 0;
            return this.f869h < 0 ? i10 : i10 - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public final View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                c cVar = c.this;
                view = cVar.f863i.inflate(cVar.f866l, viewGroup, false);
            }
            ((j.a) view).d(getItem(i10));
            return view;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            b();
            super.notifyDataSetChanged();
        }
    }

    public c(Context context, int i10) {
        this.f866l = i10;
        this.f862h = context;
        this.f863i = LayoutInflater.from(context);
    }

    public final ListAdapter a() {
        if (this.f868n == null) {
            this.f868n = new a();
        }
        return this.f868n;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void b(e eVar, boolean z10) {
        i.a aVar = this.f867m;
        if (aVar != null) {
            aVar.b(eVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean d(g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void e(Context context, e eVar) {
        if (this.f862h != null) {
            this.f862h = context;
            if (this.f863i == null) {
                this.f863i = LayoutInflater.from(context);
            }
        }
        this.f864j = eVar;
        a aVar = this.f868n;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public final void f() {
        a aVar = this.f868n;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean h(l lVar) {
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        f fVar = new f(lVar);
        androidx.appcompat.app.d.a aVar = new androidx.appcompat.app.d.a(lVar.f878a);
        c cVar = new c(aVar.getContext(), R.layout.abc_list_menu_item_layout);
        fVar.f904j = cVar;
        cVar.f867m = fVar;
        fVar.f902h.b(cVar);
        ListAdapter listAdapterA = fVar.f904j.a();
        AlertController.b bVar = aVar.f793a;
        bVar.f775o = listAdapterA;
        bVar.f776p = fVar;
        View view = lVar.f892o;
        if (view != null) {
            bVar.f765e = view;
        } else {
            bVar.f763c = lVar.f891n;
            aVar.setTitle(lVar.f890m);
        }
        aVar.f793a.f773m = fVar;
        androidx.appcompat.app.d dVarCreate = aVar.create();
        fVar.f903i = dVarCreate;
        dVarCreate.setOnDismissListener(fVar);
        WindowManager.LayoutParams attributes = fVar.f903i.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        fVar.f903i.show();
        i.a aVar2 = this.f867m;
        if (aVar2 == null) {
            return true;
        }
        aVar2.c(lVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public final void j(i.a aVar) {
        this.f867m = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public final boolean k(g gVar) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        this.f864j.t(this.f868n.getItem(i10), this, 0);
    }
}
