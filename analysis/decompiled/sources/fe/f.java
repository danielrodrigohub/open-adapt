package fe;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: compiled from: HandlerPoster.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f7448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f7450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7451d;

    public f(c cVar, Looper looper) {
        super(looper);
        this.f7450c = cVar;
        this.f7449b = 10;
        this.f7448a = new j();
    }

    public final void a(o oVar, Object obj) {
        i iVarA = i.a(oVar, obj);
        synchronized (this) {
            this.f7448a.a(iVarA);
            if (!this.f7451d) {
                this.f7451d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new e("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                i iVarB = this.f7448a.b();
                if (iVarB == null) {
                    synchronized (this) {
                        iVarB = this.f7448a.b();
                        if (iVarB == null) {
                            this.f7451d = false;
                            return;
                        }
                    }
                }
                this.f7450c.b(iVarB);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f7449b);
            if (!sendMessage(obtainMessage())) {
                throw new e("Could not send handler message");
            }
            this.f7451d = true;
        } catch (Throwable th) {
            this.f7451d = false;
            throw th;
        }
    }
}
