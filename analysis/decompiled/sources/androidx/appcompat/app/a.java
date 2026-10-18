package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

/* JADX INFO: compiled from: AlertController.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ArrayAdapter<CharSequence> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AlertController.b f786i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(AlertController.b bVar, Context context, int i10, CharSequence[] charSequenceArr, AlertController.RecycleListView recycleListView) {
        super(context, i10, R.id.text1, charSequenceArr);
        this.f786i = bVar;
        this.f785h = recycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i10, view, viewGroup);
        boolean[] zArr = this.f786i.f779s;
        if (zArr != null && zArr[i10]) {
            this.f785h.setItemChecked(i10, true);
        }
        return view2;
    }
}
