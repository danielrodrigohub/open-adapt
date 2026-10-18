package androidx.preference;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: PreferenceViewHolder.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends RecyclerView.b0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Drawable f2355u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ColorStateList f2356v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final SparseArray<View> f2357w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2358x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2359y;

    public g(View view) {
        super(view);
        SparseArray<View> sparseArray = new SparseArray<>(4);
        this.f2357w = sparseArray;
        TextView textView = (TextView) view.findViewById(android.R.id.title);
        sparseArray.put(android.R.id.title, textView);
        sparseArray.put(android.R.id.summary, view.findViewById(android.R.id.summary));
        sparseArray.put(android.R.id.icon, view.findViewById(android.R.id.icon));
        int i10 = R.id.icon_frame;
        sparseArray.put(i10, view.findViewById(i10));
        sparseArray.put(android.R.id.icon_frame, view.findViewById(android.R.id.icon_frame));
        this.f2355u = view.getBackground();
        if (textView != null) {
            this.f2356v = textView.getTextColors();
        }
    }

    public final View A(int i10) {
        View view = this.f2357w.get(i10);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.f2453a.findViewById(i10);
        if (viewFindViewById != null) {
            this.f2357w.put(i10, viewFindViewById);
        }
        return viewFindViewById;
    }
}
