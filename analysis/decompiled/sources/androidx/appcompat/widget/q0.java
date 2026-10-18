package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: ListPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
public final class q0 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ r0 f1416h;

    public q0(r0 r0Var) {
        this.f1416h = r0Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
        m0 m0Var;
        if (i10 == -1 || (m0Var = this.f1416h.f1422j) == null) {
            return;
        }
        m0Var.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
