package androidx.work.impl.background.systemalarm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import k1.l;
import k1.m;
import l1.k;
import t1.g;
import t1.i;
import t1.o;
import t1.q;

/* JADX INFO: compiled from: CommandHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements l1.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3082k = l.e("CommandHandler");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f3083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map<String, l1.b> f3084i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f3085j = new Object();

    public a(Context context) {
        this.f3083h = context;
    }

    public static Intent b(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    public static Intent c(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.String, l1.b>] */
    @Override // l1.b
    public final void a(String str, boolean z10) {
        synchronized (this.f3085j) {
            l1.b bVar = (l1.b) this.f3084i.remove(str);
            if (bVar != null) {
                bVar.a(str, z10);
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void e(Intent intent, int i10, d dVar) {
        boolean z10;
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            l.c().a(f3082k, String.format("Handling constraints changed %s", intent), new Throwable[0]);
            Context context = this.f3083h;
            b bVar = new b(context, i10, dVar);
            List<o> listE = ((q) dVar.f3106l.f9855c.w()).e();
            String str = ConstraintProxy.f3073a;
            ArrayList<o> arrayList = (ArrayList) listE;
            Iterator it = arrayList.iterator();
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            boolean z14 = false;
            while (it.hasNext()) {
                k1.c cVar = ((o) it.next()).f15359j;
                z11 |= cVar.f9577d;
                z12 |= cVar.f9575b;
                z13 |= cVar.f9578e;
                z14 |= cVar.f9574a != m.NOT_REQUIRED;
                if (z11 && z12 && z13 && z14) {
                    break;
                }
            }
            String str2 = ConstraintProxyUpdateReceiver.f3074a;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z11).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z12).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z13).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z14);
            context.sendBroadcast(intent2);
            bVar.f3090d.b(listE);
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (o oVar : arrayList) {
                String str3 = oVar.f15350a;
                if (jCurrentTimeMillis >= oVar.a() && (!oVar.b() || bVar.f3090d.a(str3))) {
                    arrayList2.add(oVar);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str4 = ((o) it2.next()).f15350a;
                Intent intentC = c(bVar.f3087a, str4);
                l.c().a(b.f3086e, String.format("Creating a delay_met command for workSpec with id (%s)", str4), new Throwable[0]);
                d dVar2 = bVar.f3089c;
                dVar2.e(new d.b(dVar2, intentC, bVar.f3088b));
            }
            bVar.f3090d.c();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            l.c().a(f3082k, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
            dVar.f3106l.d();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras == null || extras.isEmpty()) {
            z10 = false;
            break;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= 1) {
                z10 = true;
                break;
            } else {
                if (extras.get(strArr[i11]) == null) {
                    z10 = false;
                    break;
                }
                i11++;
            }
        }
        if (!z10) {
            l.c().b(f3082k, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
            l lVarC = l.c();
            String str5 = f3082k;
            lVarC.a(str5, String.format("Handling schedule work for %s", string), new Throwable[0]);
            WorkDatabase workDatabase = dVar.f3106l.f9855c;
            workDatabase.c();
            try {
                o oVarH = ((q) workDatabase.w()).h(string);
                if (oVarH == null) {
                    l.c().f(str5, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                } else if (oVarH.f15351b.b()) {
                    l.c().f(str5, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                } else {
                    long jA = oVarH.a();
                    if (oVarH.b()) {
                        l.c().a(str5, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                        n1.a.b(this.f3083h, dVar.f3106l, string, jA);
                        dVar.e(new d.b(dVar, b(this.f3083h), i10));
                    } else {
                        l.c().a(str5, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                        n1.a.b(this.f3083h, dVar.f3106l, string, jA);
                    }
                    workDatabase.p();
                }
                return;
            } finally {
                workDatabase.l();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            Bundle extras2 = intent.getExtras();
            synchronized (this.f3085j) {
                String string2 = extras2.getString("KEY_WORKSPEC_ID");
                l lVarC2 = l.c();
                String str6 = f3082k;
                lVarC2.a(str6, String.format("Handing delay met for %s", string2), new Throwable[0]);
                if (this.f3084i.containsKey(string2)) {
                    l.c().a(str6, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2), new Throwable[0]);
                } else {
                    c cVar2 = new c(this.f3083h, i10, string2, dVar);
                    this.f3084i.put(string2, cVar2);
                    cVar2.f();
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                l.c().f(f3082k, String.format("Ignoring intent %s", intent), new Throwable[0]);
                return;
            }
            Bundle extras3 = intent.getExtras();
            String string3 = extras3.getString("KEY_WORKSPEC_ID");
            boolean z15 = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
            l.c().a(f3082k, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
            a(string3, z15);
            return;
        }
        String string4 = intent.getExtras().getString("KEY_WORKSPEC_ID");
        l.c().a(f3082k, String.format("Handing stopWork work for %s", string4), new Throwable[0]);
        dVar.f3106l.e(string4);
        Context context2 = this.f3083h;
        k kVar = dVar.f3106l;
        String str7 = n1.a.f11171a;
        i iVar = (i) kVar.f9855c.t();
        g gVarA = iVar.a(string4);
        if (gVarA != null) {
            n1.a.a(context2, string4, gVarA.f15339b);
            l.c().a(n1.a.f11171a, String.format("Removing SystemIdInfo for workSpecId (%s)", string4), new Throwable[0]);
            iVar.c(string4);
        }
        dVar.a(string4, false);
    }
}
