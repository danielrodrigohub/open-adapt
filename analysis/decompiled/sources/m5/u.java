package m5;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: NetworkTypeObserver.java */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static u f10464e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f10465a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList<WeakReference<b>> f10466b = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f10467c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10468d = 0;

    /* JADX INFO: compiled from: NetworkTypeObserver.java */
    public static final class a {

        /* JADX INFO: renamed from: m5.u$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NetworkTypeObserver.java */
        public static final class C0205a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final u f10469a;

            public C0205a(u uVar) {
                this.f10469a = uVar;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                u.a(this.f10469a, overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, u uVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                Objects.requireNonNull(telephonyManager);
                C0205a c0205a = new C0205a(uVar);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), c0205a);
                telephonyManager.unregisterTelephonyCallback(c0205a);
            } catch (RuntimeException unused) {
                u.a(uVar, 5);
            }
        }
    }

    /* JADX INFO: compiled from: NetworkTypeObserver.java */
    public interface b {
        void a(int i10);
    }

    /* JADX INFO: compiled from: NetworkTypeObserver.java */
    public final class c extends BroadcastReceiver {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0034  */
        /* JADX WARN: Code duplicated, block: B:22:0x003b  */
        /* JADX WARN: Code duplicated, block: B:23:0x003d  */
        /* JADX WARN: Code duplicated, block: B:25:0x0043  */
        /* JADX WARN: Code duplicated, block: B:26:0x0045  */
        /* JADX WARN: Code duplicated, block: B:27:0x0047  */
        /* JADX WARN: Code duplicated, block: B:28:0x0049  */
        /* JADX WARN: Code duplicated, block: B:29:0x004b  */
        /* JADX WARN: Code duplicated, block: B:30:0x004d  */
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            int i10;
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                i10 = 0;
            } else {
                try {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    i10 = 1;
                    if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                        int type = activeNetworkInfo.getType();
                        if (type == 0) {
                            switch (activeNetworkInfo.getSubtype()) {
                                case 1:
                                case 2:
                                    i10 = 3;
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 14:
                                case 15:
                                case 17:
                                    i10 = 4;
                                    break;
                                case 13:
                                    i10 = 5;
                                    break;
                                case 16:
                                case 19:
                                default:
                                    i10 = 6;
                                    break;
                                case 18:
                                    i10 = 2;
                                    break;
                                case 20:
                                    if (g0.f10384a >= 29) {
                                        i10 = 0;
                                    } else {
                                        i10 = 9;
                                    }
                                    break;
                            }
                        } else if (type == 1) {
                            i10 = 2;
                        } else if (type == 4 || type == 5) {
                            switch (activeNetworkInfo.getSubtype()) {
                                case 1:
                                case 2:
                                    i10 = 3;
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 14:
                                case 15:
                                case 17:
                                    i10 = 4;
                                    break;
                                case 13:
                                    i10 = 5;
                                    break;
                                case 16:
                                case 19:
                                default:
                                    i10 = 6;
                                    break;
                                case 18:
                                    i10 = 2;
                                    break;
                                case 20:
                                    if (g0.f10384a >= 29) {
                                        i10 = 0;
                                    } else {
                                        i10 = 9;
                                    }
                                    break;
                            }
                        } else if (type != 6) {
                            i10 = type != 9 ? 8 : 7;
                        } else {
                            i10 = 5;
                        }
                    }
                } catch (SecurityException unused) {
                }
            }
            if (g0.f10384a < 31 || i10 != 5) {
                u.a(u.this, i10);
            } else {
                a.a(context, u.this);
            }
        }
    }

    public u(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new c(), intentFilter);
    }

    public static void a(u uVar, int i10) {
        synchronized (uVar.f10467c) {
            if (uVar.f10468d == i10) {
                return;
            }
            uVar.f10468d = i10;
            for (WeakReference<b> weakReference : uVar.f10466b) {
                b bVar = weakReference.get();
                if (bVar != null) {
                    bVar.a(i10);
                } else {
                    uVar.f10466b.remove(weakReference);
                }
            }
        }
    }

    public static synchronized u b(Context context) {
        if (f10464e == null) {
            f10464e = new u(context);
        }
        return f10464e;
    }

    public final int c() {
        int i10;
        synchronized (this.f10467c) {
            i10 = this.f10468d;
        }
        return i10;
    }
}
