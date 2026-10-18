package n3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* JADX INFO: compiled from: AudioBecomingNoisyManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f11272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11273c;

    /* JADX INFO: compiled from: AudioBecomingNoisyManager.java */
    public final class a extends BroadcastReceiver implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final InterfaceC0213b f11274h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Handler f11275i;

        public a(Handler handler, InterfaceC0213b interfaceC0213b) {
            this.f11275i = handler;
            this.f11274h = interfaceC0213b;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f11275i.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f11273c) {
                k0.this.E0(false, -1, 3);
            }
        }
    }

    /* JADX INFO: renamed from: n3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AudioBecomingNoisyManager.java */
    public interface InterfaceC0213b {
    }

    public b(Context context, Handler handler, InterfaceC0213b interfaceC0213b) {
        this.f11271a = context.getApplicationContext();
        this.f11272b = new a(handler, interfaceC0213b);
    }

    public final void a() {
        if (this.f11273c) {
            this.f11271a.unregisterReceiver(this.f11272b);
            this.f11273c = false;
        }
    }
}
