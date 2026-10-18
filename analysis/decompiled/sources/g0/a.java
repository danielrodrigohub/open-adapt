package g0;

import android.graphics.Typeface;

/* JADX INFO: compiled from: CallbackWithHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ n f7482h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Typeface f7483i;

    public a(n nVar, Typeface typeface) {
        this.f7482h = nVar;
        this.f7483i = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f7482h;
        Typeface typeface = this.f7483i;
        z.d.e eVar = ((a0.f.a) nVar).f13j;
        if (eVar != null) {
            eVar.e(typeface);
        }
    }
}
