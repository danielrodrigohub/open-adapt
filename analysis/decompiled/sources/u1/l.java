package u1;

import android.content.Context;
import android.os.PowerManager;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: WakeLocks.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f15645a = k1.l.e("WakeLocks");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap<PowerManager.WakeLock, String> f15646b = new WeakHashMap<>();

    public static PowerManager.WakeLock a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String strC = androidx.recyclerview.widget.d.c("WorkManager: ", str);
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, strC);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f15646b;
        synchronized (weakHashMap) {
            weakHashMap.put(wakeLockNewWakeLock, strC);
        }
        return wakeLockNewWakeLock;
    }
}
