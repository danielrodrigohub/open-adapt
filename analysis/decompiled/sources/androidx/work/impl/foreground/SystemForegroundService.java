package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.t;
import java.util.Objects;
import java.util.UUID;
import k1.l;
import l1.k;
import w1.b;

/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundService extends t implements androidx.work.impl.foreground.a.InterfaceC0047a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f3121m = l.e("SystemFgService");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f3122i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3123j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public androidx.work.impl.foreground.a f3124k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public NotificationManager f3125l;

    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f3126h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Notification f3127i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ int f3128j;

        public a(int i10, Notification notification, int i11) {
            this.f3126h = i10;
            this.f3127i = notification;
            this.f3128j = i11;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f3126h, this.f3127i, this.f3128j);
            } else {
                SystemForegroundService.this.startForeground(this.f3126h, this.f3127i);
            }
        }
    }

    public final void b() {
        this.f3122i = new Handler(Looper.getMainLooper());
        this.f3125l = (NotificationManager) getApplicationContext().getSystemService("notification");
        androidx.work.impl.foreground.a aVar = new androidx.work.impl.foreground.a(getApplicationContext());
        this.f3124k = aVar;
        if (aVar.f3140q != null) {
            l.c().b(androidx.work.impl.foreground.a.f3130r, "A callback already exists.", new Throwable[0]);
        } else {
            aVar.f3140q = this;
        }
    }

    public final void c(int i10, int i11, Notification notification) {
        this.f3122i.post(new a(i10, notification, i11));
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f3124k.g();
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f3123j) {
            l.c().d(f3121m, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f3124k.g();
            b();
            this.f3123j = false;
        }
        if (intent == null) {
            return 3;
        }
        androidx.work.impl.foreground.a aVar = this.f3124k;
        Objects.requireNonNull(aVar);
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            l.c().d(androidx.work.impl.foreground.a.f3130r, String.format("Started foreground service %s", intent), new Throwable[0]);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            ((b) aVar.f3133j).a(new s1.b(aVar, aVar.f3132i.f9855c, stringExtra));
            aVar.f(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            aVar.f(intent);
            return 3;
        }
        if ("ACTION_CANCEL_WORK".equals(action)) {
            l.c().d(androidx.work.impl.foreground.a.f3130r, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
            String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
            if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
                return 3;
            }
            k kVar = aVar.f3132i;
            UUID uuidFromString = UUID.fromString(stringExtra2);
            Objects.requireNonNull(kVar);
            ((b) kVar.f9856d).a(new u1.a(kVar, uuidFromString));
            return 3;
        }
        if (!"ACTION_STOP_FOREGROUND".equals(action)) {
            return 3;
        }
        l.c().d(androidx.work.impl.foreground.a.f3130r, "Stopping foreground service", new Throwable[0]);
        androidx.work.impl.foreground.a.InterfaceC0047a interfaceC0047a = aVar.f3140q;
        if (interfaceC0047a == null) {
            return 3;
        }
        SystemForegroundService systemForegroundService = (SystemForegroundService) interfaceC0047a;
        systemForegroundService.f3123j = true;
        l.c().a(f3121m, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            systemForegroundService.stopForeground(true);
        }
        systemForegroundService.stopSelf();
        return 3;
    }
}
