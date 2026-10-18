package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: FragmentHostCallback.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class u<E> extends r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Activity f2036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f2037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f2038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final y f2039k;

    public u(p pVar) {
        Handler handler = new Handler();
        this.f2039k = new y();
        this.f2036h = pVar;
        c3.d.h(pVar, "context == null");
        this.f2037i = pVar;
        this.f2038j = handler;
    }

    public abstract E k();

    public abstract LayoutInflater l();

    public abstract void m();
}
