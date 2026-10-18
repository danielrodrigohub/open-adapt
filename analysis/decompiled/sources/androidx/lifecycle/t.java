package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: compiled from: LifecycleService.java */
/* JADX INFO: loaded from: classes.dex */
public class t extends Service implements q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i0 f2240h = new i0(this);

    @Override // androidx.lifecycle.q
    public final i a() {
        return this.f2240h.f2201a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f2240h.a(i.b.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2240h.a(i.b.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        i0 i0Var = this.f2240h;
        i0Var.a(i.b.ON_STOP);
        i0Var.a(i.b.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i10) {
        this.f2240h.a(i.b.ON_START);
        super.onStart(intent, i10);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        return super.onStartCommand(intent, i10, i11);
    }
}
