package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: compiled from: MenuAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends BaseAdapter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f871h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f872i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f873j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f874k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LayoutInflater f875l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f876m;

    public d(e eVar, LayoutInflater layoutInflater, boolean z10, int i10) {
        this.f874k = z10;
        this.f875l = layoutInflater;
        this.f871h = eVar;
        this.f876m = i10;
        b();
    }

    public final void b() {
        e eVar = this.f871h;
        g gVar = eVar.f899v;
        if (gVar != null) {
            eVar.j();
            ArrayList<g> arrayList = eVar.f887j;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (arrayList.get(i10) == gVar) {
                    this.f872i = i10;
                    return;
                }
            }
        }
        this.f872i = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final g getItem(int i10) {
        ArrayList<g> arrayListM;
        if (this.f874k) {
            e eVar = this.f871h;
            eVar.j();
            arrayListM = eVar.f887j;
        } else {
            arrayListM = this.f871h.m();
        }
        int i11 = this.f872i;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return arrayListM.get(i10);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<g> arrayListM;
        if (this.f874k) {
            e eVar = this.f871h;
            eVar.j();
            arrayListM = eVar.f887j;
        } else {
            arrayListM = this.f871h.m();
        }
        return this.f872i < 0 ? arrayListM.size() : arrayListM.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        boolean z10 = false;
        if (view == null) {
            view = this.f875l.inflate(this.f876m, viewGroup, false);
        }
        int i11 = getItem(i10).f906b;
        int i12 = i10 - 1;
        int i13 = i12 >= 0 ? getItem(i12).f906b : i11;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f871h.n() && i11 != i13) {
            z10 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z10);
        j.a aVar = (j.a) view;
        if (this.f873j) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.d(getItem(i10));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
