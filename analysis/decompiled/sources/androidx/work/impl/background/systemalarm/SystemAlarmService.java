package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.lifecycle.t;
import java.util.HashMap;
import java.util.WeakHashMap;
import k1.l;

/* JADX INFO: loaded from: classes.dex */
public class SystemAlarmService extends t implements d.c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3079k = l.e("SystemAlarmService");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f3080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3081j;

    public final void b() {
        d dVar = new d(this);
        this.f3080i = dVar;
        if (dVar.f3111q != null) {
            l.c().b(d.f3101r, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            dVar.f3111q = this;
        }
    }

    public final void c() {
        this.f3081j = true;
        l.c().a(f3079k, "All commands completed in dispatcher", new Throwable[0]);
        String str = u1.l.f15645a;
        HashMap map = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = u1.l.f15646b;
        synchronized (weakHashMap) {
            map.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : map.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                l.c().f(u1.l.f15645a, String.format("WakeLock held for %s", map.get(wakeLock)), new Throwable[0]);
            }
        }
        stopSelf();
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
        this.f3081j = false;
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f3081j = true;
        this.f3080i.d();
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f3081j) {
            l.c().d(f3079k, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f3080i.d();
            b();
            this.f3081j = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f3080i.b(intent, i11);
        return 3;
    }
}
