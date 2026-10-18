package r9;

import android.view.View;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import p4.h;

/* JADX INFO: compiled from: SingleClickListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static long f14737j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View.OnClickListener f14738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14739i;

    public a(View.OnClickListener onClickListener, int i10) {
        h.j(onClickListener, "mOnClickListener");
        this.f14738h = onClickListener;
        this.f14739i = i10;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        h.j(view, TracePayload.VERSION_KEY);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f14737j > this.f14739i) {
            f14737j = jCurrentTimeMillis;
            this.f14738h.onClick(view);
        }
    }
}
