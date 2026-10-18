package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.c f2877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f2878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.room.b f2879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f2880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f2881g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f2882h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f2883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f2884j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RunnableC0038d f2885k;

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    public class a extends androidx.room.a.AbstractBinderC0033a {

        /* JADX INFO: renamed from: androidx.room.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
        public class RunnableC0037a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ String[] f2887h;

            public RunnableC0037a(String[] strArr) {
                this.f2887h = strArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.c cVar = d.this.f2877c;
                String[] strArr = this.f2887h;
                synchronized (cVar.f2862i) {
                    Iterator<Map.Entry<androidx.room.c.AbstractC0036c, androidx.room.c.d>> it = cVar.f2862i.iterator();
                    while (true) {
                        m.b.e eVar = (m.b.e) it;
                        if (eVar.hasNext()) {
                            Map.Entry entry = (Map.Entry) eVar.next();
                            androidx.room.c.AbstractC0036c abstractC0036c = (androidx.room.c.AbstractC0036c) entry.getKey();
                            Objects.requireNonNull(abstractC0036c);
                            if (!(abstractC0036c instanceof e)) {
                                ((androidx.room.c.d) entry.getValue()).a(strArr);
                            }
                        }
                    }
                }
            }
        }

        public a() {
        }

        @Override // androidx.room.a
        public final void b(String[] strArr) {
            d.this.f2880f.execute(new RunnableC0037a(strArr));
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    public class b implements ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            androidx.room.b c0035a;
            d dVar = d.this;
            int i10 = androidx.room.b.a.f2851a;
            if (iBinder == null) {
                c0035a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
                c0035a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.room.b)) ? new androidx.room.b.a.C0035a(iBinder) : (androidx.room.b) iInterfaceQueryLocalInterface;
            }
            dVar.f2879e = c0035a;
            d dVar2 = d.this;
            dVar2.f2880f.execute(dVar2.f2884j);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            d dVar = d.this;
            dVar.f2880f.execute(dVar.f2885k);
            d.this.f2879e = null;
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                d dVar = d.this;
                androidx.room.b bVar = dVar.f2879e;
                if (bVar != null) {
                    dVar.f2876b = bVar.c(dVar.f2881g, dVar.f2875a);
                    d dVar2 = d.this;
                    dVar2.f2877c.a(dVar2.f2878d);
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e10);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.room.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    public class RunnableC0038d implements Runnable {
        public RunnableC0038d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            androidx.room.c.d dVarN;
            boolean z10;
            d dVar = d.this;
            androidx.room.c cVar = dVar.f2877c;
            e eVar = dVar.f2878d;
            synchronized (cVar.f2862i) {
                dVarN = cVar.f2862i.n(eVar);
            }
            if (dVarN != null) {
                androidx.room.c.b bVar = cVar.f2861h;
                int[] iArr = dVarN.f2871a;
                synchronized (bVar) {
                    z10 = false;
                    for (int i10 : iArr) {
                        long[] jArr = bVar.f2866a;
                        long j10 = jArr[i10];
                        jArr[i10] = j10 - 1;
                        if (j10 == 1) {
                            bVar.f2869d = true;
                            z10 = true;
                        }
                    }
                }
                if (z10) {
                    cVar.e();
                }
            }
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.java */
    public class e extends androidx.room.c.AbstractC0036c {
        public e(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.c.AbstractC0036c
        public final void a(Set<String> set) {
            if (d.this.f2882h.get()) {
                return;
            }
            try {
                d dVar = d.this;
                androidx.room.b bVar = dVar.f2879e;
                if (bVar != null) {
                    bVar.e(dVar.f2876b, (String[]) set.toArray(new String[0]));
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot broadcast invalidation", e10);
            }
        }
    }

    public d(Context context, String str, Intent intent, androidx.room.c cVar, Executor executor) {
        b bVar = new b();
        this.f2883i = bVar;
        this.f2884j = new c();
        this.f2885k = new RunnableC0038d();
        Context applicationContext = context.getApplicationContext();
        this.f2875a = str;
        this.f2877c = cVar;
        this.f2880f = executor;
        this.f2878d = new e((String[]) cVar.f2854a.keySet().toArray(new String[0]));
        applicationContext.bindService(intent, bVar, 1);
    }
}
