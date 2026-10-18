package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
import k1.l;
import l1.k;

/* JADX INFO: loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3078a = l.e("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        l.c().a(f3078a, String.format("Received intent %s", intent), new Throwable[0]);
        try {
            k kVarA = k.a(context);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            Objects.requireNonNull(kVarA);
            synchronized (k.f9852l) {
                try {
                    kVarA.f9861i = pendingResultGoAsync;
                    if (kVarA.f9860h) {
                        pendingResultGoAsync.finish();
                        kVarA.f9861i = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException e10) {
            l.c().b(f3078a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e10);
        }
    }
}
