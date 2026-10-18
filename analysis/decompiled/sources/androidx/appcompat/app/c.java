package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: AlertController.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AlertController f790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AlertController.b f791j;

    public c(AlertController.b bVar, AlertController.RecycleListView recycleListView, AlertController alertController) {
        this.f791j = bVar;
        this.f789h = recycleListView;
        this.f790i = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        boolean[] zArr = this.f791j.f779s;
        if (zArr != null) {
            zArr[i10] = this.f789h.isItemChecked(i10);
        }
        this.f791j.f783w.onClick(this.f790i.f733b, i10, this.f789h.isItemChecked(i10));
    }
}
