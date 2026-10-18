package x;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: NotificationManagerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f17671d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static c f17674g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotificationManager f17676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f17670c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Set<String> f17672e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f17673f = new Object();

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    public static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17678b = 42069;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f17679c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Notification f17680d;

        public a(String str, Notification notification) {
            this.f17677a = str;
            this.f17680d = notification;
        }

        @Override // x.s.d
        public final void a(b.a aVar) throws RemoteException {
            aVar.f(this.f17677a, this.f17678b, this.f17679c, this.f17680d);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("NotifyTask[");
            sb2.append("packageName:");
            sb2.append(this.f17677a);
            sb2.append(", id:");
            sb2.append(this.f17678b);
            sb2.append(", tag:");
            return a1.f.d(sb2, this.f17679c, "]");
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ComponentName f17681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final IBinder f17682b;

        public b(ComponentName componentName, IBinder iBinder) {
            this.f17681a = componentName;
            this.f17682b = iBinder;
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    public static class c implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Context f17683h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Handler f17684i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Map<ComponentName, a> f17685j = new HashMap();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Set<String> f17686k = new HashSet();

        /* JADX INFO: compiled from: NotificationManagerCompat.java */
        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ComponentName f17687a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public b.a f17689c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f17688b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public ArrayDeque<d> f17690d = new ArrayDeque<>();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f17691e = 0;

            public a(ComponentName componentName) {
                this.f17687a = componentName;
            }
        }

        public c(Context context) {
            this.f17683h = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            handlerThread.start();
            this.f17684i = new Handler(handlerThread.getLooper(), this);
        }

        public final void a(a aVar) {
            boolean z10;
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sbC = a0.b.c("Processing component ");
                sbC.append(aVar.f17687a);
                sbC.append(", ");
                sbC.append(aVar.f17690d.size());
                sbC.append(" queued tasks");
                Log.d("NotifManCompat", sbC.toString());
            }
            if (aVar.f17690d.isEmpty()) {
                return;
            }
            if (aVar.f17688b) {
                z10 = true;
            } else {
                boolean zBindService = this.f17683h.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f17687a), this, 33);
                aVar.f17688b = zBindService;
                if (zBindService) {
                    aVar.f17691e = 0;
                } else {
                    StringBuilder sbC2 = a0.b.c("Unable to bind to listener ");
                    sbC2.append(aVar.f17687a);
                    Log.w("NotifManCompat", sbC2.toString());
                    this.f17683h.unbindService(this);
                }
                z10 = aVar.f17688b;
            }
            if (!z10 || aVar.f17689c == null) {
                b(aVar);
                return;
            }
            while (true) {
                d dVarPeek = aVar.f17690d.peek();
                if (dVarPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + dVarPeek);
                    }
                    dVarPeek.a(aVar.f17689c);
                    aVar.f17690d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sbC3 = a0.b.c("Remote service has died: ");
                        sbC3.append(aVar.f17687a);
                        Log.d("NotifManCompat", sbC3.toString());
                    }
                } catch (RemoteException e10) {
                    StringBuilder sbC4 = a0.b.c("RemoteException communicating with ");
                    sbC4.append(aVar.f17687a);
                    Log.w("NotifManCompat", sbC4.toString(), e10);
                }
            }
            if (aVar.f17690d.isEmpty()) {
                return;
            }
            b(aVar);
        }

        public final void b(a aVar) {
            if (this.f17684i.hasMessages(3, aVar.f17687a)) {
                return;
            }
            int i10 = aVar.f17691e + 1;
            aVar.f17691e = i10;
            if (i10 > 6) {
                StringBuilder sbC = a0.b.c("Giving up on delivering ");
                sbC.append(aVar.f17690d.size());
                sbC.append(" tasks to ");
                sbC.append(aVar.f17687a);
                sbC.append(" after ");
                sbC.append(aVar.f17691e);
                sbC.append(" retries");
                Log.w("NotifManCompat", sbC.toString());
                aVar.f17690d.clear();
                return;
            }
            int i11 = (1 << (i10 - 1)) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i11 + " ms");
            }
            this.f17684i.sendMessageDelayed(this.f17684i.obtainMessage(3, aVar.f17687a), i11);
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r0v18, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashSet, java.util.Set, java.util.Set<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r7v11, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        /* JADX WARN: Type inference failed for: r7v15, types: [java.util.HashMap, java.util.Map<android.content.ComponentName, x.s$c$a>] */
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            ?? r10;
            int i10 = message.what;
            b.a c0049a = null;
            if (i10 != 0) {
                if (i10 == 1) {
                    b bVar = (b) message.obj;
                    ComponentName componentName = bVar.f17681a;
                    IBinder iBinder = bVar.f17682b;
                    a aVar = (a) this.f17685j.get(componentName);
                    if (aVar != null) {
                        int i11 = b.a.AbstractBinderC0048a.f3155a;
                        if (iBinder != null) {
                            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
                            c0049a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b.a)) ? new b.a.AbstractBinderC0048a.C0049a(iBinder) : (b.a) iInterfaceQueryLocalInterface;
                        }
                        aVar.f17689c = c0049a;
                        aVar.f17691e = 0;
                        a(aVar);
                    }
                    return true;
                }
                if (i10 != 2) {
                    if (i10 != 3) {
                        return false;
                    }
                    a aVar2 = (a) this.f17685j.get((ComponentName) message.obj);
                    if (aVar2 != null) {
                        a(aVar2);
                    }
                    return true;
                }
                a aVar3 = (a) this.f17685j.get((ComponentName) message.obj);
                if (aVar3 != null) {
                    if (aVar3.f17688b) {
                        this.f17683h.unbindService(this);
                        aVar3.f17688b = false;
                    }
                    aVar3.f17689c = null;
                }
                return true;
            }
            d dVar = (d) message.obj;
            String string = Settings.Secure.getString(this.f17683h.getContentResolver(), "enabled_notification_listeners");
            synchronized (s.f17670c) {
                if (string != null) {
                    if (!string.equals(s.f17671d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        s.f17672e = hashSet;
                        s.f17671d = string;
                    }
                    r10 = s.f17672e;
                } else {
                    r10 = s.f17672e;
                }
                throw th;
            }
            if (!r10.equals(this.f17686k)) {
                this.f17686k = r10;
                List<ResolveInfo> listQueryIntentServices = this.f17683h.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                HashSet<ComponentName> hashSet2 = new HashSet();
                for (ResolveInfo resolveInfo : listQueryIntentServices) {
                    if (r10.contains(resolveInfo.serviceInfo.packageName)) {
                        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                        ComponentName componentName2 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                        if (resolveInfo.serviceInfo.permission != null) {
                            Log.w("NotifManCompat", "Permission present on component " + componentName2 + ", not adding listener record.");
                        } else {
                            hashSet2.add(componentName2);
                        }
                    }
                }
                for (ComponentName componentName3 : hashSet2) {
                    if (!this.f17685j.containsKey(componentName3)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName3);
                        }
                        this.f17685j.put(componentName3, new a(componentName3));
                    }
                }
                Iterator it = this.f17685j.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (!hashSet2.contains(entry.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            StringBuilder sbC = a0.b.c("Removing listener record for ");
                            sbC.append(entry.getKey());
                            Log.d("NotifManCompat", sbC.toString());
                        }
                        a aVar4 = (a) entry.getValue();
                        if (aVar4.f17688b) {
                            this.f17683h.unbindService(this);
                            aVar4.f17688b = false;
                        }
                        aVar4.f17689c = null;
                        it.remove();
                    }
                }
            }
            for (a aVar5 : this.f17685j.values()) {
                aVar5.f17690d.add(dVar);
                a(aVar5);
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f17684i.obtainMessage(1, new b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f17684i.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    public interface d {
        void a(b.a aVar) throws RemoteException;
    }

    public s(Context context) {
        this.f17675a = context;
        this.f17676b = (NotificationManager) context.getSystemService("notification");
    }

    public final void a(d dVar) {
        synchronized (f17673f) {
            if (f17674g == null) {
                f17674g = new c(this.f17675a.getApplicationContext());
            }
            f17674g.f17684i.obtainMessage(0, dVar).sendToTarget();
        }
    }
}
