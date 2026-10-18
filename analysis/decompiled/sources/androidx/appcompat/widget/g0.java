package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.widget.TextView;

/* JADX INFO: compiled from: AppCompatTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TextView f1259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Typeface f1260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f1261j;

    public g0(TextView textView, Typeface typeface, int i10) {
        this.f1259h = textView;
        this.f1260i = typeface;
        this.f1261j = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1259h.setTypeface(this.f1260i, this.f1261j);
    }
}
