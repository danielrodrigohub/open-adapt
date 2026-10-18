package i3;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: PreloadTarget.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<Z> extends c<Z> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Handler f8740l = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.bumptech.glide.j f8741k;

    /* JADX INFO: compiled from: PreloadTarget.java */
    public class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            g gVar = (g) message.obj;
            gVar.f8741k.o(gVar);
            return true;
        }
    }

    public g(com.bumptech.glide.j jVar) {
        super(Integer.MIN_VALUE, Integer.MIN_VALUE);
        this.f8741k = jVar;
    }

    @Override // i3.i
    public final void f(Drawable drawable) {
    }

    @Override // i3.i
    public final void j(Object obj) {
        h3.d dVar = this.f8730j;
        if (dVar == null || !dVar.i()) {
            return;
        }
        f8740l.obtainMessage(1, this).sendToTarget();
    }
}
