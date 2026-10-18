package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import java.util.Collections;
import java.util.List;
import k1.l;
import t1.o;
import u1.q;

/* JADX INFO: compiled from: DelayMetCommandHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements p1.c, l1.b, q.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f3091q = l.e("DelayMetCommandHandler");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f3092h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3093i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f3094j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f3095k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p1.d f3096l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PowerManager.WakeLock f3099o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3100p = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3098n = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Object f3097m = new Object();

    public c(Context context, int i10, String str, d dVar) {
        this.f3092h = context;
        this.f3093i = i10;
        this.f3095k = dVar;
        this.f3094j = str;
        this.f3096l = new p1.d(context, dVar.f3103i, this);
    }

    @Override // l1.b
    public final void a(String str, boolean z10) {
        l.c().a(f3091q, String.format("onExecuted %s, %s", str, Boolean.valueOf(z10)), new Throwable[0]);
        d();
        if (z10) {
            Intent intentD = a.d(this.f3092h, this.f3094j);
            d dVar = this.f3095k;
            dVar.e(new d.b(dVar, intentD, this.f3093i));
        }
        if (this.f3100p) {
            Intent intentB = a.b(this.f3092h);
            d dVar2 = this.f3095k;
            dVar2.e(new d.b(dVar2, intentB, this.f3093i));
        }
    }

    @Override // u1.q.b
    public final void b(String str) {
        l.c().a(f3091q, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        g();
    }

    @Override // p1.c
    public final void c(List<String> list) {
        g();
    }

    public final void d() {
        synchronized (this.f3097m) {
            this.f3096l.c();
            this.f3095k.f3104j.b(this.f3094j);
            PowerManager.WakeLock wakeLock = this.f3099o;
            if (wakeLock != null && wakeLock.isHeld()) {
                l.c().a(f3091q, String.format("Releasing wakelock %s for WorkSpec %s", this.f3099o, this.f3094j), new Throwable[0]);
                this.f3099o.release();
            }
        }
    }

    @Override // p1.c
    public final void e(List<String> list) {
        if (list.contains(this.f3094j)) {
            synchronized (this.f3097m) {
                if (this.f3098n == 0) {
                    this.f3098n = 1;
                    l.c().a(f3091q, String.format("onAllConstraintsMet for %s", this.f3094j), new Throwable[0]);
                    if (this.f3095k.f3105k.g(this.f3094j, null)) {
                        this.f3095k.f3104j.a(this.f3094j, this);
                    } else {
                        d();
                    }
                } else {
                    l.c().a(f3091q, String.format("Already started work for %s", this.f3094j), new Throwable[0]);
                }
            }
        }
    }

    public final void f() {
        this.f3099o = u1.l.a(this.f3092h, String.format("%s (%s)", this.f3094j, Integer.valueOf(this.f3093i)));
        l lVarC = l.c();
        String str = f3091q;
        lVarC.a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f3099o, this.f3094j), new Throwable[0]);
        this.f3099o.acquire();
        o oVarH = ((t1.q) this.f3095k.f3106l.f9855c.w()).h(this.f3094j);
        if (oVarH == null) {
            g();
            return;
        }
        boolean zB = oVarH.b();
        this.f3100p = zB;
        if (zB) {
            this.f3096l.b(Collections.singletonList(oVarH));
        } else {
            l.c().a(str, String.format("No constraints for %s", this.f3094j), new Throwable[0]);
            e(Collections.singletonList(this.f3094j));
        }
    }

    public final void g() {
        synchronized (this.f3097m) {
            if (this.f3098n < 2) {
                this.f3098n = 2;
                l lVarC = l.c();
                String str = f3091q;
                lVarC.a(str, String.format("Stopping work for WorkSpec %s", this.f3094j), new Throwable[0]);
                Context context = this.f3092h;
                String str2 = this.f3094j;
                Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str2);
                d dVar = this.f3095k;
                dVar.e(new d.b(dVar, intent, this.f3093i));
                if (this.f3095k.f3105k.d(this.f3094j)) {
                    l.c().a(str, String.format("WorkSpec %s needs to be rescheduled", this.f3094j), new Throwable[0]);
                    Intent intentD = a.d(this.f3092h, this.f3094j);
                    d dVar2 = this.f3095k;
                    dVar2.e(new d.b(dVar2, intentD, this.f3093i));
                } else {
                    l.c().a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f3094j), new Throwable[0]);
                }
            } else {
                l.c().a(f3091q, String.format("Already stopped work for %s", this.f3094j), new Throwable[0]);
            }
        }
    }
}
