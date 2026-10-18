package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k1.f;
import k1.l;
import l1.b;
import l1.k;
import p1.c;
import p1.d;
import t1.o;

/* JADX INFO: compiled from: SystemForegroundDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c, b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f3130r = l.e("SystemFgDispatcher");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f3131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public k f3132i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final w1.a f3133j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f3134k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f3135l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Map<String, f> f3136m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, o> f3137n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Set<o> f3138o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final d f3139p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public InterfaceC0047a f3140q;

    /* JADX INFO: renamed from: androidx.work.impl.foreground.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemForegroundDispatcher.java */
    public interface InterfaceC0047a {
    }

    public a(Context context) {
        this.f3131h = context;
        k kVarA = k.a(context);
        this.f3132i = kVarA;
        w1.a aVar = kVarA.f9856d;
        this.f3133j = aVar;
        this.f3135l = null;
        this.f3136m = new LinkedHashMap();
        this.f3138o = new HashSet();
        this.f3137n = new HashMap();
        this.f3139p = new d(this.f3131h, aVar, this);
        this.f3132i.f9858f.b(this);
    }

    public static Intent b(Context context, String str, f fVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f9590a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f9591b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f9592c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context, String str, f fVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f9590a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f9591b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f9592c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<java.lang.String, t1.o>] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, k1.f>] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.HashSet, java.util.Set<t1.o>] */
    @Override // l1.b
    public final void a(String str, boolean z10) {
        Map.Entry entry;
        synchronized (this.f3134k) {
            o oVar = (o) this.f3137n.remove(str);
            if (oVar != null ? this.f3138o.remove(oVar) : false) {
                this.f3139p.b(this.f3138o);
            }
        }
        f fVarRemove = this.f3136m.remove(str);
        if (str.equals(this.f3135l) && this.f3136m.size() > 0) {
            Iterator it = this.f3136m.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f3135l = (String) entry.getKey();
            if (this.f3140q != null) {
                f fVar = (f) entry.getValue();
                ((SystemForegroundService) this.f3140q).c(fVar.f9590a, fVar.f9591b, fVar.f9592c);
                SystemForegroundService systemForegroundService = (SystemForegroundService) this.f3140q;
                systemForegroundService.f3122i.post(new s1.d(systemForegroundService, fVar.f9590a));
            }
        }
        InterfaceC0047a interfaceC0047a = this.f3140q;
        if (fVarRemove == null || interfaceC0047a == null) {
            return;
        }
        l.c().a(f3130r, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(fVarRemove.f9590a), str, Integer.valueOf(fVarRemove.f9591b)), new Throwable[0]);
        SystemForegroundService systemForegroundService2 = (SystemForegroundService) interfaceC0047a;
        systemForegroundService2.f3122i.post(new s1.d(systemForegroundService2, fVarRemove.f9590a));
    }

    @Override // p1.c
    public final void c(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        for (String str : list) {
            l.c().a(f3130r, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
            k kVar = this.f3132i;
            ((w1.b) kVar.f9856d).a(new u1.k(kVar, str, true));
        }
    }

    @Override // p1.c
    public final void e(List<String> list) {
    }

    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, k1.f>] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, k1.f>] */
    public final void f(Intent intent) {
        int i10 = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        l.c().a(f3130r, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f3140q == null) {
            return;
        }
        this.f3136m.put(stringExtra, new f(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f3135l)) {
            this.f3135l = stringExtra;
            ((SystemForegroundService) this.f3140q).c(intExtra, intExtra2, notification);
            return;
        }
        SystemForegroundService systemForegroundService = (SystemForegroundService) this.f3140q;
        systemForegroundService.f3122i.post(new s1.c(systemForegroundService, intExtra, notification));
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = this.f3136m.entrySet().iterator();
        while (it.hasNext()) {
            i10 |= ((f) ((Map.Entry) it.next()).getValue()).f9591b;
        }
        f fVar = (f) this.f3136m.get(this.f3135l);
        if (fVar != null) {
            ((SystemForegroundService) this.f3140q).c(fVar.f9590a, i10, fVar.f9592c);
        }
    }

    public final void g() {
        this.f3140q = null;
        synchronized (this.f3134k) {
            this.f3139p.c();
        }
        this.f3132i.f9858f.e(this);
    }
}
