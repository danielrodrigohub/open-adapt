package q6;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.r0;

/* JADX INFO: compiled from: MaterialAutoCompleteTextView.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ n f13685h;

    public m(n nVar) {
        this.f13685h = nVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        Object item;
        n nVar = this.f13685h;
        if (i10 < 0) {
            r0 r0Var = nVar.f13686l;
            item = !r0Var.c() ? null : r0Var.f1422j.getSelectedItem();
        } else {
            item = nVar.getAdapter().getItem(i10);
        }
        n.a(this.f13685h, item);
        AdapterView.OnItemClickListener onItemClickListener = this.f13685h.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i10 < 0) {
                r0 r0Var2 = this.f13685h.f13686l;
                view = !r0Var2.c() ? null : r0Var2.f1422j.getSelectedView();
                r0 r0Var3 = this.f13685h.f13686l;
                i10 = !r0Var3.c() ? -1 : r0Var3.f1422j.getSelectedItemPosition();
                r0 r0Var4 = this.f13685h.f13686l;
                j10 = !r0Var4.c() ? Long.MIN_VALUE : r0Var4.f1422j.getSelectedItemId();
            }
            onItemClickListener.onItemClick(this.f13685h.f13686l.f1422j, view, i10, j10);
        }
        this.f13685h.f13686l.dismiss();
    }
}
