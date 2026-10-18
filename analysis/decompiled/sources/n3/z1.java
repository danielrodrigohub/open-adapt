package n3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: compiled from: StreamVolumeManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f11848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f11849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AudioManager f11850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f11851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11853g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11854h;

    /* JADX INFO: compiled from: StreamVolumeManager.java */
    public interface a {
    }

    /* JADX INFO: compiled from: StreamVolumeManager.java */
    public final class b extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f11855b = 0;

        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            z1 z1Var = z1.this;
            z1Var.f11848b.post(new androidx.appcompat.widget.g1(z1Var, 2));
        }
    }

    public z1(Context context, Handler handler, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f11847a = applicationContext;
        this.f11848b = handler;
        this.f11849c = aVar;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        m5.a.f(audioManager);
        this.f11850d = audioManager;
        this.f11852f = 3;
        this.f11853g = c(audioManager, 3);
        this.f11854h = b(audioManager, this.f11852f);
        b bVar = new b();
        try {
            applicationContext.registerReceiver(bVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f11851e = bVar;
        } catch (RuntimeException e10) {
            m5.p.h("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    public static boolean b(AudioManager audioManager, int i10) {
        if (m5.g0.f10384a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        return c(audioManager, i10) == 0;
    }

    public static int c(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            m5.p.h("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    public final int a() {
        if (m5.g0.f10384a >= 28) {
            return this.f11850d.getStreamMinVolume(this.f11852f);
        }
        return 0;
    }

    public final void d(int i10) {
        if (this.f11852f == i10) {
            return;
        }
        this.f11852f = i10;
        e();
        k0.b bVar = (k0.b) this.f11849c;
        z1 z1Var = k0.this.B;
        o oVar = new o(0, z1Var.a(), z1Var.f11850d.getStreamMaxVolume(z1Var.f11852f));
        if (oVar.equals(k0.this.f11473g0)) {
            return;
        }
        k0 k0Var = k0.this;
        k0Var.f11473g0 = oVar;
        k0Var.f11482l.d(29, new z(oVar, 2));
    }

    public final void e() {
        final int iC = c(this.f11850d, this.f11852f);
        final boolean zB = b(this.f11850d, this.f11852f);
        if (this.f11853g == iC && this.f11854h == zB) {
            return;
        }
        this.f11853g = iC;
        this.f11854h = zB;
        k0.this.f11482l.d(30, new m5.o.a() { // from class: n3.l0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((o1.c) obj).n0(iC, zB);
            }
        });
    }
}
