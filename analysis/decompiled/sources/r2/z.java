package r2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: ResourceRecycler.java */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f14410b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: compiled from: ResourceRecycler.java */
    public static final class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((w) message.obj).c();
            return true;
        }
    }

    public final synchronized void a(w<?> wVar, boolean z10) {
        if (this.f14409a || z10) {
            this.f14410b.obtainMessage(1, wVar).sendToTarget();
        } else {
            this.f14409a = true;
            wVar.c();
            this.f14409a = false;
        }
    }
}
