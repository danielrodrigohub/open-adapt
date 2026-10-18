package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: AlertController.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AlertController f787h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AlertController.b f788i;

    public b(AlertController.b bVar, AlertController alertController) {
        this.f788i = bVar;
        this.f787h = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        this.f788i.f776p.onClick(this.f787h.f733b, i10);
        if (this.f788i.f781u) {
            return;
        }
        this.f787h.f733b.dismiss();
    }
}
