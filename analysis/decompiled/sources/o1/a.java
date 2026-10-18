package o1;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.background.systemjob.SystemJobService;
import k1.c;
import k1.d;
import k1.l;
import k1.m;
import t1.o;

/* JADX INFO: compiled from: SystemJobInfoConverter.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f12064b = l.e("SystemJobInfoConverter");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ComponentName f12065a;

    public a(Context context) {
        this.f12065a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.HashSet, java.util.Set<k1.d$a>] */
    public final JobInfo a(o oVar, int i10) {
        int i11;
        c cVar = oVar.f15359j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", oVar.f15350a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", oVar.c());
        JobInfo.Builder extras = new JobInfo.Builder(i10, this.f12065a).setRequiresCharging(cVar.f9575b).setRequiresDeviceIdle(cVar.f9576c).setExtras(persistableBundle);
        m mVar = cVar.f9574a;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 30 || mVar != m.TEMPORARILY_UNMETERED) {
            int iOrdinal = mVar.ordinal();
            if (iOrdinal == 0) {
                i11 = 0;
            } else if (iOrdinal == 1) {
                i11 = 1;
            } else if (iOrdinal != 2) {
                i11 = 3;
                if (iOrdinal != 3) {
                    i11 = 4;
                    if (iOrdinal != 4 || i12 < 26) {
                        l.c().a(f12064b, String.format("API version too low. Cannot convert network type value %s", mVar), new Throwable[0]);
                        i11 = 1;
                    }
                }
            } else {
                i11 = 2;
            }
            extras.setRequiredNetworkType(i11);
        } else {
            extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
        if (!cVar.f9576c) {
            extras.setBackoffCriteria(oVar.f15362m, oVar.f15361l == 2 ? 0 : 1);
        }
        long jMax = Math.max(oVar.a() - System.currentTimeMillis(), 0L);
        if (i12 <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!oVar.f15366q) {
            extras.setImportantWhileForeground(true);
        }
        if (cVar.a()) {
            for (d.a aVar : cVar.f9581h.f9585a) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(aVar.f9586a, aVar.f9587b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(cVar.f9579f);
            extras.setTriggerContentMaxDelay(cVar.f9580g);
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(cVar.f9577d);
            extras.setRequiresStorageNotLow(cVar.f9578e);
        }
        Object[] objArr = oVar.f15360k > 0;
        boolean z10 = jMax > 0;
        if (f0.a.a() && oVar.f15366q && objArr == false && !z10) {
            extras.setExpedited(true);
        }
        return extras.build();
    }
}
