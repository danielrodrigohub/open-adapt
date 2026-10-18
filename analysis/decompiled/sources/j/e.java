package j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: SupportActionModeWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f9092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j.a f9093b;

    /* JADX INFO: compiled from: SupportActionModeWrapper.java */
    public static class a implements j.a.InterfaceC0177a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f9094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f9095b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList<e> f9096c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final p.g<Menu, Menu> f9097d = new p.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f9095b = context;
            this.f9094a = callback;
        }

        @Override // j.a.InterfaceC0177a
        public final boolean a(j.a aVar, MenuItem menuItem) {
            return this.f9094a.onActionItemClicked(e(aVar), new k.c(this.f9095b, (c0.b) menuItem));
        }

        @Override // j.a.InterfaceC0177a
        public final boolean b(j.a aVar, Menu menu) {
            return this.f9094a.onCreateActionMode(e(aVar), f(menu));
        }

        @Override // j.a.InterfaceC0177a
        public final void c(j.a aVar) {
            this.f9094a.onDestroyActionMode(e(aVar));
        }

        @Override // j.a.InterfaceC0177a
        public final boolean d(j.a aVar, Menu menu) {
            return this.f9094a.onPrepareActionMode(e(aVar), f(menu));
        }

        public final ActionMode e(j.a aVar) {
            int size = this.f9096c.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = this.f9096c.get(i10);
                if (eVar != null && eVar.f9093b == aVar) {
                    return eVar;
                }
            }
            e eVar2 = new e(this.f9095b, aVar);
            this.f9096c.add(eVar2);
            return eVar2;
        }

        public final Menu f(Menu menu) {
            Menu orDefault = this.f9097d.getOrDefault(menu, null);
            if (orDefault != null) {
                return orDefault;
            }
            k.e eVar = new k.e(this.f9095b, (c0.a) menu);
            this.f9097d.put(menu, eVar);
            return eVar;
        }
    }

    public e(Context context, j.a aVar) {
        this.f9092a = context;
        this.f9093b = aVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f9093b.c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f9093b.d();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new k.e(this.f9092a, (c0.a) this.f9093b.e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f9093b.f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f9093b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f9093b.f9078h;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f9093b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f9093b.f9079i;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f9093b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f9093b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f9093b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f9093b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f9093b.f9078h = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f9093b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z10) {
        this.f9093b.p(z10);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i10) {
        this.f9093b.l(i10);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i10) {
        this.f9093b.n(i10);
    }
}
