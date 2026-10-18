package q6;

import android.widget.AutoCompleteTextView;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements AutoCompleteTextView.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.textfield.b f13650a;

    public f(com.google.android.material.textfield.b bVar) {
        this.f13650a = bVar;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public final void onDismiss() {
        com.google.android.material.textfield.b.h(this.f13650a);
        com.google.android.material.textfield.b.f(this.f13650a, false);
    }
}
